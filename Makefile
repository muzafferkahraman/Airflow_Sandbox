all: airflow mysql source composeup start_airflow

airflow:
	docker build -t airflow -f Dockerfile_airflow .

mysql:
	docker build -t mysql -f Dockerfile_mysql .

source:
	docker build -t source -f Dockerfile_source .

composeup:
	docker-compose up

start_airflow:
	docker exec -ti airflow_sandbox_airflow_1 airflow db init
