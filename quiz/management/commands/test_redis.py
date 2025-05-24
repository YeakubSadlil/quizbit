from django.core.management import BaseCommand
from django.core.cache import cache
class Command(BaseCommand):
    def handle(self, *args, **options):
        try:
            cache.set('test_key', 'test_value', 30)
            val = cache.get('test_key')

            if val == 'test_value':
                self.stdout.write(self.style.SUCCESS("Successfully connected to redis"))
            else:
                self.stdout.write(self.style.ERROR("Redis connection error: value not matched"))
        except Exception as e:
            self.stdout.write(self.style.ERROR(f"Redis connection error {str(e)}"))