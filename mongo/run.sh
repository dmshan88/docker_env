 docker run -itd --privileged --name mongo -p 27017:27017 mongotest:v1 /usr/sbin/init
 docker exec -it mongo /bin/bash