## Workflow of generating Pano2vr projec file with pre-defined txt file

1. Root node name : <tour></tour>

2. child nodes

    * child node root : <panorama></panorama>

    * node id : <id>node1</id>
 
    * input :
        
        <input>
            <type>auto</type>  <-- constant variable
            <filename></filename>
        </input>

    * viewingparameter :

        1. <panonorth>0</panonorth>
            * <pan>0</pan>

        2. <panonorth>90</panonorth>
            * <pan>90</pan>

        3. <panonorth>180</panonorth>
            * <pan>180</pan>

    * userdata :
         
         <userdata>
            <title></title>
         </userdata>

    * hotspots :  /forward/backward/left/right  <--depence on panonorth

         <hotspots>
            <hotspot>
                <position>
                    <pan>0.00</pan>
                    <tilt>-35.00</tilt>
                </position>
                <polygon/>
                <type>point</type>
                <id>FwdPoint</id>
                <linktype>node</linktype>
                <target>$fwd</target>
                <skinid>ht_node_forward</skinid>
            </hotspot>
        </hotspots>



         
    