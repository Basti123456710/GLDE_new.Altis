/*

	Autor: H4SHK3KS
	Description: Sets fuel of a vehicle
*/

_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_fuel = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; // Lulz
_vehicle setFuel _fuel;