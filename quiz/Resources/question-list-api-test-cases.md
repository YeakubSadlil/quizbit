# QuestionList API Test Cases
Base URL: http://127.0.0.1:8000

## 1. Valid Cases

### All Questions
GET /api/questionlist/
```json
{
    "Total num. of Questions": 2,
    "All questions": [
        {
            "id": 1,
            "text": "What is 1 + 3?",
            "difficulty": "easy",
            "category_name": "Mathematics"
        },
        {
            "id": 2,
            "text": "What is the symbol for Gold?",
            "difficulty": "medium",
            "category_name": "Chemistry"
        }
    ]
}
```

### Filter by Difficulty
GET /api/questionlist/?difficulty=easy
```json
{
    "Total num. of Questions": 1,
    "All questions": [
        {
            "id": 1,
            "text": "What is 1 + 3?",
            "difficulty": "easy",
            "category_name": "Mathematics"
        }
    ]
}
```

### Filter by Category
GET /api/questionlist/?category_id=1
```json
{
    "Total num. of Questions": 1,
    "All questions": [
        {
            "id": 1,
            "text": "What is 1 + 3?",
            "difficulty": "easy",
            "category_name": "Mathematics"
        }
    ]
}
```

### Combined Filters
GET /api/questionlist/?difficulty=easy&category_id=1
```json
{
    "Total num. of Questions": 1,
    "All questions": [
        {
            "id": 1,
            "text": "What is 1 + 3?",
            "difficulty": "easy",
            "category_name": "Mathematics"
        }
    ]
}
```

## 2. Invalid Difficulty Cases

### Invalid Difficulty Value
GET /api/questionlist/?difficulty=invalid
```json
{
    "error": "Invalid difficulty. Difficulty must be within : easy, medium, hard"
}
```
Status: 400 Bad Request

### Empty Difficulty
GET /api/questionlist/?difficulty=
```json
{
    "Total num. of Questions": 2,
    "All questions": [/* same as no filter */]
}
```
Status: 200 OK

### Case Insensitive Test
GET /api/questionlist/?difficulty=EASY
```json
{
    "Total num. of Questions": 1,
    "All questions": [/* same as lowercase easy */]
}
```
Status: 200 OK

## 3. Invalid Category Cases

### Non-Integer Category
GET /api/questionlist/?category_id=abc
```json
{
    "error": "Category_id must be an integer only"
}
```
Status: 400 Bad Request

### Non-Existent Category
GET /api/questionlist/?category_id=999999
```json
{
    "category_id with 999999 does not exist in the database"
}
```
Status: 404 Not Found

### Empty Category
GET /api/questionlist/?category_id=
```json
{
    "Total num. of Questions": 2,
    "All questions": [/* same as no filter */]
}
```
Status: 200 OK

## 4. Combined Invalid Cases

### Invalid Difficulty with Valid Category
GET /api/questionlist/?difficulty=invalid&category_id=1
```json
{
    "error": "Invalid difficulty. Difficulty must be within : easy, medium, hard"
}
```
Status: 400 Bad Request

### Valid Difficulty with Invalid Category Format
GET /api/questionlist/?difficulty=easy&category_id=abc
```json
{
    "error": "Category_id must be an integer only"
}
```
Status: 400 Bad Request

### Valid Difficulty with Non-Existent Category
GET /api/questionlist/?difficulty=easy&category_id=999999
```json
{
    "category_id with 999999 does not exist in the database"
}
```
Status: 404 Not Found

## 5. Empty Result Cases

### No Matching Results
GET /api/questionlist/?difficulty=hard&category_id=1
```json
{
    "Total num. of Questions": 0,
    "All questions": []
}
```
Status: 200 OK
