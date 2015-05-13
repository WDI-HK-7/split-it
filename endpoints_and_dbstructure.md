# END ROUTES & DATABASE STRUCTURE

* = priorities

| Prefix        | Verb           | Description          | Controller#Action   | Return Message                       |
| -------------:|:-------------- |:--------------------:|:-------------------:|:------------------------------------:|
| transactions  | GET*           | get all transactions | transactions#index  | renders transactions, else false     |
| transactions  | POST*          | create a transaction | transactions#create | on success: true, else false         |
| transaction   | PUT/PATCH      | update a transaction | transactions#update | on success: true, else false         |
| transaction   | DELETE         | delete a transaction | transactions#delete | on success: true, else false         |
| events        | GET*           | get all events       | events#index        | renders events, else false           |
| event         | GET*           | get one event        | event#show          | renders event, else false            |
| event         | DELETE         | delete an event      | event#delete        | on success: true, else false         |


# DATABASE STRUCTURE

### Events  ==> has many: activities
| id     | event_name       |
|--------|------------------|
|1       | SPRING BREAK '11 |


### Activities ==> has many: transactions ; ==> belongs to: event (allow_nil)
|id     | event_id    | activity_name    | total_amount    |
|-------|-------------|------------------|-----------------|
|1      |1            |friday drinks     | $200            |
|2      |1            |concert tickets   | $110            |
|3      |nil          |rent              | $50             |


### Transactions ==> belongs to: activity (allow_nil)
|id     | activity_id | transaction_type | payer        |payee        | amount    |
|-------|-------------|------------------|--------------|-------------|-----------|
|1      | 1           | expense          | harrys_id    | dimples_id  | $100      |
|2      | 1           | expense          | harrys_id    | michaels_id | $20       |
|3      | 2           | expense          | dimples_id   | harrys_id   | $10       |
|4      | nil         | payment          | fers_id      | dimples_id  | $50       |

