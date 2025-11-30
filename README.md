# DevSecOps

Модель ДБ:

type Task struct {
    ID              int    // ID задачи
    ResponsibleID   int    // id ответственного
    ResponsibleName string // имя ответственного
    DueDate         int64  // срок выполнения задачи (Unix timestamp)
    AssignedAt      int64  // срок постановки задачи / дата назначения (Unix timestamp)
    Context         string // контекст / описание задачи
}

Методы

GET /posts
POST /posts
PUT /posts
DELETE /posts

Запуск сервера:
go run cmd/server/server.go

Запуск теста:
go run cmd/test/test_api.go

Результаты выполнения операций отображаются в консоли с цветовой индикацией:
Зеленый - успешное выполнение
Красный - ошибка выполнения
