/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	// Quad
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	// Offroader
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa","civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["glde\textures\cop\cop_offroad.paa","cop"],
			["glde\textures\medic\medic_offroad.paa","med"],
			["glde\textures\civ\civ_offroad_camo.paa","civ"],
			["glde\textures\civ\civ_offroad_gamer.paa","civ"],
			["glde\textures\civ\civ_offroad_morgan.paa","civ"]	
		];
	};
	// Hatchback
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["glde\textures\civ\civ_hatchback_fire.paa","civ"],
			["glde\textures\cop\cop_slimo_bl.paa","cop"]
		];
	};
	// Hatchback Sport
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["glde\textures\civ\civ_hatchback_fire.paa","civ"],
			["glde\textures\cop\cop_slimo_bl.paa","cop"]
		];
	};	
	
	// SUV
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["glde\textures\cop\cop_suv.paa","cop"],
			["glde\textures\cop\cop_suv_bl.paa","cop"],
			["glde\textures\medic\medic_suv.paa","med"],
		    ["glde\textures\civ\civ_suv_batman.paa","civ"],
			["glde\textures\civ\civ_suv_carbon.paa","civ"],
			["glde\textures\rebel\rebel_suv.paa","reb"],
			["glde\textures\civ\civ_suv_monster.paa","civ"]
		];
	};
	// Truck
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	// Truck Box
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	// Truck Fuel
	case "C_Van_01_fuel_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	// Zamak
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["glde\textures\civ\civ_zamak_weed_0.paa","civ","glde\textures\civ\civ_zamak_weed_1.paa"],
			["glde\textures\civ\civ_zamak_ereka_0.paa","civ","glde\textures\civ\civ_zamak_ereka_1.paa"],
			["glde\textures\civ\civ_zamak_redbull_0.paa","civ","glde\textures\civ\civ_zamak_redbull_1.paa"]			
		];
	};
	// Zamak
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["glde\textures\civ\civ_zamak_weed_0.paa","civ","glde\textures\civ\civ_zamak_weed_1.paa"],
			["glde\textures\civ\civ_zamak_ereka_0.paa","civ","glde\textures\civ\civ_zamak_ereka_1.paa"],
			["glde\textures\civ\civ_zamak_redbull_0.paa","civ","glde\textures\civ\civ_zamak_redbull_1.paa"]	
		];
	};
	// HEMTT
	case "B_Truck_01_box_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
			["glde\textures\civ\civ_hemtt_kitty_0.paa","civ","glde\textures\civ\civ_hemtt_kitty_1.paa","textures\civ\civ_hemtt_kitty_1.paa"],
			["glde\textures\civ\civ_hemtt_devil_0.paa","civ","glde\textures\civ\civ_hemtt_devil_1.paa","textures\civ\civ_hemtt_devil_1.paa"]
		];
	};
	// HEMTT
	case "B_Truck_01_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
			["glde\textures\civ\civ_hemtt_kitty_0.paa","civ","glde\textures\civ\civ_hemtt_kitty_1.paa","textures\civ\civ_hemtt_kitty_1.paa"],
			["glde\textures\civ\civ_hemtt_devil_0.paa","civ","glde\textures\civ\civ_hemtt_devil_1.paa","textures\civ\civ_hemtt_devil_1.paa"]
		];
	};
	// HEMTT
	case "B_Truck_01_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
			["glde\textures\civ\civ_hemtt_kitty_0.paa","civ","glde\textures\civ\civ_hemtt_kitty_1.paa","textures\civ\civ_hemtt_kitty_1.paa"],
			["glde\textures\civ\civ_hemtt_devil_0.paa","civ","glde\textures\civ\civ_hemtt_devil_1.paa","textures\civ\civ_hemtt_devil_1.paa"]
		];
	};
	// HEMTT
	case "B_Truck_01_Repair_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
			["glde\textures\civ\civ_hemtt_kitty_0.paa","civ","glde\textures\civ\civ_hemtt_kitty_1.paa","textures\civ\civ_hemtt_kitty_1.paa"],
			["glde\textures\civ\civ_hemtt_devil_0.paa","civ","glde\textures\civ\civ_hemtt_devil_1.paa","textures\civ\civ_hemtt_devil_1.paa"]
		];
	};
	// HEMTT
	case "B_Truck_01_ammo_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02_co.paa"],
			["glde\textures\civ\civ_hemtt_kitty_0.paa","civ","glde\textures\civ\civ_hemtt_kitty_1.paa","textures\civ\civ_hemtt_kitty_1.paa"],
			["glde\textures\civ\civ_hemtt_devil_0.paa","civ","glde\textures\civ\civ_hemtt_devil_1.paa","textures\civ\civ_hemtt_devil_1.paa"]
		];
	};
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","reb"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["glde\textures\cop\cop_hummingbird.paa","cop"],
			["glde\textures\medic\medic_hummingbird.paa","med"],
			["glde\textures\rebel\rebel_hummingbird.paa","reb"]
		];
	};
	// Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["glde\textures\medic\medic_orca.paa","med"],
			["glde\textures\rebel\rebel_orca.paa","reb"]
		];
	};
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["glde\textures\cop\cop_ghosthawk_0.paa","cop","glde\textures\cop\cop_ghosthawk_1.paa"]
		];
	};
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[
			["glde\textures\cop\cop_hellcat.paa","cop"],
			["\a3\air_f_epb\Heli_Light_03\Data\heli_light_03_base_indp_co.paa","reb"]
		];
	};
	// Mohawk
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\";
		_ret =
		[
			[_path + "Skins\heli_transport_02_1_ion_co.paa","civ",_path + "Skins\heli_transport_02_2_ion_co.paa",_path + "Skins\heli_transport_02_3_ion_co.paa"],
			[_path + "Skins\heli_transport_02_1_dahoman_co.paa","civ",_path + "Skins\heli_transport_02_2_dahoman_co.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"],
			[_path + "heli_transport_02_1_indp_co.paa","reb",_path + "heli_transport_02_2_indp_co.paa",_path + "heli_transport_02_3_indp_co.paa"]
		];
	};		
	// Hunter
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["glde\textures\cop\cop_hunter_bw_0.paa","cop","glde\textures\cop\cop_hunter_bw_1.paa"],
			["glde\textures\cop\cop_hunter_sw_0.paa","cop","glde\textures\cop\cop_hunter_sw_1.paa"]
		];
	};
	// Hunter
	case "B_MRAP_01_hmg_F":
	{
		_ret = 
		[
			["glde\textures\cop\cop_hunter_bw_0.paa","cop","glde\textures\cop\cop_hunter_bw_1.paa"],
			["glde\textures\cop\cop_hunter_sw_0.paa","cop","glde\textures\cop\cop_hunter_sw_1.paa"]
		];
	};	
	// Ifrit	
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["glde\textures\rebel\rebel_ifrit_braun_0.paa","reb","glde\textures\rebel\rebel_ifrit_braun_1.paa"],
			["glde\textures\rebel\rebel_ifrit_grau_0.paa","reb","glde\textures\rebel\rebel_ifrit_grau_1.paa"]
		];
	};
	// Ifrit	
	case "O_MRAP_02_hmg_F":
	{
		_ret = 
		[
			["glde\textures\rebel\rebel_ifrit_braun_0.paa","reb","glde\textures\rebel\rebel_ifrit_braun_1.paa"],
			["glde\textures\rebel\rebel_ifrit_grau_0.paa","reb","glde\textures\rebel\rebel_ifrit_grau_1.paa"]
		];
	};
};

_ret;