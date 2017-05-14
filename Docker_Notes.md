## Docker Notes

* Installation Docker for Ubuntu
    * Reference site : [Get Docker for Ubuntu](https://docs.docker.com/engine/installation/linux/ubuntu/)

    * Install using the repository
        1. Set up the Repository
            ```
            $ sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
            $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
            $ sudo apt-key fingerprint 0EBFCD88

                pub     4096R/0EBFCD88 2017-02-22
                        Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
                uid                  Docker Release (CE deb) <docker@docker.com>
                sub     4096R/F273FCD8 2017-02-22

            $ sudo add-apt-repository \
                "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
                $(lsb_release -cs) \
                stable"

            ```

        2. Install Docker CE
            ```
            $ sudo apt-get update

            $ sudo apt-get install docker-ce
            ```

        3. Verify Docker installation

            `$ sudo docker version`

        4. Post Installation (optional)

            * add user to docker group

                `$ sudo usermod -aG docker $USER`
            
* Engine(docker) CLI

    1. [Remove one or more containers](https://docs.docker.com/engine/reference/commandline/rm/)
        * Usage

            `$ docker rm [OPTIONS] CONTAINER [CONTAINER...]`
    
        * Remove all stopped containters

            `$ docker rm $(docker ps -a -q)`

    2. [Remove one or more images](https://docs.docker.com/engine/reference/commandline/rmi/)
        * Usage

            `docker rmi [OPTIONS] IMAGE [IMAGE...]`



* The example of the basic commands

    1.  `Dockerfile` will define what goes on in the environment inside your container  

        ```
        $ docker build -t friendlyname .  # Create image using this directory's Dockerfile
        
        $ docker run -p 4000:80 friendlyname  # Run "friendlyname" mapping port 4000 to 80
        
        $ docker run -d -p 4000:80 friendlyname         # Same thing, but in detached mode
        
        $ docker ps                                 # See a list of all running containers
        
        $ docker stop <hash>                     # Gracefully stop the specified container
        
        $ docker ps -a           # See a list of all containers, even the ones not running
        
        $ docker kill <hash>                   # Force shutdown of the specified container
        
        $ docker rm <hash>              # Remove the specified container from this machine
        
        $ docker rm $(docker ps -a -q)           # Remove all containers from this machine
        
        $ docker images -a                               # Show all images on this machine
        
        $ docker rmi <imagename>            # Remove the specified image from this machine
        
        $ docker rmi $(docker images -q)             # Remove all images from this machine
        
        $ docker login             # Log in this CLI session using your Docker credentials
        
        $ docker tag <image> username/repository:tag  # Tag <image> for upload to registry
        
        $ docker push username/repository:tag            # Upload tagged image to registry
        
        $ docker run username/repository:tag                   # Run image from a registry

        ```

    2. `docker-compose.yml` file is a YAML file that defines how Docker containers should behave in production.

        * While typing `docker run` is simple enough, the true implementation of a container in production is running it as a service.

        * Services codify a container's behavior in a Compose file, and this file can be used to scale, limit, and redeploy your app.

        * Changes to the service can be applied in place, as it runs, using the same command that launched the service : `docker stack deploy`

        ```
        $ docker stack ls              # List all running applications on this Docker host
        
        $ docker stack deploy -c <composefile> <appname>  # Run the specified Compose file
        
        $ docker stack services <appname>       # List the services associated with an app
        
        $ docker stack ps <appname>   # List the running containers associated with an app
        
        $ docker stack rm <appname>                             # Tear down an application

        ```

* Docker command tips

    * Remove notagged name image

        ` docker rmi $(docker images --filter "dangling=true" -q --no-trunc) `