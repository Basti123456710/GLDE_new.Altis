private ["_speed","_vehicle","_speedtrap","_name","_list"];

while {playerSide == civilian} do 
{
	_vehicle = vehicle player;
	_speed = speed _vehicle;
	
	_speedtrap = [speedtrap_kav_1,speedtrap_kav_2];
	
	_multiplicator = 250;
	_bounty = round _speed * _multiplicator;	
	
	_name = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayname");
	_list = ["C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","O_MRAP_02_F","B_Quadbike_01_F","C_Hatchback_01_F","C_Offroad_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Hatchback_01_sport_F","C_Van_01_box_F","I_Truck_02_transport_F","I_Truck_02_covered_F","I_Truck_02_box_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_MRAP_01_F","I_MRAP_03_F"];
	{
		if ((player == driver _vehicle) && (_vehicle distance _x < 15) && (_speed >= 35)) then 
		{ 
			titleCut [" ","white in",1];
			[[getPlayerUID player,name player,"500",_bounty,_bounty],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			hint parseText format ["You have been clocked! (Limit: 30, Speed: %1)", round _speed];
			[[0,format["%1 has been clocked! Vehicle: %4, Position: %3, Speed: %2 Kmh!",name player, round _speed, _x, _name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;		
		
			sleep 1;
		};
	} foreach _speedtrap;
	sleep 1;
};