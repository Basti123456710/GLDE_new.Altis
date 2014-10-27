/*
	File: fn_clothtextures.sqf
	Author: .:/fAiLix\:.
	
	Description:
	Change the player clothes
*/

// Cop
if (side player == west) then {

	[] spawn
	{
	while {true} do
		{
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"glde\textures\uniforms\cop_cadet.paa"];
			waitUntil {uniform player != "U_Rangemaster"};
		}; 
	};
	
	[] spawn
	{
	while {true} do
		{
			waitUntil {uniform player == "U_B_CombatUniform_mcam_tshirt"};
			player setObjectTextureGlobal [0,"glde\textures\uniforms\cop_officer.paa"];
			waitUntil {uniform player != "U_B_CombatUniform_mcam_tshirt"};
		}; 
	};
	
	[] spawn
	{
	while {true} do
		{
			waitUntil {uniform player == "U_B_CombatUniform_mcam_tshirt"};
			player setObjectTextureGlobal [0,"glde\textures\uniforms\cop_officer.paa"];
			waitUntil {uniform player != "U_B_CombatUniform_mcam_tshirt"};
		}; 
	};
	
	[] spawn
	{
	while {true} do
		{
			waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
			player setObjectTextureGlobal [0,"glde\textures\uniforms\cop_lieutenant.paa"];
			waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
		}; 
	};
	
	[] spawn
	{
	while {true} do
		{
			waitUntil {uniform player == "U_B_survival_uniform"};
			player setObjectTextureGlobal [0,"glde\textures\uniforms\cop_pilot.paa"];
			waitUntil {uniform player != "U_B_survival_uniform"};
		}; 
	};

};


