#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["Vehicle god mode disabled","PLAIN"]; titleFadeOut 2;
	vehicle player allowDamage true;
	
} else {
	life_god = true;
	titleText ["Vehicle god mode enabled","PLAIN"]; titleFadeOut 2;
	while (vehicle player != player)
	{
		vehicle player allowDamage false;
	};
}; 