echo -e "---------docker Login--------"
docker login --username=$1  --password=$2
echo -e "---------docker Stop--------"
docker stop herzorf
echo -e "---------docker Rm--------"
docker rm herzorf
docker rmi herzorf/herzorf:master
echo -e "---------docker Pull--------"
docker pull herzorf/herzorf:master
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 80:80 --name herzorf herzorf/herzorf:master
echo -e "---------deploy Success--------"



docker login --username=herzorf https://hub.docker.com/ --password=love@1446450047
