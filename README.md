## Docker-Crash-Course
Docker is a platform for building, running, and shipping applications with ease.

## Inconsistency Issues Between Your Development Environment and The Production Environment
### Reasons
1. One file or more files missing
2. Software version mismatch( Eg: node version 14 in your dev, and version 9 in your prod )
3. Different configuration settings( Eg: inconsistency between environment variables )

## Commonly-used Commands
```bash
# other team members could run your docker container with ease
docker-compose up

# remove an application and all its dependencies safely
docker-compose down --rmi all

# build an image with Dockerfile
docker build -t hello-docker .

# check docker images
docker images or docker image ls

# run your docker image
docker run hello-docker

# rename your local image for remote Docker Hub
docker tag hello-docker tjcchen/hello-docker

# push local image to Docker Hub
docker push tjcchen/hello-docker

# pull a docker image from Docker Hub( on another machine )
docker pull tjcchen/hello-docker

# check docker image from another machine
docker image ls

# run docker image from another machine
docker run tjcchen/hello-docker

# enter into a docker container in an interactive way( 303ca2247317 is a running container id )
docker exec -it 303ca2247317 sh
```

## Running Linux
```bash
# pull an ubuntu image
docker pull ubuntu
or
docker run unbuntu

# check docker container status( currently running )
docker ps

# check docker all container status( including closed )
docker ps -a

# run docker in an interactive way( interactive )
docker run -it ubuntu

# check which bash
echo $0

# show history & execute commands by number
history ; !<history number>, eg: !2

# apt -> advanced package tool( package management )

# check current OS package
apt list

# fetch and update apt packages
apt update

# install a nano package( GNU nano is a simple terminal-based text editor )
apt install nano

# remove the nano package
apt remove nano
```

# Linus File Systems
```bash
# everything on linux is a file

# standard directories
bin  # binaries or programs
boot # files related to booting
dev  # devices
etc  # editable text configuration( configuration files )
home # each user will have a home directory
root # home directory for the root user, only root user can access
lib  # libriaries, like software library dependencies
var  # variables; files updated frequently, like log files, application data etc
proc # running processes

# enter the root directory, tilde
cd ~

# rename
mv test docker

# check file content
cat hello-docker.txt
more /etc/adduser.conf
less /etc/adduser.conf
head -n 5 /etc/adduser.conf # show first 5 lines of a file
tail -n 5 /etc/adduser.conf # show last 5 lines of a file

# redirect
cat file1.txt file2.txt > combined.txt

# append a new line of text to a file
echo "a bottom line of text" >> combined.txt
```

## Virtual Machines vs Containers
- Virtual Machine is an abstraction of a machine( physical hardware ).
  - Hypervisors - create and manage virtual machines. Eg: VirtualBox, VMware.
  - Benefits - run applications in isolation
  - Problems
    - Each VM needs a full-blown OS
    - Slow to start
    - Resource intensive( cpu, memory, disk space )
- Container is an isolated environment for running an appliction.
  - Allow running multiple apps in isolation
  - Are lightweight
  - Use OS of the host
  - Start quickly
  - Need less hardware resources

## Dockerfile and Images

Dockerfile is a plain text file that includes instructions that dockers uses to package this application into an image.

This image contains everything our application needs to run everything, including a cut-down OS, a runtime environment( eg Node ), application files, 3rd-party libraries, environment variables.

## Links

Docker Hub( Registry ): https://hub.docker.com/

Play with Docker: https://labs.play-with-docker.com/

## License
Apache 2.0