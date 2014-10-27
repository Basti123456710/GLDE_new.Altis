#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["SMG_02_ACO_F","Taser Rifle",20000],
						["hgun_Pistol_heavy_01_snds_F","Stun Pistol",2000],
						["arifle_MXC_Black_F",nil,30000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["9Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["SMG_02_ACO_F","Taser Rifle",20000],
						["hgun_Pistol_heavy_01_snds_F","Stun Pistol",2000],
						["arifle_MXC_Black_F",nil,30000],
						["MiniGrenade","Flashbang",1700],
						["SmokeShell","Flashbang",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["9Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",125],
						["arifle_MX_Black_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,5000],
						["muzzle_snds_H",nil,2750],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_65x39_caseless_mag",nil,300],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,5000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F","Taser Rifle",20000],
						["hgun_Pistol_heavy_01_snds_F","Stun Pistol",2000],
						["arifle_MXC_Black_F",nil,30000],
						["MiniGrenade","Flashbang",1700],
						["SmokeShell","Flashbang",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["9Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",125],
						["arifle_MX_Black_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["muzzle_snds_H",nil,2750],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MXM_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["Rangefinder","Rangefinder",1500],
						["optic_MRCO",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Lieutenant rank!"};
			default
			{
				["Altis Lieutenant Shop",
					[
						["SMG_02_ACO_F","Taser Rifle",20000],
						["hgun_Pistol_heavy_01_snds_F","Stun Pistol",2000],
						["arifle_MXC_Black_F",nil,30000],
						["MiniGrenade","Flashbang",1700],
						["SmokeShell","Flashbang",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["9Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",125],
						["arifle_MX_Black_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,5000],
						["muzzle_snds_H",nil,2750],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MXM_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["Rangefinder","Rangefinder",1500],
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2750],
						["optic_SOS",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRCO",nil,5000]
					]
				];
			};
		};
	};
	
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Captain rank!"};
			default
			{
				["Altis Captain Shop",
					[
						["SMG_02_ACO_F","Taser Rifle",20000],
						["hgun_Pistol_heavy_01_snds_F","Stun Pistol",2000],
						["arifle_MXC_Black_F",nil,30000],
						["MiniGrenade","Flashbang",1700],
						["SmokeShell","Flashbang",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["9Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",125],
						["arifle_MX_Black_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,5000],
						["muzzle_snds_H",nil,2750],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MXM_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["Rangefinder","Rangefinder",1500],
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2750],
						["srifle_LRR_F",nil,180000],
						["7Rnd_408_Mag",nil,1000],
						["optic_SOS",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRCO",nil,5000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,50000],
						["arifle_Katiba_F",nil,50000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,30000],
						["srifle_GM6_F",nil,750000],
						["launch_RPG32_F",nil,500000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_SOS",nil,7500],
						["30Rnd_9x21_Mag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,1500],
						["10Rnd_762x51_Mag",nil,3000],
						["30Rnd_65x39_caseless_green",nil,1500],
						["5Rnd_127x108_Mag",nil,10000],
						["RPG32_F",nil,250000],
						["NVGoggles",nil,2000],
						["ToolKit",nil,250]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["SMG_01_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,5000],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["arifle_TRG20_F",nil,50000],
						["arifle_Katiba_F",nil,50000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,30000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_SOS",nil,7500],
						["30Rnd_9x21_Mag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,1500],
						["10Rnd_762x51_Mag",nil,3000],
						["30Rnd_65x39_caseless_green",nil,1500],
						["NVGoggles",nil,2000],
						["ToolKit",nil,250]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
