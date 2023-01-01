k8s-deploy:
	kubectl create ns otus-msa-hw9
	kubectl apply -n otus-msa-hw9 -f order-service/charts
	kubectl apply -n otus-msa-hw9 -f user-service/charts
	kubectl apply -n otus-msa-hw9 -f billing-service/charts
	kubectl apply -n otus-msa-hw9 -f notification-service/charts

k8s-remove:
	kubectl delete ns otus-msa-hw9

docker-start:
	cd docker && docker-compose up -d

docker-stop:
	cd docker && docker-compose down

newman:
	newman run postman/collection.json

