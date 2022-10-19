echo -e "---------docker Login--------"
docker login --username=$1  --password=$2
echo -e "---------docker Stop--------"
docker stop vite-project
echo -e "---------docker Rm--------"
docker rm vite-project
docker rmi herzorf/vite-project:master
echo -e "---------docker Pull--------"
docker pull herzorf/vite-project:master
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 80:80 --name vite-project herzorf/vite-project:master
echo -e "---------deploy Success--------"



docker login --username=herzorf https://hub.docker.com/ --password=love@1446450047
