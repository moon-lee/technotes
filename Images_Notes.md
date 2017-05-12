## Image Processing Tools

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

    * Flight Setting for improving the Map Quality from drone
    
    * [Reference site](https://blog.dronedeploy.com/how-to-improve-the-map-quality-from-your-drone-14b115859fee) 

    * Increase front-overlap(frontlap) ans side-overlap(sidelap) during planning

    * Fly higher

    * Fly slower

    * Check camera settings and quality of individual photos
        
        * the speed of SD Card will affect your camera acquisition
            
            * SD Card Type
                * SDHC (Secure Digital High Capacity) : 2 ~ 32 GB
                * SDXC (Secure Digital eXtra Capacity) : over 32 GB

            * SD Card Speed 
                * UHS Speed Class 1 : U1 (minimum write speed : 10MB/sec)
                * UHS Speed Class 3 : U3 (minimum write speed : 30MB/sec)
                
            * UHS Bus Speed
                * UHS-I : maximum read speed of 104MB/s
                * UHS-II : maximum read speed of 312MB/s

3. Agisoft Photoscan Professional [Web site](http://www.agisoft.com/)

    * [Download Installer](http://www.agisoft.com/downloads/installer/)  

    * Extract file and run the photoscan.sh script

4. DronePan

5. DroneBlock

6. Aerial Mapping References

    * GDAL
    * QGIS