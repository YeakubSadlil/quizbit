# 📝 Quizbit MCQ API

> A scalable and secure Multiple Choice Question (MCQ) simulation api built using **Django REST**<br>
> Users can register via otp, login, take timed quizzes and view their submission history <br>
> The entire system is containerized via **Docker**, **Redis** based caching, **Postgresql** as database, monitored via **Prometheus + Grafana** 

## 📑 Table of Contents
- [⭐ Features](#features)
- [🐳 Docker Installation](#docker-installation)
- [💻 Manual Installation](#manual-installation)
- [📊 Database Models](#database-models)
- [🔄 Entity Relationship Diagram](#entity-relationship-diagram)

[//]: # (- [🌱 Populate Database]&#40;#populate-database&#41;)

[//]: # (- [➡️ Data Flow]&#40;#data-flow&#41;)

### ⚠️ NB:  
- 🗂️ **View the project plans and tracking at a glance in [Project Tab](https://github.com/users/YeakubSadlil/projects/3) and progress in [MileStones](https://github.com/YeakubSadlil/quizbit/milestones)**

## ⭐ Features

✅. **User Authentication**
- User Registration with password confirmation
- OTP based email verification
- User Login with email and JWT authentication

✅. **Question Retrieval**
- Retrieve a question from the database filtered by difficulty
- Retrieve a list of paginated questions info with related multiple choice options 

✅. **Answer Submission**
- Submit answers in practice mode
- Validate the answer and check the result

✅. **Quiz Mode**
- Start a timed quiz from the quiz list
- Real time quiz tracking with expiration, completed status
- Submit all selected solutions at once

✅. **User Submission History**
- Retrieve a list of user submission history, attempt number, accuracy (score) and time taken

📊. **Performance Monitoring**
- Prometheus metrics collections
- Real time dashboards in Grafana for
    - Djnago performance
    - Redis usage 

🐳. **Containerization**
   - Dockerized the full project for easy deployment

[//]: # (## Prerequisites)

[//]: # (- Python 3.8)

[//]: # (- Django REST framework)

[//]: # (- Django Simple JWT)

[//]: # (- PostgreSQL &#40;Database&#41;)



## Docker Installation
1. Clone the repository
```bash
git clone https://github.com/YeakubSadlil/quizbit.git
cd quizbit
```
2. Create .env file based on the .env.example
```bash
cp .env.example .env
# edit the .env based on your database and email settings
```
3. Create the docker container (Web + Database)
```bash
docker compose up
```
---
### After building image it will start the list of services below:

| Service            | Description                                                              | Port Mapping<br/>..........................<br/>Host : Container | Access URL / Notes                                                      |
|--------------------|--------------------------------------------------------------------------|------------------------------------------------------------------|-------------------------------------------------------------------------|
| **Django Web App** | Backend API built with Django REST Framework                             | `8081:8080`                                                      | http://localhost:8081                                                   |
| **Postgresql DB**  | Relational database with sample data included                            | `5434:5432`                                                      | Host: `db`<br/> Credentials: postgres/admin                             |
| **Redis Cache**    | In-memory caching                                                        | `6380:6379`                                                      | Host: `redis-service`, Port: `6379`                                     |
| **Redis Exporter** | Exposes Redis metrics for monitoring                                     | `9121:9121`                                                      | Metrics: http://localhost:9121/metrics                                  |
| **Prometheus**     | Collects metrics from services                                           | `9090:9090`                                                      | UI: http://localhost:9090                                               |
| **Grafana**        | Monitors server performance.<br/>Default provisioned to Django Dashboard | `3000:3000`                                                      | Dashboard: http://localhost:3000 <br>Default credentials: `admin/admin` |

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
# edit the .env based on your database and email settings
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
6. Run the server
```bash
python manage.py runserver
```

---
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

[//]: # (## Populate Database)

[//]: # ()
[//]: # (1. Access admin panel at `http://localhost:8000/admin/`)

[//]: # ()
[//]: # (2. Create Question Categories)

[//]: # ()
[//]: # (3. Create Questions)

[//]: # ()
[//]: # (4. Create Choices for each question)

[//]: # ()
[//]: # (- Otherwise, import the sample database)

## API Endpoints

| Endpoints                        | Method | Description                          | Authentication Required |
|----------------------------------|--------|--------------------------------------|-------------------------|
| `/api/`                          | GET | Home view with endpoints list        | ❌                      |
| `/api/register/`                 | POST | Register a new user                  | ❌                      |
| `/api/verify-otp/`               | POST | Verify a user with OTP               | ❌                      |
| `/api/login/`                    | POST | Login and get JWT token              | ❌                      |
| `/api/questionlist/`             | GET | List all questions with filters      | ❌                      |
| `/api/question-detail/<int:pk>/` | GET | Get a question with multiple choices | ❌                      |
| `/api/submit-answer/`            | POST | Submit answer in practice mode       | ✅                     |
| `/api/start-quiz/<int:quiz_id>/` | GET | Start a new quiz session             | ✅                     |
| `/api/submit-quiz/`              | POST | Submit all answers for a quiz        | ✅                     |
| `/api/user_history/`             | GET | Get user's practice history          | ✅                     |
| `/admin/`                        | GET | Admin interface                      | Admin only              |


## Directory Structure

```
quizbit/
├── quiz/                   # Django app 
│   ├── migrations/
│   ├── serializers.py
│   ├── views.py
│   ├── models.py
│   └── ...
├── monitoring/
│   ├── prometheus.yml
│   └── Grafana_Dashboards/
│        └── dashboard.yml
│        └── Django-Dashboard.json
├── .env
├── sample_database
│   └── sample_db.sql
├── postman_collections
├── docker-compose.yml
├── Dockerfile
├── manage.py
└── README.md
```

## 💬 Support
For any suggestions or issues, please [open an issue](https://github.com/YeakubSadlil/quizbit/issues).
