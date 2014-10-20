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

// GLDE custom
[] execVM "glde_init.sqf";

// Statusbar //
[] execVM "glde\scripts\fn_statusBar.sqf";


// Disable fucking AI Voice and Chat Spam yeah :)
player setVariable ["BIS_noCoreConversations", true];
enableSentences false;
enableRadio false;
0 fadeRadio 0;

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};