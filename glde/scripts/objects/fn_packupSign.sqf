/*
    File: fn_packupmauer.sqf
    Author: H4SHK3KS
    Description:
    Packs up a deployed cone.
*/
private["_object"];
_object = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_object") exitWith {};
if(([true,"sign",1] call life_fnc_handleInv)) then
{
    titleText["You picked up the sign.","PLAIN"];
    player removeAction life_action_objectPickup;
    life_action_objectPickup = nil;
    deleteVehicle _object;
};