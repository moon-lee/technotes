##Image Processing Tools

* OpenDroneMap
    
    * Installation 

        1. Option 1 : Pull from [Docker store](https://store.docker.com/community/images/opendronemap/opendronemap)

            ```
            $ docker run -it --rm \
                -v $(pwd)/images:/code/images \ 
                -v $(pwd)/odm_orthophoto:/code/odm_orthophoto \
                -v $(pwd)/odm_georeferencing:/code/odm_georeferencing \
                opendronemap/opendronemap \
                --meshing-size 100000

            ```

        2. Option 2 : Installation from source

            * clone source

            ```
            $ git clone https://github.com/OpenDroneMap/OpenDroneMap.git

            ```

            * Build docker image in local

            ```
            $ cd OpenDroneMap
            $ docker build -t packages -f packages.Dockerfile .
            $ docker build -t my_odm_image .

            ```

            * Run docker imgage

            ```
            $ docker run -it --rm \
                -v $(pwd)/images:/code/images \
                -v $(pwd)/odm_orthophoto:/code/odm_orthophoto \
                -v $(pwd)/odm_texturing:/code/odm_texturing \
                my_odm_image

            ```

            or 

            ```
            $ docker run -it --rm \
               -v $(pwd)/odm_georeferencing:/code/odm_georeferencing \
                -v $(pwd)/odm_meshing:/code/odm_meshing \
                -v $(pwd)/odm_orthophoto:/code/odm_orthophoto \
                -v $(pwd)/odm_texturing:/code/odm_texturing \
                -v $(pwd)/opensfm:/code/opensfm \
                -v $(pwd)/pmvs:/code/pmvs \
                my_odm_image

            ````

            * Input Images

                ` -v $(pwd)/images:/code/images `

            * View Results

                * Orthorectified Imagery

                    ` -v $(pwd)/odm_orthophoto:/code/odm_orthophoto `

                * Textured Digital Surface Models

                    ` -v $(pwd)/odm_texturing:/code/odm_texturing `

                * Dense Point cloude

                    ` -v $(pwd)/opensfm:/code/opensfm `


                * 3D mesh

                    ` -v $(pwd)/odm_meshing:/code/odm_meshing `

                * Georeferenced dense point cloud

                    ` -v $(pwd)/odm_georeferencing:/code/odm_georeferencing `

    * For documentation, [wiki](https://github.com/OpenDroneMap/OpenDroneMap/wiki)

2. DroneDeploy

3. Agisoft Photoscan

4. DronePan

5. DroneBlock