#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; 
if(life_session_tries > 3) exitWith {cutText["There was an error in trying to setup your client.","BLACK FADED"]; 0 cutFadeOut 999999999;};

cutText ["Received request from server... Validating...","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

//Parse basic player information.
life_cash = parseNumber (_this select 2);
life_atmcash = parseNumber (_this select 3);
__CONST__(life_adminlevel,parseNumber(_this select 4));
__CONST__(life_donator,parseNumber(_this select 5));

//Loop through licenses
if(count (_this select 6) > 0) then {
	{
		missionNamespace setVariable [(_x select 0),(_x select 1)];
	} foreach (_this select 6);
};

//Parse side specific information.
switch(playerSide) do {
	case west: {
		__CONST__(life_coplevel,parseNumber(_this select 7));
		cop_gear = _this select 8;
		[] spawn life_fnc_loadGear;
		life_blacklisted = call compile format["%1",_this select 9];
	};
	
	case civilian: {
		life_is_arrested = call compile format["%1", _this select 7];
		civ_gear = _this select 8;
		__CONST__(life_coplevel,0);
		[] spawn life_fnc_civLoadGear;
		life_houses = _this select 9;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;
		[] spawn life_fnc_initHouses;
        life_ses_last_pos = [0,0,0];//(_this select 10);
	};
	
	case independent: {
		__CONST__(life_medicLevel,parseNumber(_this select 7));
		medic_gear = _this select 8;
		[] spawn life_fnc_medicLoadGear;
	};
	
	case east: {
		__CONST__(life_asadaclevel,parseNumber(_this select 7));
		asadac_gear = _this select 8;
		[] spawn life_fnc_asadacLoadGear;		
	};
};
switch(__GETC__(life_donator)) do
{
	case 1: {life_paycheck = life_paycheck + 1250;};
	case 2: {life_paycheck = life_paycheck + 1450;};
	case 3: {life_paycheck = life_paycheck + 1950;};
    case 4: {life_paycheck = life_paycheck + 2200;};
    case 5: {life_paycheck = life_paycheck + 2951;};
};

if(playerSide == west) then
{   
    switch (true) do {
        case (__GETC__(life_coplevel) == 1): {
                vas_weapons = ["hgun_P07_snds_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag"];
        };
        case (__GETC__(life_coplevel) == 2): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag"];
        };
        case (__GETC__(life_coplevel) == 3): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag"];
        };
        case (__GETC__(life_coplevel) == 4): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = [];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag"];
        };
        case (__GETC__(life_coplevel) == 5): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","30Rnd_65x39_caseless_mag"];
        };
        case (__GETC__(life_coplevel) == 6): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","30Rnd_65x39_caseless_mag","GrenadeHand_stone","SmokeShell","Chemlight_blue"];
        };
        case (__GETC__(life_coplevel) == 7): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","SMG_01_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","30Rnd_65x39_caseless_mag","GrenadeHand_stone","30Rnd_45ACP_Mag_SMG_01","SmokeShell","Chemlight_blue"];
        };
        case (__GETC__(life_coplevel) == 8): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","SMG_01_F","arifle_MX_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","GrenadeHand_stone","30Rnd_45ACP_Mag_SMG_01","30Rnd_65x39_caseless_mag","SmokeShell","Chemlight_blue"];
        };
        case (__GETC__(life_coplevel) == 9): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","SMG_01_F","arifle_MX_F","arifle_MXM_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","optic_DMS"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","GrenadeHand_stone","30Rnd_45ACP_Mag_SMG_01","30Rnd_65x39_caseless_mag","SmokeShell","Chemlight_blue"];
        };
        case (__GETC__(life_coplevel) > 9): {
                vas_weapons = ["hgun_P07_snds_F","hgun_Pistol_heavy_01_F","SMG_02_F","arifle_MXC_F","SMG_01_F","arifle_MX_F","arifle_MXM_F","srifle_GM6_F","arifle_SDAR_F"];
                vas_items = ["ItemMap","ItemCompass","Binocular","ItemGPS","muzzle_snds_L","FirstAidKit","Medikit","NVGoggles","optic_MRD","optic_Holosight","optic_Aco","optic_Arco","optic_DMS","optic_LRPS","U_Rangemaster","H_Beret_blk_POLICE","H_Beret_blk","U_B_CombatUniform_mcam_worn","H_HelmetB_plain_mcamo","H_Booniehat_mcamo","H_MilCap_mcamo","H_HelmetSpecB_blk","V_Rangemaster_belt","V_PlateCarrier2_rgr","V_RebreatherB","V_RebreatherB","V_TacVest_blk_POLICE","V_PlateCarrierIA1_dgtl"];
                vas_glasses = ["G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Sport_Checkered","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Aviator","G_Squares","G_Lowprofile","G_Combat","G_Diving"];
                vas_backpacks = ["B_Kitbag_cbr","B_FieldPack_cbr","B_AssaultPack_cbr","B_Bergen_sgg","B_Carryall_cbr","B_Bergen_blk"];		
                vas_magazines = ["16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_9x21_Mag","20Rnd_556x45_UW_mag","GrenadeHand_stone","30Rnd_45ACP_Mag_SMG_01","30Rnd_65x39_caseless_mag","5Rnd_127x108_Mag","SmokeShell","Chemlight_blue"];
        };
    };    
}
else{
    vas_weapons = [""];
    vas_items = [""];
    vas_glasses = [""];
    vas_backpacks = [""];
    vas_magazines = [""];
};

life_session_completed = true;