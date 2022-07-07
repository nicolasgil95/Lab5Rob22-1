MODULE Module1
        PERS tooldata Servo:=[TRUE,[[0,0,114.2],[1,0,0,0]],[0.215,[8.7,12.3,49.2],[1,0,0,0],0.00021,0.00024,0.00009]];
    TASK PERS wobjdata RackWorkObject:=[FALSE,TRUE,"",[[280,-400,25],[0.707107,0,0,-0.707107]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata PiecesWorkObject:=[FALSE,TRUE,"",[[380,200,25],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    CONST robtarget Picking_Home:=[[225.191752358,-200,597.4],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PrismPicking_10:=[[0,200,80],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PrismPicking_20:=[[0,200,50],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HexPrismPicking_10:=[[200,200,80],[0,0.258819045,0.965925826,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HexPrismPicking_20:=[[200,200,50],[0,0.258819045,0.965925826,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CylinderPicking_10:=[[200,0,80],[0,0.707106781,0.707106781,0],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget CylinderPicking_20:=[[200,0,50],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack1stPosition_10:=[[-30,222.5,227],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack1stPosition_20:=[[20,222.5,227],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Placing_Home:=[[-400,325.191800236,597.400057165],[0.353553394,-0.612372434,0.612372434,0.353553394],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack2ndPosition_10:=[[-30,77.5,227],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack2ndPosition_20:=[[20,77.5,227],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack3rdPosition_10:=[[-30,222.5,127],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack3rdPosition_20:=[[20,222.5,127],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack4thPosition_10:=[[-30,77.5,127],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Rack4thPosition_20:=[[20,77.5,127],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RegrippingOperation_10:=[[20,150,382],[0,-0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RegrippingOperation_20:=[[20,150,352],[0,-0.707106781,0.707106781,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RegrippingOperation_30:=[[-30,150,380],[0.27059805,-0.653281482,0.653281482,-0.27059805],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RegrippingOperation_40:=[[-30,150,325],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget RegrippingOperation_50:=[[20,150,325],[0.5,-0.5,0.5,-0.5],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    
    PROC main()
        WaitDI DI_01, 1;
        HexPrismPickingPath;
        RegrippingOperationPath;
        Rack3rdPlacingPath;
    ENDPROC
    PROC PrismPickingPath()
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveJ PrismPicking_10,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveL PrismPicking_20,v20,z1,Servo\WObj:=PiecesWorkObject;
        MoveL PrismPicking_10,v20,z1,Servo\WObj:=PiecesWorkObject;
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
    ENDPROC
    PROC HexPrismPickingPath()
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveJ HexPrismPicking_10,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveL HexPrismPicking_20,v20,z1,Servo\WObj:=PiecesWorkObject;
        setDO DO_01, 1;
        WaitTime 1;
        SetDO DO_01, 0;
        MoveL HexPrismPicking_10,v20,z1,Servo\WObj:=PiecesWorkObject;
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
    ENDPROC
    PROC CylinderPickingPath()
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveJ CylinderPicking_10,v200,z10,Servo\WObj:=PiecesWorkObject;
        MoveL CylinderPicking_20,v20,z1,Servo\WObj:=PiecesWorkObject;
        MoveL CylinderPicking_10,v20,z1,Servo\WObj:=PiecesWorkObject;
        MoveJ Picking_Home,v200,z10,Servo\WObj:=PiecesWorkObject;
    ENDPROC
    PROC Rack1stPlacingPath()
        MoveJ Rack1stPosition_10,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL Rack1stPosition_20,v20,z1,Servo\WObj:=RackWorkObject;
        MoveL Rack1stPosition_10,v20,z1,Servo\WObj:=RackWorkObject;
        MoveJ Placing_Home,v200,z10,Servo\WObj:=RackWorkObject;
    ENDPROC
    PROC Rack2ndPlacingPath()
        MoveJ Rack2ndPosition_10,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL Rack2ndPosition_20,v20,z1,Servo\WObj:=RackWorkObject;
        MoveL Rack2ndPosition_10,v20,z1,Servo\WObj:=RackWorkObject;
        MoveJ Placing_Home,v200,z10,Servo\WObj:=RackWorkObject;
    ENDPROC
    PROC Rack3rdPlacingPath()
        MoveJ Rack3rdPosition_10,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL Rack3rdPosition_20,v20,z1,Servo\WObj:=RackWorkObject;
        SetDO DO_02, 1;
        WaitTime 1;
        SetDO DO_02, 0;
        MoveL Rack3rdPosition_10,v20,z1,Servo\WObj:=RackWorkObject;
        MoveJ Placing_Home,v200,z10,Servo\WObj:=RackWorkObject;
    ENDPROC
    PROC Rack4thPlacingPath()
        MoveJ Rack4thPosition_10,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL Rack4thPosition_20,v20,z1,Servo\WObj:=RackWorkObject;
        MoveL Rack4thPosition_10,v20,z1,Servo\WObj:=RackWorkObject;
        MoveJ Placing_Home,v200,z10,Servo\WObj:=RackWorkObject;
    ENDPROC
    PROC RegrippingOperationPath()
        MoveJ Placing_Home,v200,z10,Servo\WObj:=RackWorkObject;
        MoveJ RegrippingOperation_10,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL RegrippingOperation_20,v20,z1,Servo\WObj:=RackWorkObject;
        SetDO DO_02, 1;
        WaitTime 1;
        SetDO DO_02, 0;
        MoveL RegrippingOperation_10,v20,z1,Servo\WObj:=RackWorkObject;
        MoveJ RegrippingOperation_30,v200,z10,Servo\WObj:=RackWorkObject;
        MoveJ RegrippingOperation_40,v200,z10,Servo\WObj:=RackWorkObject;
        MoveL RegrippingOperation_50,v20,z1,Servo\WObj:=RackWorkObject;
        SetDO DO_01, 1;
        WaitTime 1;
        SetDO DO_01, 0;
        MoveL RegrippingOperation_40,v20,z1,Servo\WObj:=RackWorkObject;
    ENDPROC
ENDMODULE