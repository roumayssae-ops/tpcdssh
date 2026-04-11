$DockerUser = "roumayssae657"

# Arrêter et supprimer ancien conteneur
docker stop flask_app 2>$null
docker rm flask_app 2>$null

# Pull dernière image Docker
docker pull $DockerUser/flask_devops_demo:latest

# Lancer le conteneur Flask
docker run -d --name flask_app -p 5000:5000 $DockerUser/flask_devops_demo:latest