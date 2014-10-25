

// Dedicated Scripts
If (isDedicated) then {

	// Market
	if(isNil("life_market_prices")) then
	{
		[] call life_fnc_marketconfiguration;
		diag_log "";
		diag_log "Market prices generated!";
		diag_log "";
		
		"life_market_prices" addPublicVariableEventHandler
		{
			diag_log "";
			diag_log format["Market prices updated! %1", _this select 1];
			diag_log "";
		};
		//Start server fsm
		[] execFSM "core\fsm\server.fsm";
		diag_log "";
		diag_log "Server FSM executed";
		diag_log "";
	};


};


// Client Scripts
if (!isDedicated) then {



	// Main Respawn Loop for custom Features
	[] spawn 
	{
		waitUntil {!isNil "life_session_completed"};
		waitUntil {life_session_completed}; 
		
		while {true} do 
		{
			waitUntil {alive player}; // Player is ingame and alive
			waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
			
				 
		};
	};


};
diag_log "";
diag_log "================================================";
diag_log ":: GLDE :: All custom functions have been loaded!";
diag_log "================================================";
diag_log "";