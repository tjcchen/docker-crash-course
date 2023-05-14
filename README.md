## Docker-Crash-Course
Docker is a platform for building, running, and shipping applications with ease.

## Inconsistency Issues Between Your Development Environment and The Production Environment
### Reasons
1. One file or more files missing
2. Software version mismatch( Eg: node version 14 in your dev, and version 9 in your prod )
3. Different configuration settings( Eg: inconsistency between environment variables )

## Commands
```
# other team members could run your docker container with ease
docker-compose up

# remove an application and all its dependencies safely
docker-compose down --rmi all
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


## License
Apache 2.0