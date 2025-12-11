[![Python 3.8+](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/downloads/release/python-380/)
[![Django 4.2.16](https://img.shields.io/badge/Django-4.2.16-darkgreen.svg)](https://www.djangoproject.com/)
[![DRF 3.15.2](https://img.shields.io/badge/DRF-3.15.2-red.svg)](https://www.django-rest-framework.org/)
[![Docker](https://img.shields.io/badge/Docker-blue?logo=docker&logoColor=white)](https://www.docker.com/)
[![Redis](https://img.shields.io/badge/Redis-red?logo=redis&logoColor=white)](https://redis.io/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-blue?logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Nginx](https://img.shields.io/badge/nginx-green?logo=nginx&logoColor=white)](https://nginx.org/)
[![CI/CD](https://img.shields.io/badge/CI/CD-GitHub%20Actions-blue?logo=github-actions&logoColor=white)](https://github.com/features/actions)
[![CI/CD](https://img.shields.io/badge/Unittest-Pytest-brightgreen?logo=pytest&logoColor=yellow)](https://docs.pytest.org/en/stable/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Quizbit MCQ API

> A scalable and secure Multiple Choice Question (MCQ) simulation api built using **Django REST**.<br>
> Users can register via otp, login, take timed quizzes and view their submission history.<br>
>
> The entire system is containerized via **Docker**, **Redis** based caching, **Postgresql** as database,<br>
> monitored via **Prometheus + Grafana,** served through **Nginx** and **CI** with Github Action.

## Table of Contents

- [Features](#features)
- [Docker Installation](#docker-installation-recommended)
- [Manual Installation](#manual-installation)
- [Usage](#usage)
  - [running the project](#running-the-project)
- [API Endpoints](#api-endpoints)
- [Monitoring](#monitoring)
- [Database Models](#database-models)
- [Entity Relationship Diagram](#entity-relationship-diagram)
- [Directory Structure](#directory-structure)
- [CI/CD Pipeline](#cicd-pipeline)
- [Logging](#logging)
- [Feedback](#support)

[//]: # " [Populate Database](#populate-database)"
[//]: # " [Data Flow](#data-flow)"

---

#### ⚠️ NB: View the project plans and tracking at a glance in [Project Tab](https://github.com/users/YeakubSadlil/projects/3) and progress in [MileStones](https://github.com/YeakubSadlil/quizbit/milestones)

---

## Features

**User Authentication**

- User Registration with password confirmation
- OTP based email verification
- User Login with email and JWT authentication

**Question Retrieval**

- Retrieve a question from the database filtered by difficulty
- Retrieve a list of paginated questions info with related multiple choice options

**Answer Submission**

- Submit answers in practice mode
- Validate the answer and check the result

**Quiz Mode**

- Start a timed quiz from the quiz list
- Real time quiz tracking with expiration, completed status
- Submit all selected solutions at once

**User Submission History**

- Retrieve a list of user submission history, attempt number, accuracy (score) and time taken

**Performance Monitoring**

- Prometheus metrics collections
- Real time dashboards in Grafana for
  - Djnago performance
  - Redis usage

**Containerization**

- Dockerized the full project for easy deployment
- **Horizontal Scaling** capability through multiple containers

**Continuous Integration (CI)**

- Automated testing with GitHub Actions
- Postgresql and Redis service containers for testing
- Automated unit test execution

**Logging**

- Structured JSON logging with Python Logger
- Separate log levels and error monitoring

**Unit Test**

- Implemented unit test using Pytest to test all corner cases

[//]: # "## Prerequisites"
[//]: # "- Python 3.8"
[//]: # "- Django REST framework"
[//]: # "- Django Simple JWT"
[//]: # "- PostgreSQL (Database)"

## Docker Installation (Recommended)

1. **Clone the repository**

```bash
git clone https://github.com/YeakubSadlil/quizbit.git
cd quizbit
```

2. **Set Up Environment variables:** Create .env file based on the .env.example

```bash
cp .env.example .env
# modify the .env based on your database credentials and email settings, DRF key
```

3. **Build and Run the Docker Compose:**

```bash
docker compose up --build
```

This command build the images and starts all services defined in docker-compose.yml

---

### After building image it will start the list of services below:

| Service              | Description                                               | Port Mapping<br/>..........................<br/>Host : Container | Access URL / Notes                                                      |
| -------------------- | --------------------------------------------------------- | ---------------------------------------------------------------- | ----------------------------------------------------------------------- |
| **Load Balancer**    | Reverse proxy with Nginx                                  | `8085:80`                                                        | **Main API:** http://localhost:8085                                     |
| **Django Web App 1** | Backend API instance 1                                    | `8081:8080`                                                      | internal use only                                                       |
| **Django Web App 2** | Backend API instance 2                                    | `8082:8080`                                                      | internal use only                                                       |
| **Postgresql DB**    | Relational database                                       | `5434:5432`                                                      | Host: `db` (for internal use)<br/> Credentials: as per .env file        |
| **Redis Cache**      | In-memory caching                                         | `6380:6379`                                                      | Host: `redis-service`, Port: `6379`                                     |
| **Redis Exporter**   | Exposes Redis metrics for monitoring                      | `9121:9121`                                                      | Metrics: http://localhost:9121/metrics                                  |
| **Prometheus**       | Collects metrics from services                            | `9090:9090`                                                      | UI: http://localhost:9090                                               |
| **Grafana**          | Monitors server performance.<br/>With prebuilt dashboards | `3000:3000`                                                      | Dashboard: http://localhost:3000 <br>Default credentials: `admin/admin` |

**Primary Access Point:** All API should be accessed through http://localhost:8085 (Load Balancer)

## Manual Installation

1. Clone the repository

```bash
git clone https://github.com/YeakubSadlil/quizbit.git
cd quizbit
```

2. Install the dependencies

```bash
pip install -r requirements.txt
```

3. Create .env file based on the .env.example

```bash
cp .env.example .env
# modify the .env based on your database credentials and email settings, DRF key
```

4. Apply the database migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

5. Create a superuser for admin access

```bash
python manage.py createsuperuser
```

## Usage

### Running the project

**With Docker:** If you follow the docker installation, the services are managed by docker compose.

- **Access the API:** The API will be available at [http://localhost:8085](http://localhost:8081)
- **Stop services:**

```bash
docker compose down
```

**Manual Setup:** If you follow the manual installation:

1. Ensure the Postgresql and Redis servers are running and correctly configured in your .env file.
2. Run the Django development server and access at http://localhost:8080

```bash
python manage.py runserver
```

## API Endpoints

For a comprehensive list and to interact with API import the **postman collections** from the `postman_collections/` directory.

| Endpoints                        | Method | Description                          | Authentication Required |
| -------------------------------- | ------ | ------------------------------------ | ----------------------- |
| `/api/`                          | GET    | Home view with endpoints list        | ❌                      |
| `/api/register/`                 | POST   | Register a new user                  | ❌                      |
| `/api/verify-otp/`               | POST   | Verify a user with OTP               | ❌                      |
| `/api/login/`                    | POST   | Login and get JWT token              | ❌                      |
| `/api/questionlist/`             | GET    | List all questions with filters      | ❌                      |
| `/api/question-detail/<int:pk>/` | GET    | Get a question with multiple choices | ❌                      |
| `/api/submit-answer/`            | POST   | Submit answer in practice mode       | ✅                      |
| `/api/start-quiz/<int:quiz_id>/` | GET    | Start a new timed quiz session       | ✅                      |
| `/api/submit-quiz/`              | POST   | Submit all answers for a quiz        | ✅                      |
| `/api/user_history/`             | GET    | Get user's practice history          | ✅                      |
| `/admin/`                        | GET    | Admin interface                      | Admin only              |

**JWT** Authentication is used for protected endpoints

## Monitoring

The application performance is monitored by:

- **Prometheus:** Collects metrics from the application (via django-prometheus package) and Redis (via redis-exporter).
  - Access `Prometheus` at [http://localhost:9090](http://localhost:9090)
- **Grafana:** Visualize the collected metrics in`Grafana`. Pre-configured dashboard are provisioned and will be automatically available during container startup.
  - Access `Grafana` at [http://localhost:3000](http://localhost:3000) (default credentials: admin/admin)

**N.B:** If you follow`Docker`installation then above services will be automatically available after building images.

---

## CI/CD Pipeline

- Runs on every push and pr to main branch
- Automatically provisioned Postgres and redis for testing
- Runs **Pytest** for unit testing

**Workflow File:** `.github/workflows/ci.yml`

## Logging

- All logs are formatted to JSON for easy parsing
- Console and file based logging
- Automatic log file rotation (max 10MB, 5 files)
- Detailed logging for api requests

**Log files:**

- App log : `logs/app.log`
- Nginx access logs: `logs/nginx/access.log`
- Nginx error logs: `logs/nginx/error.log`

## Database Models

1. **Users:** Custom user model with email as the unique identifier
2. **Question_Category:** Category of each question like Math,Physics,Chemistry etc.
3. **Questions:** MCQ question with description, difficulty level and category
4. **Choices:** Multiple options for each question is stored with the predefined correct answer
5. **Quiz:** Quiz configuration including quiz title, duration, categories
6. **QuizSession:** Tracks individual quiz status, score and timing
7. **QuizSessionQuestion:** Maps QuizSession and Questions
8. **UserSolutions:** Stores user submission history with answer and time taken

## Entity Relationship Diagram

```mermaid
erDiagram
    Users ||--o{UserSolutions: submits
    Users ||--o{QuizSession: takes
    Questions ||--o{ Choices:multiple_options
    Questions ||--o{ UserSolutions:answered_in
    Questions }o--|| Question_Category: belongs_to
    Choices ||--o{UserSolutions:selected_as
    Quiz }|--|{Question_Category:includes
    Quiz ||--o{QuizSession:includes
    QuizSession ||--o{QuizSessionQuestion:contains
    QuizSession ||--o{UserSolutions:records
    Questions ||--o{QuizSessionQuestion:used_in

    Users {
        int id PK "2"
        string email UK "example@gmail.com"
        string name "Abir"
        boolean is_active  "True"
        boolean is_admin "False"
        string otp
        datetime created_at "2024-11-20"
        datetime modified "2024-11-20"
    }

    Question_Category {
        int id PK "2"
        string name "Math"
        text description "Mathematics"
        datetime created_at "2024-11-20"
    }

    Questions {
        int id PK "1"
        int category_id FK "2"
        text text "What is 2*3=?"
        string difficulty "easy"
        boolean is_active "True"
        datetime created_at "2024-11-20"
    }

    Choices {
        int id PK "1,2,3,4"
        int question_id FK "1"
        text options_id "6,7,5,4"
        boolean is_correct "True"
        datetime created_at "2024-11-20"
     }

    UserSolutions {
        int id PK "1"
        int user_id FK "2"
        int question_id FK "1"
        int selected_answer_id FK "1"
        boolean is_correct "True"
        int quiz_session_id FK
        string attemp_type "Quiz / Practice"
        datetime answered_at "2024-11-20"}

    Quiz {
        int id PK
        string title
        text description
        int num_questions
        int quiz_duration_min
        boolean is_active
    }
    QuizSession {
        int id PK
        int user_id FK
        int quiz_id FK
        string status
        datetime start_time
        datetime end_time
        int score
        datetime created_at
    }

    QuizSessionQuestion {
        int id PK
        int quiz_session_id FK
        int questions_id FK
        int question_order
    }
```

[//]: # "## Populate Database"
[//]: #
[//]: # "1. Access admin panel at `http://localhost:8000/admin/`"
[//]: #
[//]: # "2. Create Question Categories"
[//]: #
[//]: # "3. Create Questions"
[//]: #
[//]: # "4. Create Choices for each question"
[//]: #
[//]: # "- Otherwise, import the sample database"

## Directory Structure

```
quizbit/
├── quiz/                                   # Django app core logic
│   ├── migrations/
│   ├── serializers.py
│   ├── views.py
│   ├── models.py
│   ├── tests/                              # Unit test (Pytest)
│   └── ...
│
├── nginx/                                  # Reverse proxy config
│   └── nginx.conf
│
├── logs/                                   # App log
│   ├── app.log
│   └── nginx/access.log
│
├── .github/                                # CI/CD configuration
│   └── workflows/ ci.yml
│
├── monitoring/                             # Prometheus & Grafana scripts
│   ├── prometheus.yml
│   └── Grafana_Dashboards/
│        └── dashboard.yml
│        └── Django-Dashboard.json
├── .env
├── sample_database                         # Pre-populated database dump
│   └── sample_db.sql
│
├── postman_collections                     # Postman collections for testing API
├── docker-compose.yml
├── Dockerfile
├── pytest.ini                              # Pytest configuration
├── manage.py
└── README.md
```

## Support

For any suggestions or issues, please [open an issue](https://github.com/YeakubSadlil/quizbit/issues) or send mail to [yakubsadlil@gmail.com](mailto:yakubsadlil@gmail.com)

## License

The project is licensed under the **MIT License** - see details in [LICENSE](LICENSE).
