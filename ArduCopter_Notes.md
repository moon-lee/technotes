## Copter Setting Information

1. Frame Orientation: X-Frame Quad Copter

2. Current Firmware Version : ArduCopter-V3.4.6 (e707341b)

3. Calibration
   
    * Accelerometer Calibration

    * Compass Calibration

    * ESC Calibration

    * Radio Calibration

4. FailSafe
    
    * Battery failsafe
    
        ` When battery reach the low battery set (14.0) or low capacity (1000 mah) : Warning led and alram`

    * Radio failsafe

        ` When radio is out of range or below the PWM (987) : Tigger action - always RTL`

    * Ground control station failsafe
    
        ` N/A`



5. Tuning 

    1. Throttle tuning

    * Throttle related changes : Copter 3.4.0-rc2 08-Aug-2016 Changes from 3.4.0-rc1
        1. Motors speed feedback to pilot while landed - motors only spin up to minimum throttle as throttle stick is brought to mid (previously spun up to 25%)
        2. MOT_HOVER_LEARN allows MOT_THST_HOVER to be learned in flight
        3. THR_MIN becomes MOT_SPIN_MIN
        4. THR_MID becomes MOT_THST_HOVER

    * Automatic Learning of Hover Throttle
        1. MOT_HOVER_LEARN : Set to 1 

            ` 0: Disabled,  1: Learn, 2: Learn and Save`
        
        2. MOT_THST_HOVER : set to 0.31 from log files
            
            ` Range (0.2 ~ 0.8) default : 0.5`

6. Mission Planner 

    1. Mission Planner 1.3.46 - 11-4-2017
       ```
        * MainV2: update xp urls
        * GDAL: reduce skiped file size
        * SerialOuputNMEA: add output rate selection #1516
        * LogOutput: tweak rinex generation
        * temp: extract gps_rtcm message as well
        * Mavlink: remove enum_end
        * EKFStatus: update to not use ENUM_END
        * Mavlink: add enum types where posible
        * SerialInjectGPS: add nmea parsing
        * SerialInjectGPS: reset seem on restart
        * ElevationProfile: change legend labels
        * FormationControl: make topmost
        * MAVState: add tostring
        * SerialInjectGPS: expire rtcm status
        * SeriaqlInjectGPS: add tmode polling and ECEF
        * PointLatLngAlt: support lat/lng/alt double input
        * SerialInjectGPS: add rtcm status
        * LogBrowse: add export visible, and speed up filter
        * GMapOverlay: add point count check
        * ConfigHWCompass: display best option based on capability bit
        * AA: remove reference
        * GMap.NET: remove visible internals requirement
        * Mavlink: update from xmls
        * package.config: globalupdate
        * GMapPolygon: dont draw offscreen polygons
        * SerialInjectGPS: modify interface
        * Fix maximized hud aspect ration when 16:9 is chosen
        * Privacy: add privacy policy
        * MainV2: disable udp autoconnect
        * MainV2: add xp removal notice
        * CommsSerialPipe: remove all unsafe options
        * Drivers: add ublox drivers
        * CommsSerialPipe: add simple pipe support
        * Help: remove update buttons in windows store version
        * SerialTest: check the reported device type
        * ConfigHWesp8266: fix
        * CommsSerialScan: support multiple connects at once (ie multiple radios)
        * SerialInjectGPS: remove location services
        * GStreamer: add more info on gstreamer version
        
        ```