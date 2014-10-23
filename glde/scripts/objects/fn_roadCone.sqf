/*
    File: fn_cone.sqf
    Author: H4SHK3KS
    
    Description:
    Gets the item out of the inventory and places it on the map. 
*/
private["_position","_object"];
_object = "RoadCone_F" createVehicle [0,0,0];
_object attachTo[player,[0,1.5,0.7]];
_object setDir 90;
_object setVariable["item","coneDeployed",true];
life_action_coneDeploy = player addAction["<t color='#00FF00'>Place road cone</t>",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;}; player removeAction life_action_coneDeploy; life_action_coneDeploy = nil;},"",999,false,false,"",'!isNull life_cone'];
life_cone = _object;
waitUntil {isNull life_cone};
if(!isNil "life_action_coneDeploy") then {player removeAction life_action_coneDeploy;};
if(isNull _object) exitWith {life_cone = ObjNull;};
_object setPos [(getPos _object select 0),(getPos _object select 1),0];
_object allowDamage false;
// _object setObjectTextureGlobal [0,"glde\textures\banner\"];