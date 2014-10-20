waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "Welcome";
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_statusText = "glde.de";
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["Forum: %3 | FPS: %1 | Spieler : %2 | TS3 : 144.76.136.231 | Restarts um 0,4,8,12,16 und 20 Uhr  ", round diag_fps, count playableUnits, _statusText];
	};
};
