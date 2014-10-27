enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life by GLDE";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

// Market

if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "----------------------------------";
	diag_log "Market prices generated!";
	diag_log "----------------------------------";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log "----------------------------------";
		diag_log format["Market prices updated! %1", _this select 1];
		diag_log "----------------------------------";
	};
	
	//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	diag_log "----------------------------------";
	diag_log "Server FSM executed";
	diag_log "----------------------------------";
};



// GLDE custom
[] execVM "glde_init.sqf";

// Igi Load for ADAC
if (side player == east) then
{
	[] execVM "glde\scripts\igi_load\IgiLoadInit.sqf";
};

// Speedtraps
[] execVM "glde\scripts\speedtrap\speedtrap30.sqf";
[] execVM "glde\scripts\speedtrap\speedtrap50.sqf";



// Disable fucking AI Voice and Chat Spam yeah :)
player setVariable ["BIS_noCoreConversations", true];
enableSentences false;
enableRadio false;
0 fadeRadio 0;

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};