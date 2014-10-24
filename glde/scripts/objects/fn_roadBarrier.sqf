/*
    File: fn_barrier.sqf
    Author: H4SHK3KS
    
    Description:
    Gets the item out of the inventory and places it on the map. 
*/
private["_position","_object"];
_object = "RoadBarrier_F" createVehicle [0,0,0];
_object attachTo[player,[0,2,0.7]];
_object setDir 90;
_object setVariable["item","barrierDeployed",true];
life_action_barrierDeploy = player addAction["<t color='#00FF00'>Place road barrier</t>",{if(!isNull life_barrier) then {detach life_barrier; life_barrier = ObjNull;}; player removeAction life_action_barrierDeploy; life_action_barrierDeploy = nil;},"",999,false,false,"",'!isNull life_barrier'];
life_barrier = _object;
waitUntil {isNull life_barrier};
if(!isNil "life_action_barrierDeploy") then {player removeAction life_action_barrierDeploy;};
if(isNull _object) exitWith {life_barrier = ObjNull;};
_object setPos [(getPos _object select 0),(getPos _object select 1),0];
_object allowDamage false;
// _object setObjectTextureGlobal [0,"glde\textures\banner\"];