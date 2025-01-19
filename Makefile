# Build and run Docker containers
up:
	docker-compose up -d --build

# Stop and remove Docker containers
down:
	docker-compose down

# Run database migrations
migrate:
	docker exec -it scalable-django-app python manage.py migrate

# Create a superuser
createsuperuser:
	docker exec -it scalable-django-app python manage.py createsuperuser

# Collect static files
collectstatic:
	docker exec -it scalable-django-app python manage.py collectstatic --noinput
