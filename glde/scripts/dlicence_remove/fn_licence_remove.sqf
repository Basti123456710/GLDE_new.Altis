/*

*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Not valid
if (__GETC__(life_coplevel) < 2) exitWith {hint "Your cop level is to low!};
[[_unit,false],"life_fnc_licence_remove_now",_unit,false] spawn life_fnc_MP;