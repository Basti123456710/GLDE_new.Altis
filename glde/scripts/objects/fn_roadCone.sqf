/*
    File: fn_cone.sqf
    Author: H4SHK3KS
    
    Description:
    Gets the item out of the inventory and places it on the map. 
*/
private["_position","_cone"];
_cone = "RoadCone_F" createVehicle [0,0,0];
_cone attachTo[player,[0,5.5,0.2]];
_cone setDir 90;
_cone setVariable["item","coneDeployed",true];
life_action_coneDeploy = player addAction["<t color='#00FF00'>Place road cone</t>",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;}; player removeAction life_action_coneDeploy; life_action_coneDeploy = nil;},"",999,false,false,"",'!isNull life_cone'];
life_cone = _cone;
waitUntil {isNull life_cone};
if(!isNil "life_action_coneDeploy") then {player removeAction life_action_coneDeploy;};
if(isNull _cone) exitWith {life_cone = ObjNull;};
_cone setPos [(getPos _cone select 0),(getPos _cone select 1),0];
_cone allowDamage false;