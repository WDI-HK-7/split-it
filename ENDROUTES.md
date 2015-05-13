# END ROUTES


| Prefix        | Verb           | Description          | Controller#Action   | Return Message                       |
| -------------:|:-------------- |:--------------------:|:-------------------:|:------------------------------------:|
| user          | POST           | create a new user    | users#create        | on success: true, else false         |
| user          | GET            | get a user           | users#show          | renders user info, else false        |
| session       | POST           | create a session     | sessions#create     | on success: true, else false         |
| session       | DELETE         | delete a session     | session#destroy     | on success: true, else false         |
| transactions  | GET            | get all transactions | transactions#index  | renders transactions, else false |
| transactions  | POST           | create a transaction | transactions#create | on success: true, else false         |
| transaction   | PUT/PATCH      | update a transaction| transactions#update | on success: true, else false         |
| transaction   | DELETE         | delete a transaction| transactions#delete | on success: true, else false         |


# DATABASE STRUCTURE

### Events  ==> has many: activities
| id     | event_name       |
|--------|------------------|
|1       | SPRING BREAK '11 |


### Activities ==> belongs to: event  ==> has many: transactions
|id     | event_id    | activity_name    | total_amount    |
|-------|-------------|------------------|-----------------|
|1      |1            |friday drinks     | $200            |
|2      |1            |concert tickets   | $110            |
|3      |nil          |rent              | $50             |


### Transactions ==> belongs to: event (what about payments...? together or separate?)
|id     | activity_id | transaction_type | payer        |payee        | amount    |
|-------|-------------|------------------|--------------|-------------|-----------|
|1      | 1           | expense          | harrys_id    | dimples_id  | $100      |
|2      | 1           | expense          | harrys_id    | michaels_id | $20       |
|3      | 2           | expense          | dimples_id   | harrys_id   | $10       |
|4      | -           | payment          | fers_id      | dimples_id  | $50       |


### Users (auto)
|id             | username    | email            | password         |
|---------------|-------------|------------------|------------------|
|dimples_id     |dimple       |dy@dydydy.com     |3&63f#48DO2aw*(32r|
|harrys_id      |harry        |harry@hahaha.com  |*(3wri3rpoifSDif3r|
|fers_id        |f3r          |f3r@456.com       |(*F923rijpoeFDsfda|

