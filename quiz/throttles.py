from rest_framework.throttling import UserRateThrottle, AnonRateThrottle, BaseThrottle
import time
from django.core.cache import cache

class LoginThrottle(UserRateThrottle):
    scope = "login"

class RegisterThrottle(AnonRateThrottle):
    scope = "register"

class BaseTokenBucketThrottle(BaseThrottle):
    capacity =10                        # bucket size
    refill_rate = 10/60                 # token / second

    def get_bucket_key(self, request):
        raise NotImplementedError

    def allow_request(self, request, view):
        key = self.get_bucket_key(request)
        bucket = cache.get(key)
        now = time.time()

        if bucket is None:
            bucket = {
                "tokens": self.capacity,
                "last_refill": now,
            }

        elapsed = now - bucket["last_refill"]

        bucket["tokens"] = min(
            self.capacity,
            bucket["tokens"] + elapsed * self.refill_rate,
        )

        bucket["last_refill"] = now

        if bucket["tokens"] >= 1:
            bucket["tokens"] -= 1
            cache.set(key,bucket, timeout=3600)
            return True
        # how long untill 1 token available
        self._wait = (1-bucket["tokens"]) / self.refill_rate

        cache.set(key, bucket, timeout=3600)
        return False
    def wait(self):
        return self._wait

class AnonTokenBucketThrottle(BaseTokenBucketThrottle):
    def get_bucket_key(self, request):
        return f"token_bucket:anon:{self.get_ident(request)}"

class UserTokenBucketThrottle(BaseTokenBucketThrottle):
    def get_bucket_key(self, request):
        return f"token_bucket:user:{request.user.id}"