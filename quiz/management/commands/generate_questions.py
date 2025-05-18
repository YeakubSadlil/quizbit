from django.core.management.base import BaseCommand
from quiz.models import Questions, Question_Category
from faker import Faker
import random

class Command(BaseCommand):
    help="Generate sample question to populate database"

    def add_arguments(self, parser):
        parser.add_argument("--total", type=int, default= 10, help = "number of questions to generate")

    def handle(self, *args, **options):
        fake = Faker()
        categories = list(Question_Category.objects.all())
        total = options['total']
        generated_questions = []
        for _ in range(total):
            question = Questions(
                category=random.choice(categories),
                text=fake.sentence(nb_words=random.randint(5,15) ) + '?',
                difficulty= random.choice(['easy','medium','hard']),
                is_active=True
            )

            generated_questions.append(question)

        Questions.objects.bulk_create(generated_questions)

        self.stdout.write(self.style.SUCCESS(f"Successfully created {total} questions"))