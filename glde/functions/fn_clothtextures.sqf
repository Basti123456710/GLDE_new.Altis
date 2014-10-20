/*
	File: fn_clothtextures.sqf
	Author: .:/fAiLix\:.
	
	Description:
	Change the player clothes
*/

//####	Cop Uniformen	####//
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0,"textures\uniforms\cadet.jpg"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam"};
        player setObjectTextureGlobal [0,"textures\uniforms\sergeant.jpg"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_SpecopsUniform_sgg"};
        player setObjectTextureGlobal [0,"textures\uniforms\k9G2eOn_VErs 6.paa"];
        waitUntil {uniform player != "U_B_SpecopsUniform_sgg"};
	};
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
        player setObjectTextureGlobal [0,"textures\uniforms\lieutenant.jpg"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
	};
};