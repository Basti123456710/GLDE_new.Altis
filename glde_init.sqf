

// Server Scripts
If (isServer) then {



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