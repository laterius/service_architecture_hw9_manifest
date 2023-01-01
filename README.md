# service_architecture_hw9_manifest
Домашнее задание Stream processing

**Используемый паттерн для реализации.**
В данной реализации используется синхронный метод взаимодействия так как он проще и быстрее в реализации, и для реализаци нет требований по нагрузке

# Инструкция по запуску
1. Запуск приложения **make k8s-deploy**
3. Запуск выполнения коллекции postman **make newman**
3. Удаление используемых ресурсов **make k8s-remove**
4. В случаи необходимости команды для получения адресов сервисов
    - order minikube service -n otus-msa-hw9 --url order-service
    - user minikube service -n otus-msa-hw9 --url user-service 
    - billing minikube service -n otus-msa-hw9 --url billing-service
    - notification minikube service -n otus-msa-hw9 --url notification-service
    
