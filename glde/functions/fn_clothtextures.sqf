/*
	File: fn_clothtextures.sqf
	Author: .:/fAiLix\:.
	
	Description:
	Change the player clothes
*/

// Cop
[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_SpecopsUniform_sgg"};
		player setObjectTextureGlobal [0,"glde\textures\uniforms\swat.paa"];
		waitUntil {uniform player != "U_B_SpecopsUniform_sgg"};
	}; 
};


