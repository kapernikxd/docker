mongo:
	docker run -p 27017:27017 \
		-d \
		--rm \
		--name mongodb \
		--network notes-net \
		--env-file ./config/development.env \
		-v mongo-data:/data/db \
		mongo

backend:
	docker run -p 5000:5000 \
		-d \
		--rm \
		--name notes-backend \
		--network notes-net \
		-v C:\Users\Vadim\Desktop\Docker\docker-mern\server:/app \
		-v /app/node_modules \
		--env-file ./config/development.env \
		notes-backend

frontend:
	docker run -p 3000:3000 \
		-d \
		--rm \
		--name notes-frontend \
		notes-frontend

stop: 
	docker stop mongodb notes-backend notes-frontend

dev: 
	docker-compose -f docker-compose.yml up -d

dev-stop: 
	docker-compose down

build:
	docker-compose -f docker-compose.production.yml up -d

down: 
	docker-compose down


		