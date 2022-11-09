#delete running container and confirm it is not running
docker ps -q --filter "name=testapp" | grep -q . && docker stop testapp && docker rm -fv testapp