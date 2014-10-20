/*
	File: fn_copEnter.sqf
	Author: Skalicon
	
	Description:
	Allows Cops to enter locked Vehicles
*/
if(playerSide != west) exitWith {};
private ["_position","_veh"];
_position = _this select 3;

switch (_position) do
{
	case "driver":
	{
		cursorTarget lock false;
		player action ["getInDriver", cursorTarget];
		cursorTarget lock true;
	};
	
	case "passenger":
	{
		cursorTarget lock false;
		player action ["getInCargo", cursorTarget];
		cursorTarget lock true;
	};
	case "copilot":
	{
		cursorTarget lock false;
		player action ["getInTurret", cursorTarget, [0]];
		cursorTarget lock true;
	};
	case "commander":
	{
		cursorTarget lock false;
		player action ["getInCommander", cursorTarget];
		cursorTarget lock true;
	};
	case "gunner":
	{
		cursorTarget lock false;
		player action ["getIngunner", cursorTarget];
		cursorTarget lock true;
	};
	case "exit":
	{
		_veh = vehicle player;
		_veh lock false;
		player action ["getOut", _veh];
		_veh lock true;
	};
	case "moveDriver":
	{
		cursorTarget lock false;
		player action ["moveToDriver", vehicle player];
		cursorTarget lock true;
	};
	case "movePassenger":
	{
		cursorTarget lock false;
		player action ["moveToCargo", vehicle player, 0];
		cursorTarget lock true;
	};
	case "moveGunner":
	{
		cursorTarget lock false;
		player action ["moveToGunner", vehicle player];
		cursorTarget lock true;
	};
	case "moveCommander":
	{
		cursorTarget lock false;
		player action ["moveToCommander", vehicle player];
		cursorTarget lock true;
	};
};