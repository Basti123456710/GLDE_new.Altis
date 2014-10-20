/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
	
	// Cop enter
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as driver</t>",life_fnc_copEnter,"driver",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as gunner</t>",life_fnc_copEnter,"gunner",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "B_MRAP_01_hmg_F" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as pilot</t>",life_fnc_copEnter,"driver",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Helicopter" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as commander</t>",life_fnc_copEnter,"commander",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "I_MRAP_03_F" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as co-pilot</t>",life_fnc_copEnter,"copilot",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Helicopter" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as passenger</t>",life_fnc_copEnter,"passenger",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Helicopter" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get in as passenger</t>",life_fnc_copEnter,"passenger",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
	life_actions = life_actions + [player addAction["<t color='#0060B6'>Get out</t>",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']]; 
	// Change seat in car
	life_actions = life_actions + [player addAction["<t color='#0060B6'>To driver seat</t>",life_fnc_copEnter,"moveDriver",0,false,false,"",'!isNull vehicle player && vehicle player isKindOf "Car" && (locked (vehicle player)==2) && (driver (vehicle player) != player)']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>To passenger seat</t>",life_fnc_copEnter,"movePassenger",0,false,false,"",'!isNull vehicle player && vehicle player isKindOf "Car" && (locked (vehicle player)==2) && ((driver (vehicle player) == player ) || (gunner (vehicle player) == player) || (commander (vehicle player) == player))']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>To gunner seat</t>",life_fnc_copEnter,"moveGunner",0,false,false,"",'!isNull vehicle player && vehicle player isKindOf "B_MRAP_01_hmg_F" && (locked (vehicle player)==2) && (gunner (vehicle player) != player)']];
	life_actions = life_actions + [player addAction["<t color='#0060B6'>To commander seat</t>",life_fnc_copEnter,"moveCommander",0,false,false,"",'!isNull vehicle player && vehicle player isKindOf "I_MRAP_03_F" && (locked (vehicle player)==2) && (commander (vehicle player) != player)']];
	
	

	};
	
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 4 && speed (vehicle player) > -1 && !life_net_dropped ']];
		
		
		
		/*Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		*/
	};
};