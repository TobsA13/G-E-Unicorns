#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Uniform",0]];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","SEK",0]];
		};
	};
	
	//Hats
	case 1:
	{
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,0]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,0]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,0]];
            _ret set[count _ret,["H_HelmetSpecB_blk",nil,0]];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0],
            ["G_Diving",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =[
            ["V_Rangemaster_belt",nil,0],
            ["V_PlateCarrier2_rgr",nil,0],
            ["V_RebreatherB",nil,0],
            ["V_PlateCarrier1_blk",nil,0],
            ["V_TacVest_blk_POLICE",nil,0],
            ["V_PlateCarrierIA1_dgtl",nil,0]
       ];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,0],
			["B_FieldPack_cbr",nil,0],
			["B_AssaultPack_cbr",nil,0],
			["B_Bergen_sgg",nil,0],
			["B_Carryall_cbr",nil,0],
			["B_Bergen_blk",nil,0]
		];
	};
};

_ret;