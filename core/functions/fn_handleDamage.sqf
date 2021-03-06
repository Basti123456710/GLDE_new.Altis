/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if( _curWep in [
							"hgun_Pistol_heavy_01_snds_F",
							"hgun_Pistol_heavy_01_F",
							"hgun_Pistol_heavy_01_MRD_F",
							
							"SMG_02_F",
							"SMG_02_ACO_F",
							"SMG_02_ACO_pointg_F"
							
						]) then {
						
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_9x21_Ball") then {150} else {100};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) in [
																				"B_Quadbike_01_F",
																				"C_Kart_01_Vrana_F",
																				"C_Kart_01_Red_F",
																				"C_Kart_01_Fuel_F",
																				"C_Kart_01_Blu_F"
																				
																			]) then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
					
						
						if(_isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						};
						
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;