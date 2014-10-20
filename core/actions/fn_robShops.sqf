/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_cash_register","_ui","_progress","_pgText","_cP","_rip","_pos","_shop_name"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_cash_register = 12500 + round(random 15000);
_rip = false;

/* Shops Names:
switch (format["%1",_shop]) do {
	case "C Alpha 3-2:1 REMOTE": {_shop_name = "Kavala"};
	case "C Alpha 3-3:1 REMOTE": {_shop_name = "Agios"};
	case "C Alpha 4-1:1 REMOTE": {_shop_name = "Telos"};
	case "any": {_shop_name = "Ioannina"};
	case "C Alpha 4-2:1 REMOTE": {_shop_name = "Paros"};
	
};*/

if(_robber distance _shop > 5) exitWith { hint "You need to be within 5m of the cashier to rob him!" };

if (_rip) exitWith { hint "Robbery already in progress!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "You don't have a weapon! I'll call the cops now!" };
/*[[1,format["ALARM! - Gasstation: %1 was tryed to rob!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[getPlayerUID _robber,name _robber,"212"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;*/

_rip = true;
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 35) then { hint "The cashier hit the silent alarm, police has been alerted!"; [[1,format["ALARM! - a Gasstation %1 is being robbed!", _shop_name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; [[0,format["ALARM! - a Gasstation is being robbed!", _shop_name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "There isnt enough Police to rob the gas station!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.008;
 
if(_rip) then
{
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Robbery in Progress, stay close  (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; 
// Marker
	_marker = createMarker ["Marker200", _Pos];
	"Marker200" setMarkerColor "ColorRed";
	"Marker200" setMarkerText "Robbery";
	"Marker200" setMarkerType "mil_warning";	
	"Marker200" setMarkerSize [200,200];	
								
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith 
{ 
deleteMarker "Marker200"; _shop switchMove ""; hint "You need to stay within 10m to Rob registry! - Now the registry is locked."; 5 cutText ["","PLAIN"]; _rip = false; 
	if(_chance >= 35) then {

		[[1,format["The robbery was aborted!", _shop_name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; 
		[[0,format["The robbery was aborted!", _shop_name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	};
};
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, now get away before the cops arrive!",[_cash_register] call life_fnc_numberText],"PLAIN"];

life_cash = life_cash + _cash_register;

_rip = false;
life_use_atm = false;
sleep (200 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
deleteMarker "Marker200";
_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];	
_shop switchMove "";