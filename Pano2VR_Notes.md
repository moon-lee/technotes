## Pano2VR
   
   Converts panoramic images into interactive panoramas

1. Load Image
   * Full spherical image 
        * Equirectangular projection
        * Cubic projection
        * Little Planet projection

   * Partial Format image
        * Cylindrical projection
        * Rectilinear projection
        * Arc formed


2. Pano2VR Workflow

    * Load images
    * Set North into each image
        * Refer to Floor Plan

    * Set Title into each image

    * Set Default view
        * all image , Tilt is 0 FoV is 100 


3. Link two pano2vr project files

    * Once render done, place linking spot using hotspot or polygon

    and then type url edit box as below

    ` ../f-b2/index.html#node516 `

    * this is the actual code in project file

    ` <url>../f-b2/index.html#node516</url> `
