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

    