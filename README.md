## Back End

#### Format Email

| Role       | Email                       |
|------------|-----------------------------|
| user       | <username@gmail.com>        |
| admin      | <username@admin.com>        |
| superadmin | <username@superadmin.com>   |

#### Example
```
curl -X POST http://localhost:5050/auth/signup \
-H "Content-Type: application/json" \
-d '{
  "name": "Sundew",
  "username": "sundew",
  "email": "sundew@admin.com",
  "password": "admin123",
  "role": "admin"
}'
```

```
curl -X POST http://localhost:5050/auth/signin \
-H "Content-Type: application/json" \
-d '{
  "email": "sundew@admin.com",
  "password": "admin123"
}'
```
