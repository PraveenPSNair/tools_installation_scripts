##Install in Amazon Ubuntu
sudo usermod -aG docker $USER
#docker pull docker.bintray.io/jfrog/artifactory-oss:latest
docker pull releases-docker.jfrog.io/jfrog/artifactory-oss:latest
sudo mkdir -p /jfrog/artifactory
sudo chown -R 1030 /jfrog/
#docker run --name artifactory -d -p 8081:8081 -p 8082:8082 -v /jfrog/artifactory:/var/opt/jfrog/artifactory docker.bintray.io/jfrog/artifactory-oss:latest

docker run --name artifactory -d -p 8081:8081 -p 8082:8082 -v /jfrog/artifactory:/var/opt/jfrog/artifactory releases-docker.jfrog.io/jfrog/artifactory-oss:latest

