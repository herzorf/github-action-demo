echo -e "---------docker Login--------"
docker login --username=$1 hub.docker.com --password=$2
echo -e "---------docker Stop--------"
docker stop herzorf/vite-project:latest
echo -e "---------docker Rm--------"
docker rm vite-project
docker rmi herzorf/vite-project:latest
echo -e "---------docker Pull--------"
docker pull herzorf/vite-project:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 80:80 --name vite-project herzorf/vite-project:latest
echo -e "---------deploy Success--------"