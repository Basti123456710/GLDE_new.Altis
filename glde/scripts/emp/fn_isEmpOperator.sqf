/*

© 2014 nano2K - written for we-are-friendly.de
*/
_player = _this select 0;
_slot = assignedVehicleRole player;
_vehicle = vehicle player;
_result = false;

if((_vehicle != player) && (playerSide == west)) then {
    if((typeof _vehicle == "B_Heli_Transport_01_F") && (_vehicle getVariable ["nano_emp_enabled", false])) then {
        if(_slot select 0 == "Turret") then {
			_result = true;
        }
    };
};
_result;