/*
	File: fn_medicPlayerMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by H4SHK3KS
	
	Description:
	Marks medics on the map for other medics. Only initializes when the actual map is open.
*/
private["_markers","_medics"];
_markers = [];
_medics = [];

sleep 0.5;
if(visibleMap) then {
	{if(side _x == independent) then {_medics pushBack _x;}} foreach playableUnits; //Fetch list of medics / independent
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers pushBack [_marker,_x];
	} foreach _medics;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_medics = [];
};