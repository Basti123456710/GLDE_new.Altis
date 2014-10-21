waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Welcome to our server", _rscLayer];
[] spawn {
    sleep 5;
    _counter = 360;
    _timeSinceLastUpdate = 0;
    while {true} do
    {
        sleep 5;
        _counter = _counter - 1;
                ((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Cops: %2 | Civs: %3 | Position: %4", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, mapGridPosition player, _counter];
    }; 
};