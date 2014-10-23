/*
    File: fn_sign.sqf
    Author: H4SHK3KS
    
    Description:
    Gets the item out of the inventory and places it on the map. 
*/
private["_position","_object"];
_object = "Sign_F" createVehicle [0,0,0];
_object attachTo[player,[0,1.5,0.2]];
_object setDir 90;
_object setVariable["item","signDeployed",true];
life_action_signDeploy = player addAction["<t color='#00FF00'>Place sign</t>",{if(!isNull life_sign) then {detach life_sign; life_sign = ObjNull;}; player removeAction life_action_signDeploy; life_action_signDeploy = nil;},"",999,false,false,"",'!isNull life_sign'];
life_sign = _object;
waitUntil {isNull life_sign};
if(!isNil "life_action_signDeploy") then {player removeAction life_action_signDeploy;};
if(isNull _object) exitWith {life_sign = ObjNull;};
_object setPos [(getPos _object select 0),(getPos _object select 1),0];
_object allowDamage false;
_object setObjectTextureGlobal [0,"glde\textures\banner\banner_zap1"];