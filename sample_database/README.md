## Sample Database

This directory contains a sample postgresql database with prefilled sample data.<br>
The dump was taken in the following way.
```bash
pg_dump --inserts --if-exists --clean -h localhost -U <db_user> -d <db_name> > sample_database/sample_db.sql
```
- `--inserts` Uses `INSERT` statements instead of `COPY`
- The script `sample_db.sql` will drop the existing tables and create new tables and insert sample data.

#### Import Sample data
If you follow the Docker installation it will automatically populate database with sample data.<br>
If you need to import data manually than follow below:
```bash
docker cp sample_database/sample_db.sql <db_container_name>:/sample_db.sql
docker exec -i <db_container_name> psql -U <db_user> -d <db_name> -f /sample_db.sql
```

## 📈 Database Models
1. **Users:** Custom user model with email as the unique identifier
2. **Question_Category:** Category of each question like Math,Physics,Chemistry etc.
3. **Questions:** MCQ question with description, difficulty level and category
4. **Choices:** Multiple options for each question is stored with the predefined correct answer
5. **Quiz:** Quiz configuration including quiz title, duration, categories
6. **QuizSession:** Tracks individual quiz status, score and timing
7. **QuizSessionQuestion:** Maps QuizSession and Questions 
8. **UserSolutions:** Stores user submission history with answer and time taken