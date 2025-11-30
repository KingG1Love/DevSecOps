# DevSecOps

Модель ДБ:
```
type Task struct {
    ID              int    // ID задачи
    ResponsibleID   int    // id ответственного
    ResponsibleName string // имя ответственного
    DueDate         int64  // срок выполнения задачи (Unix timestamp)
    AssignedAt      int64  // срок постановки задачи / дата назначения (Unix timestamp)
    Context         string // контекст / описание задачи
}
```
Методы
```
GET /posts
POST /posts
PUT /posts
DELETE /posts
```
Запуск сервера:
go run cmd/server/server.go

Запуск теста:
go run cmd/test/test_api.go

Получить все записи 
curl -k https://localhost/posts

Добавить новую запись
```
curl -k -X POST https://localhost/posts \
  -H "Content-Type: application/json" \
  -d '{
        "id": 0,
        "responsible_id": 0,
        "responsible_name": "Test,
        "context": "Test",
        "assigned_at": 228,
        "due_date": 322
      }'
```
Получить все записи
```
docker exec -it news_app-db-1 \
  psql -U news_user -d news -c "SELECT * FROM posts;"
```
