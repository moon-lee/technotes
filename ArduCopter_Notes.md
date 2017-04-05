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
