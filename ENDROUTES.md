# END ROUTES


| Prefix        | Verb           | Description          | Controller#Action   | Return Message                       |
| -------------:|:-------------- |:--------------------:|:-------------------:|:------------------------------------:|
| user          | POST           | create a new user    | users#create        | on success: true, else false         |
| user          | GET            | get a user           | users#show          | renders user info, else false        |
| session       | POST           | create a session     | sessions#create     | on success: true, else false         |
| session       | DELETE         | delete a session     | session#destroy     | on success: true, else false         |
| transactions  | GET            | get all transactions | transactions#index  | renders all transactions, else false |
| transactions  | POST           | create a transaction | transactions#create | on success: true, else false         |
| transaction   | PUT/PATCH      | updates a transaction| transactions#update | on success: true, else false         |
| transaction   | DELETE         | deletes a transaction| transactions#delete | on success: true, else false         |


# DATABASE STRUCTURE