# END ROUTES & DATABASE STRUCTURE

* = priorities


| Prefix        | Verb           | Path                                                                  | Description           | Controller#Action   | Return Message                       |
| -------------:|:-------------- |:---------------------------------------------------------------------:|:---------------------:|:-------------------:|:------------------------------------:|
| transactions  | GET*           | /transactions?payee=current_user && /transactions?payer=current_user  | get all transactions  | transactions#index  | renders transactions, else false     |
| transactions  | POST*          | /transactions                                                         | create a transaction  | transactions#create | on success: true, else false         |
| transaction   | DELETE         | /transactions/:id                                                     | delete a transaction  | transactions#delete | on success: true, else false         |
| expenses      | GET*           | /expenses                                                             | get all expenses      | expenses#index      | renders expenses, else false         |
| expenses      | POST*          | /expenses                                                             | create an expense     | expenses#create     | on success: true, else false         |
| expense       | DELETE         | /expenses/:id                                                         | delete an expense     | expense#delete      | on success: true, else false         |
| settlements   | GET*           | /settlements?payee=current_user && /settlements?payer=current_user    | get all settlements   | settlements#index   | renders settlements, else false      |
| settlements   | POST*          | /settlements                                                          | create a settlement   | settlements#create  | on success: true, else false         |
| settlement    | DELETE         | /settlements/:id                                                      | delete a settlement   | settlements#delete  | on success: true, else false         |


# DATABASE STRUCTURE

### Users  ==> has_many: transactions & has_many: events through transactions
| id     | user_name        | email           | password          |
|--------|------------------|-----------------|-------------------|
|1       | harrychen        |                 |                   |
|2       | dimple           |                 |                   |


### Transactions ==> belongs_to: two users & belongs_to: expense
|id     | expense_id      | payer        | payee       | amount    |
|-------|-----------------|--------------|-------------|-----------| 
|1      | 1               | harrys_id    | dimples_id  | $100      |
|2      | 1               | harrys_id    | fers_id     | $100      | 
|3      | 2               | dimples_id   | fers_id     | $60       | 
|4      | nil             | fers_id      | dimples_id  | $60       |


### Expenses ==> has_many: transactions
|id     | expense_name    | total_cost      |
|-------|-----------------|-----------------|
|1      |friday drinks    | $300            |
|2      |concert tix      | $100            |


### Settlements  ==> belongs_to: two users
|id     | payer        | payee       | amount    |
|-------|--------------|-------------|-----------|
|1      | harry_id     | dimples_id  | $100      |

