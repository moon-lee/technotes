## Flight Mode 

1. Orbit flight mode

    * Consideration for Orbit

        * Orbit Centre
        * Orbit Radius
        * Aircraft Altitude
        * Camera Focus - x/y coordinates
        * Camera Focus - altitude

2. Orbit Mission Application

    * Autopilot - $46.99 (ipad)
    * Litchi - $35.99 (ipad)

3. DJI Go 4 POI Inteligent Flight Mode

    * How to set POI centre

    * How to set radius

    * How to set altitude

    * How to tigger camera

    * How to set Speed

4. Key Equation

    * `linear speed = radius x angular speed`

5. Minimum Radius of Point Of Interest 

    * `5M`

6. Terminology

    * `Circumference = 2 x Pi x R`
    * `Centre`
    * `Radius = R`
    * `Pi = 3.14`
    * Speed `30m 60 sec = 0.5m/sec`
    * 360 degrees = 2 x Pi
    * 180 degress = Pi
    * s = R x angle in radians

    * degrees into radians
        `degrees x (pi / 180) = radians`
    
    * radians into degrees
        `radians x (180 / pi) = degrees`



7. Telecom Tower Inspection 
   [using DJI Phantom 4 Pro](https://blog.propelleraero.com/telecom-tower-inspection-using-dji-phantom-4-pro-step-by-step-guide-a8eccab5aaba)

8. Aerail Mapping for Overview site image

    * Run the mission plan using the DJI Ground Station pro or DroneDeploy

    * Question - How to overlay current stiching image to the google map

9. Photogrammetry workflow with DJI Ground Station Pro

    * Vertical Image Capture with DJI GSP 

        * Set lower altitude to get 0.5cm/px

        * Set both overlap 80% (front and side)

        * Set Stop and go capture mode

    * Side Images Capture with POI of DJI Go 4 

        * Set Radius 12m

        * Keep Speed 3.6km/h (1m/s)

        * Every 2 seconds tigger camera shot

        * Calculation of time between 2 shots

            $$ \tau = \frac{d}{v}$$


        * Every 2 seconds and 6m Radius and 1m/s = 18 images (20 deg)

        * Every 2 seconds and 12m Radius and 1m/s = 36 images (10 deg)

    * Images processing with Agisoft PhotoScan

        * Upload Images

        * Run Aligment process

        * Dense point cloud calculation

        * Mesh calculation

        * Texture building

        * Optimize