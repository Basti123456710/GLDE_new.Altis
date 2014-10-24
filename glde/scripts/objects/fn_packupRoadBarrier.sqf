/*
    File: fn_packupmauer.sqf
    Author: H4SHK3KS
    Description:
    Packs up a deployed cone.
*/
private["_object"];
_object = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_object") exitWith {};
if(([true,"cone",1] call life_fnc_handleInv)) then
{
    titleText["You picked up the road barrier.","PLAIN"];
    life_action_barrierPickup = nil;
    deleteVehicle _object;
};