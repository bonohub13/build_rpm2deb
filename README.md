# Convert .rpm packages into .deb packages

## <b>##### How to use ##########</b>
1. Go into the ```build_rpm2deb``` directory
    - ```cd build_rpm2deb```
2. Place the .rpm file(s) that you want to convert into .deb under the ```build-rpm2deb/target/rpm_pacakges``` directory
3. Build the Dockerfile using docker-compose
    - ```docker-compose build```
4. Start up the docker container
    - ```docker-compose up -d```
5. Run the ```build.bash``` inside the container
    - ```docker-compose -it exec build.bash /bin/bash```
6. Kill the container
    - ```docker-compose down```
7. Remove the docker image [Not nessesary]
    - ```docker-compose rmi```

## Dependencies
- docker-compose
- docker [Alternative docker-rootless]
    - [Instructions to install docker-rootless](https://docs.docker.com/engine/rootless/)
