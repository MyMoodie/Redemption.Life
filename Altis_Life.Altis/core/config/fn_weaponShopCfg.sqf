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
			case (playerSide !=west): {"Du bist kein Polizist"};
			default
			{
				["Praktikanten Polizei Shop",
					[
						["arifle_sdar_F","Taser Sturmgewehr",10],
						["hgun_Rook40_F","Taser-Pistole",10],
						["hgun_Rook40_snds_F","Taser-Pistole Silenced",10],
						["16Rnd_9x21_Mag","16er Magazin",10],
						["20Rnd_556x45_UW_mag","556er Magazin",10]
					]
				];
			};
		};
	};

	case "cop_visier":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"Du kannst erst als Polizist hier Zugreifen !"};
			default
			{
				["Altis Visiere & Sonstiges",
					[
						["ItemMap",nil,10],
						["ItemWatch",nil,10],
						["ItemCompass",nil,10],
						["ItemGPS",nil,10],
						["ToolKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles_OPFOR",nil,10],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10],
						["acc_flashlight",nil,10],
						["acc_pointer_IR",nil,10],
						["B_UavTerminal",nil,10],
						["Rangefinder",nil,10],
						["optic_Holosight",nil,10],
						["optic_ACO_smg",nil,10],
						["optic_MRCO",nil,10],
						["optic_LRPS",nil,10],
						["optic_DMS",nil,10],
						["optic_NVS",nil,10],
						["optic_Arco",nil,10],
						["muzzle_snds_L",nil,10],
						["muzzle_snds_M",nil,10],
						["muzzle_snds_H",nil,10]
					]
				];
			};
		};
	};
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein ADAC"};
			case (__GETC__(life_mediclevel) < 2): {"Du kannst erst als ADAC hier Zugreifen !"}; 
			default {
				["ADAC Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,0],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein MEDIC"};
			case (__GETC__(life_mediclevel) < 1): {"Du kannst erst als MEDIC hier Zugreifen !"}; 
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 4): {"Du bist noch kein Komissar !"};
			default
			{
				["Beamter Waffen Laden",
					[	
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 3): {"Du bist noch kein Kommissar"};
			default
			{
				["Kommisar Waffen Shop",
					[
						["SMG_02_F",nil,10],
						["arifle_TRG20_F",nil,10],
						["arifle_MX_F",nil,10],
						["arifle_MXC_F",nil,10],
						["30Rnd_65x39_caseless_mag","6,5mm Scharf",10],
						["30Rnd_9x21_Mag",nil,10],
						["30Rnd_556x45_Stanag",nil,10],
						["SmokeShellOrange","Rauchgranate",10]
					]
				];
			};
		};
	};
	
	case "cop_kommisar":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein HauptKommissar"};
			default
			{
				["HauptKommisar Waffen Shop",
					[
						["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20_plain_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["muzzle_snds_M",nil,2000],
						["arifle_MXC_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_Katiba_F",nil,35000],
						["30Rnd_65x39_caseless_green",nil,500],
						["muzzle_snds_H",nil,2000],
						["SMG_02_F",nil,30000],
						["30Rnd_9x21_Mag",nil,500],
						["muzzle_snds_L",nil,2000],
						["acc_flashlight",nil,750],
						["optic_ACO_grn",nil,500],
						["optic_ACO_smg",nil,500],
						["optic_Holosight",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500]
					]
				];
			};
		};
	};	
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein SEK-Beamter"};
			default
			{
				["SEK Waffen Shop",
					[
						["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["muzzle_snds_M",nil,2000],
						["arifle_Mk20_plain_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["muzzle_snds_M",nil,2000],
						["arifle_MXC_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_Katiba_F",nil,35000],
						["30Rnd_65x39_caseless_green",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_Black_F",nil,45000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MXM_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_GL_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["muzzle_snds_H",nil,2000],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["UGL_FlareYellow_F",nil,500],
						["arifle_Katiba_GL_F",nil,50000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_SW_Black_F",nil,50000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["muzzle_snds_H",nil,2000],
						["srifle_DMR_03_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2000],
						["srifle_EBR_F",nil,50000],
						["muzzle_snds_B",nil,2000],
						["srifle_GM6_F",nil,50000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_LRR_F",nil,50000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_DMR_02_F",nil,80000],
						["10Rnd_338_Mag",nil,2500],
						["muzzle_snds_338_black",nil,2500],
						["srifle_DMR_05_blk_F",nil,80000],
						["10Rnd_93x64_DMR_05_Mag",nil,2500],
						["muzzle_snds_93mmg",nil,2500],
						["LMG_Mk200_F",nil,120000],
						["200Rnd_65x39_cased_Box",nil,7500],
						["200Rnd_65x39_cased_Box_Tracer",nil,8500],
						["muzzle_snds_H_MG",nil,2500],
						["arifle_SDAR_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["muzzle_snds_acp",nil,2000],
						["SMG_02_F",nil,30000],
						["30Rnd_9x21_Mag",nil,500],
						["muzzle_snds_L",nil,2000],
						["launch_RPG32_F",nil,200000],
						["RPG32_F",nil,25000],
						["RPG32_HE_F",nil,25000],
						["Laserdesignator",nil,5000],
						["Laserbatteries",nil,500],
						["ItemRadio",nil,500],
						["DemoCharge_Remote_Mag",nil,50000],
						["optic_ACO_grn",nil,500],
						["optic_MRD",nil,500],
						["optic_ACO_smg",nil,500],
						["optic_Holosight",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_LRPS",nil,500],
						["optic_SOS","MOS",500],
						["optic_NVS",nil,500],
						["optic_AMS",nil,500],
						["bipod_01_F_blk",nil,1250],
						["HandGrenade_Stone","Flashbang",200],
						["SmokeShellGreen","Reizgas",200]
					]
				];
			};
		};
	};
	
	case "cop_gsg":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 6): {"Du bist nicht bei der GSG9"};
			default
			{
				["GSG9 Waffen Shop",
					[
						["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["muzzle_snds_M",nil,2000],
						["arifle_Mk20_plain_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["muzzle_snds_M",nil,2000],
						["arifle_MXC_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_Katiba_F",nil,35000],
						["30Rnd_65x39_caseless_green",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_Black_F",nil,45000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MXM_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_GL_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["muzzle_snds_H",nil,2000],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["UGL_FlareYellow_F",nil,500],
						["arifle_Katiba_GL_F",nil,50000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["muzzle_snds_H",nil,2000],
						["arifle_MX_SW_Black_F",nil,50000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["muzzle_snds_H",nil,2000],
						["srifle_DMR_03_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2000],
						["srifle_EBR_F",nil,50000],
						["muzzle_snds_B",nil,2000],
						["srifle_GM6_F",nil,50000],
						["5Rnd_127x108_Mag",nil,1000],
						["srifle_LRR_F",nil,50000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_DMR_02_F",nil,80000],
						["10Rnd_338_Mag",nil,2500],
						["muzzle_snds_338_black",nil,2500],
						["srifle_DMR_05_blk_F",nil,80000],
						["10Rnd_93x64_DMR_05_Mag",nil,2500],
						["muzzle_snds_93mmg",nil,2500],
						["LMG_Mk200_F",nil,120000],
						["200Rnd_65x39_cased_Box",nil,7500],
						["200Rnd_65x39_cased_Box_Tracer",nil,8500],
						["muzzle_snds_H_MG",nil,2500],
						["arifle_SDAR_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["muzzle_snds_acp",nil,2000],
						["SMG_02_F",nil,30000],
						["30Rnd_9x21_Mag",nil,500],
						["muzzle_snds_L",nil,2000],
						["launch_RPG32_F",nil,200000],
						["RPG32_F",nil,25000],
						["RPG32_HE_F",nil,25000],
						["Laserdesignator",nil,5000],
						["Laserbatteries",nil,500],
						["ItemRadio",nil,500],
						["DemoCharge_Remote_Mag",nil,50000],
						["optic_ACO_grn",nil,500],
						["optic_MRD",nil,500],
						["optic_ACO_smg",nil,500],
						["optic_Holosight",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_LRPS",nil,500],
						["optic_SOS","MOS",500],
						["optic_NVS",nil,500],
						["optic_AMS",nil,500],
						["bipod_01_F_blk",nil,1250],
						["HandGrenade_Stone","Flashbang",200],
						["SmokeShellGreen","Reizgas",200]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"Du besitz keine Rebellen Lizenz!"};
			default
			{
				["IS Shop",
					[
						["arifle_SDAR_F",nil,80000],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_MK20_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,800],
						["arifle_Katiba_F",nil,85000],
						["30Rnd_65x39_caseless_green",nil,800],
						["arifle_MX_Black_F",nil,105000],
						["arifle_MX_GL_Black_F",nil,105000],						
						["30Rnd_65x39_caseless_mag",nil,800],
						["arifle_MXC_Black_F",nil,105000],
						["30Rnd_65x39_caseless_mag",nil,800],
						["arifle_MXM_Black_F",nil,115000],
						["30Rnd_65x39_caseless_mag",nil,800],
						["arifle_MX_SW_F",nil,115000],
						["30Rnd_65x39_caseless_mag",nil,800],
						["srifle_DMR_01_F",nil,250000],
						["10Rnd_762x54_Mag",nil,1200],
						["srifle_EBR_F",nil,350000],
						["20Rnd_762x51_Mag",nil,1200],						
						//Mk-1 EMR 7.62mm
						["srifle_DMR_03_F",nil,190000],
						["srifle_DMR_03_khaki_F",nil,190000],
						["srifle_DMR_03_tan_F",nil,190000],
						["srifle_DMR_03_woodland_F",nil,190000],
						["srifle_DMR_03_multicam_F",nil,190000],
						["20Rnd_762x51_Mag",nil,5000],																	
						["launch_RPG32_F",nil,1550000],
						["RPG32_F",nil,250000],
						["SMG_02_F",nil,30000],
						["30Rnd_9x21_Mag",nil,500],
						["muzzle_snds_L",nil,2000],
						["acc_flashlight",nil,750],
						["SMG_01_Holo_F",nil,750],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,5000],	
						["SMG_02_F",nil,60000],
						["30Rnd_9x21_Mag",nil,500],
						["muzzle_snds_L",nil,2000],
						["acc_flashlight",nil,750],
						["optic_ACO_grn_smg",nil,8500],
						["optic_ACO_grn",nil,8500],
						["optic_Aco",nil,8500],
						["optic_Holosight_smg",nil,9000],
						["optic_Holosight",nil,9000],
						["optic_MRCO",nil,12000],
						["optic_Arco",nil,12000],
						["optic_Hamr",nil,12000],
						["optic_SOS",nil,18000],
						["optic_DMS",nil,21000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,35000],
						["optic_AMS",nil,35000],
						["optic_AMS_khk",nil,35000],
						["optic_AMS_snd",nil,35000],
						["optic_KHS_blk",nil,35000],
						["optic_KHS_tan",nil,35000],
						["acc_pointer_IR",nil,12000],
						["bipod_02_F_blk",nil,80000],
						["bipod_02_F_hex",nil,80000],
						["bipod_02_F_tan",nil,80000],
						["bipod_03_F_blk",nil,80000],
						["bipod_03_F_oli",nil,80000],
						["UGL_FlareWhite_F",nil,5000],
						["UGL_FlareGreen_F",nil,5000],
						["UGL_FlareRed_F",nil,5000],
						["UGL_FlareYellow_F",nil,5000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_P07_F",nil,15000],
						["hgun_Pistol_heavy_02_F",nil,20000],
						["hgun_ACPC2_F",nil,17500],
						["hgun_PDW2000_F",nil,30000],
						["optic_ACO_grn_smg",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Rang 1",
					[
						["hgun_Rook40_F",nil,4500],
						["16Rnd_9x21_Mag",nil,450],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,450],
						["hgun_PDW2000_F",nil,18000],
						["30Rnd_9x21_Mag",nil,900],
						["hgun_Pistol_heavy_02_F",nil,13500],
						["6Rnd_45ACP_Cylinder",nil,150],
						["SMG_01_F",nil,45000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["arifle_sdar_F",nil,32000],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_Mk20C_plain_F",nil,45000],
						["arifle_TRG21_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Katiba_C_F",nil,140000],
						["30Rnd_65x39_caseless_green",nil,500],
						["srifle_DMR_01_F",nil,240000],
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,350000],
						["20Rnd_762x51_Mag",nil,500],
						["optic_Aco",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_MRCO",nil,12000],
						["optic_Arco",nil,17000],
						["acc_flashlight",nil,1000],
						["HandGrenade",nil,45000],
						["ToolKit",nil,3000],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["NVGoggles",nil,3500],
						["SmokeShell",nil,1000],
						["SmokeShellRed",nil,900],
						["SmokeShellYellow",nil,900],
						["SmokeShellPurple",nil,900],
						["SmokeShellBlue",nil,900],
						["SmokeShellOrange",nil,900],
						["muzzle_snds_L",nil,200000],
						["muzzle_snds_H",nil,200000],
						["muzzle_snds_B",nil,200000],
						["optic_SOS",nil,80000],
						["B_Parachute",nil,90000],
						["Rangefinder",nil,900]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Rang 2",
					[
						//SPMG .338
						["MMG_02_black_F",nil,1000000],
						["MMG_02_camo_F",nil,1000000],
						["MMG_02_sand_F",nil,1000000],
						["130Rnd_338_Mag",nil,28000],
						//ASP-1 Kir 12.7mm
						["srifle_DMR_04_F",nil,500000],
						["srifle_DMR_04_tan_F",nil,500000],
						["10Rnd_127x54_Mag",nil,5500],
						["srifle_GM6_F",nil,650000],
						["5Rnd_127x108_Mag",nil,5000],
						["arifle_MXM_F",nil,120000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MX_SW_F",nil,120000],
						//Cyrus 9.3mm
						["srifle_DMR_05_blk_F",nil,420000],
						["srifle_DMR_05_tan_F",nil,420000],
						["srifle_DMR_05_hex_F",nil,420000],
						["10Rnd_93x64_DMR_05_Mag",nil,8500],
						["LMG_Mk200_F",nil,220000],
						["200Rnd_65x39_cased_Box",nil,2400],
						["LMG_Zafir_F",nil,340000],
						["150Rnd_762x54_Box",nil,2800],
						["srifle_DMR_06_camo_F",nil,380000],
						["srifle_DMR_06_olive_F",nil,380000],
						["20Rnd_762x51_Mag",nil,10000],
						["srifle_DMR_02_sniper_F",nil,900000],
						["10Rnd_338_Mag",nil,5000],
						//Navid 9.3mm
						["MMG_01_hex_F",nil,3200000],
						["MMG_01_tan_F",nil,3200000],
						["150Rnd_93x64_Mag",nil,25000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,4500],
						["arifle_Mk20_F",nil,25000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["srifle_EBR_F",nil,300000],
						["20Rnd_762x51_Mag",nil,350],
						["arifle_TRG20_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_MXC_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,450],
						["srifle_DMR_01_F",nil,150000],
						["10Rnd_762x54_Mag",nil,2500],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["11Rnd_45ACP_Mag",nil,250],
						["muzzle_snds_acp",nil,500],
						["optic_ACO_grn",nil,5000],
						["optic_Hamr",nil,6500],
						["optic_MRCO",nil,8000],
						["optic_SOS",nil,5000],
						["optic_Arco",nil,750],
						["optic_DMS",nil,2000],
						["optic_Holosight",nil,1500],
						["optic_AMS_khk",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],
						["muzzle_snds_93mmg",nil,10000],
						["muzzle_snds_93mmg_tan",nil,10000],
						["muzzle_snds_338_green",nil,10000],
						["muzzle_snds_338_sand",nil,10000],
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_H_MG",nil,750],
						["muzzle_snds_H",nil,1250],
						["muzzle_snds_B",nil,2500],
						["srifle_DMR_02_camo_F",nil,400000],
						["srifle_DMR_02_F",nil,400000],
						["10Rnd_338_Mag",nil,10000],
						["srifle_DMR_03_F",nil,380000],
						["srifle_DMR_03_khaki_F",nil,380000],
						["srifle_DMR_03_multicam_F",nil,380000],
						["srifle_DMR_03_tan_F",nil,380000],
						["srifle_DMR_03_woodland_F",nil,380000],
						["20Rnd_762x51_Mag",nil,10000],					
						["bipod_02_F_tan",nil,20000],
						["bipod_02_F_hex",nil,20000],
						["bipod_03_F_blk",nil,20000],
						["bipod_03_F_oli",nil,20000],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["UGL_FlareYellow_F",nil,500]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Söldner Waffen Händler",
					[
						//SPMG .338
						["MMG_02_black_F",nil,1000000],
						["MMG_02_camo_F",nil,1000000],
						["MMG_02_sand_F",nil,1000000],
						["130Rnd_338_Mag",nil,28000],
						["LMG_Zafir_F",nil,440000],
						["150Rnd_762x54_Box",nil,2800],
						["LMG_Mk200_F",nil,440000],
						["200Rnd_65x39_cased_Box",nil,2400],
						//MAR-10 .338
						["srifle_DMR_02_F",nil,1500000],
						["srifle_DMR_02_camo_F",nil,1700000],
						["srifle_DMR_02_sniper_F",nil,1700000],
						["10Rnd_338_Mag",nil,30000],
						["srifle_LRR_F",nil,300000],
						["srifle_LRR_camo_F",nil,310000],
						["7Rnd_408_Mag",nil,1800],
						["srifle_GM6_F",nil,680000],
						["srifle_GM6_camo_F",nil,450000],
						["5Rnd_127x108_Mag",nil,4800],						
						//Cyrus 9.3mm
						["srifle_DMR_05_blk_F",nil,1000000],
						["srifle_DMR_05_tan_F",nil,1000000],
						["srifle_DMR_05_hex_F",nil,1000000],
						["10Rnd_93x64_DMR_05_Mag",nil,8500],
						["srifle_DMR_06_camo_F",nil,380000],
						["srifle_DMR_06_olive_F",nil,380000],
						["20Rnd_762x51_Mag",nil,10000],
						["srifle_DMR_03_F",nil,380000],
						["srifle_DMR_03_khaki_F",nil,380000],
						["srifle_DMR_03_multicam_F",nil,380000],
						["srifle_DMR_03_tan_F",nil,380000],
						["srifle_DMR_03_woodland_F",nil,380000],
						["20Rnd_762x51_Mag",nil,10000],
						//Navid 9.3mm
						["MMG_01_hex_F",nil,3200000],
						["MMG_01_tan_F",nil,3200000],
						["150Rnd_93x64_Mag",nil,25000],						
						["srifle_EBR_F",nil,200000],
						["20Rnd_762x51_Mag",nil,350],
						//ASP-1 Kir 12.7mm
						["srifle_DMR_04_F",nil,500000],
						["srifle_DMR_04_tan_F",nil,500000],
						["10Rnd_127x54_Mag",nil,5500],
						["arifle_MXM_F",nil,180000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MX_SW_F",nil,120000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,4500],
						["arifle_Mk20_F",nil,25000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000],
						["arifle_TRG20_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_MXC_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,450],
						["srifle_DMR_01_F",nil,150000],
						["10Rnd_762x54_Mag",nil,2500],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["11Rnd_45ACP_Mag",nil,250],
						["muzzle_snds_acp",nil,500],
						["optic_Hamr",nil,6500],
						["optic_MRCO",nil,8000],
						["optic_SOS",nil,5000],
						["optic_DMS",nil,2000],
						["optic_Holosight",nil,1500],
						["optic_LRPS",nil,2500],
						["optic_NVS",nil,2500],
						["optic_Arco",nil,750],
						["optic_AMS_khk",nil,10000],
						["optic_AMS_snd",nil,10000],
						["optic_AMS",nil,10000],
						["optic_KHS_blk",nil,10000],
						["optic_KHS_hex",nil,10000],
						["optic_KHS_old",nil,10000],
						["optic_KHS_tan",nil,10000],
						["muzzle_snds_93mmg",nil,10000],
						["muzzle_snds_93mmg_tan",nil,10000],
						["muzzle_snds_338_green",nil,10000],
						["muzzle_snds_338_sand",nil,10000],
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_H_MG",nil,750],
						["muzzle_snds_H",nil,1250],
						["muzzle_snds_B",nil,2500],
						["muzzle_snds_H_MG",nil,750],
						["muzzle_snds_H",nil,1250],
						["muzzle_snds_B",nil,2500],						
						["bipod_01_F_snd",nil,20000],
						["bipod_01_F_blk",nil,20000],
						["bipod_01_F_mtp",nil,20000],
						["bipod_02_F_blk",nil,20000],
						["bipod_02_F_tan",nil,20000],
						["bipod_02_F_hex",nil,20000],
						["bipod_03_F_blk",nil,20000],
						["bipod_03_F_oli",nil,20000],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["UGL_FlareYellow_F",nil,500]
					]
				];
		    };
		};
	};
	
	case "genstore":
	{
		["Altis Elektro-Händler",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemMap",nil,50],
				["ItemCompass",nil,50],
				["ItemWatch",nil,50],
				["ToolKit",nil,100000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,1500],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist"};
            case (!license_civ_uranium): {"Du benötigst eine Uran-Lizenz"};
            default
            {
                ["Uran Verkäufer",
                    [
                        ["ToolKit",nil,10000],
                        ["FirstAidKit",nil,100],
                        ["U_I_HeliPilotCoveralls","Anti-Strahlungs Anzug",50000]
                    ]
                ];
            };
        };
    }; 
};
