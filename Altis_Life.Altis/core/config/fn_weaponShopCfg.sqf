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
	case "cop_weapon":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) == 1): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0]]]; };
            case (__GETC__(life_coplevel) == 2): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 3): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 4): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 5): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 6): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 7): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 8): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["arifle_MX_F",nil,0], ["30Rnd_65x39_caseless_mag",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) == 9): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["arifle_MXM_F",nil,0],["optic_DMS",nil,0],["arifle_MX_F",nil,0], ["30Rnd_65x39_caseless_mag",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0],["arifle_MX_F",nil,0], ["30Rnd_65x39_caseless_mag",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
            case (__GETC__(life_coplevel) > 9): {["Polizei Shop",[["hgun_P07_snds_F","Tazer",0],["16Rnd_9x21_Mag","Tazer Magazin",0],["Binocular",nil,0],["ItemGPS",nil,0],["ToolKit",nil,0],["muzzle_snds_L",nil,0],["FirstAidKit",nil,0],["Medikit",nil,0],["NVGoggles",nil,0],["srifle_GM6_F",nil,0], ["5Rnd_127x108_Mag",nil,0], ["optic_LRPS",nil,0],["arifle_MXM_F",nil,0],["optic_DMS",nil,0],["arifle_MX_F",nil,0], ["30Rnd_65x39_caseless_mag",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0],["arifle_MX_F",nil,0], ["30Rnd_65x39_caseless_mag",nil,0],["SMG_01_F",nil,0], ["30Rnd_45ACP_Mag_SMG_01",nil,0],["MiniGrenade","Flashbang",0], ["SmokeShell",nil,0], ["Chemlight_blue",nil,0],["arifle_MXC_F",nil,0],["30Rnd_65x39_caseless_mag",nil,0],["optic_Arco",nil,0],["arifle_SDAR_F","Unterwasser Waffe",0],["20Rnd_556x45_UW_mag","Unterwasser Mag",0],["SMG_02_F",nil,0],["30Rnd_9x21_Mag",nil,0],["optic_Holosight",nil,0],["optic_Aco",nil,0],["hgun_Pistol_heavy_01_F",nil,0],["11Rnd_45ACP_Mag",nil,0],["optic_MRD",nil,0]]]; };
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civ!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Schwarzmarkt",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,15000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["NVGoggles",nil,1200]
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
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Waffenhändler",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["V_Rangemaster_belt",nil,13000],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "shell":
	{
		["Tankstelle",
			[
				["ToolKit",nil,1250],
				["FirstAidKit",nil,970]
			]
		];
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
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000],
                        ["ItemRadio","Handy",380]
					]
				];
			};
		};
	};
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist nicht vom ADAC !!"};
			default {
				["ADAC Item Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],						
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200],
						["Chemlight_yellow",nil,300],			
                        ["B_AssaultPack_cbr",nil,2500],
                        ["B_Kitbag_mcamo",nil,4500],
                        ["B_TacticalPack_oli",nil,3500],
                        ["B_FieldPack_ocamo",nil,3000],
                        ["B_Bergen_sgg",nil,4500],
                        ["B_Kitbag_cbr",nil,4500],
                        ["B_Carryall_oli",nil,5000],
                        ["B_Carryall_khk",nil,5000]
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
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};			
			default
			{
				["Altis General Store",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,750],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
                        ["ItemRadio","Handy",380]
					]
				];
			};
		};
	};
	
	case "blackwater":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Du gehörst nicht zu Blackwater Limited & Co.KG!"};
			case (!license_civ_blackwater): {"Du gehörst nicht zu Blackwater Limited & Co.KG!"};
			default
			{
				["Blackwater Shop",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_green",nil,300],
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["arifle_MXM_F",nil,45000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,10000],
						["optic_LRPS",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_acp",nil,300]
					]
				];
			};
		};
	};
	
	case "kopfgeld":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Du gehörst nicht zur Kopfgeld  Firma!"};
			case (!license_civ_kopfgeld): {"Du gehörst nicht zur Kopfgeld Firma!"};
			default
			{
				["Kopfgeld Shop",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_green",nil,300],
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["arifle_MXM_F",nil,45000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,10000],
						["optic_LRPS",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_acp",nil,300]
					]
				];
			};
		};
	};	
	
	case "inkasso":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Du gehörst nicht zur Inkasso  Firma!"};
			case (!license_civ_inkasso): {"Du gehörst nicht zur Inkasso Firma!"};
			default
			{
				["Inkasso Shop",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["arifle_SDAR_F",nil,20000],
						["arifle_MXM_F",nil,45000],
						["arifle_MX_RCO_pointer_snds_F",nil,55000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,10000],
						["optic_LRPS",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,350],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_Pistol_heavy_01_snds_F",nil,10000],
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["11Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_acp",nil,300]
					]
				];
			};
		};
	};	
};
