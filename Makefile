start:
	docker-compose up -d

stop:
	docker-compose down

mock-port:
	mockgen -package mock_port -destination internal/mock/user_repository.go  --source= taskbuilder/internal/core/port UserRepository
	mockgen -package mock_port -destination internal/mock/user_service.go  --source= taskbuilder/internal/core/port UserService
	mockgen -package mock_port -destination internal/mock/jwt_service.go  --source= taskbuilder/internal/core/service JwtService

unit-test:
	go test -v ./...

unit-cov:
	go test -v -cover ./...