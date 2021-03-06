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
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
            ["textures\brumbrums\med\blu_mohawk_co.jpg","med","textures\brumbrums\med\blu_mohawk2_co.jpg","textures\brumbrums\med\blu_mohawk3_co.jpg"],
            ["textures\brumbrums\adac\blu_mohawk_adac.jpg","adac","textures\brumbrums\adac\blu_mohawk2_adac.jpg","textures\brumbrums\adac\blu_mohawk3_adac.jpg"]
		];
	};
	
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
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
            ["textures\brumbrums\civ\Fire_hatchback.jpg","civ"],
            ["textures\brumbrums\civ\tuning.paa","civ"],
            ["textures\brumbrums\civ\bluesmile.paa","civ"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["textures\brumbrums\cop\police_offroad.jpg","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
            ["textures\brumbrums\adac\adac_offroad.jpg","adac"],
            ["textures\brumbrums\civ\ziv_offroad.jpg","civ"],
            ["textures\brumbrums\civ\rot-gelb.jpg","civ"],
            ["textures\brumbrums\civ\rot-lila.jpg","civ"],
            ["textures\brumbrums\cop\offroad_sek.jpg","cop"]
		];
	};
	
	case "B_G_Offroad_01_F":
	{
		_ret = 
		[
			["textures\brumbrums\reb\reb_offroad.jpg","reb"] 

		];
	};
	 
	case "B_G_Offroad_01_armed_F":
	{
		_ret = 
		[
			["textures\brumbrums\reb\reb_offroad.jpg","reb"] 

		];
	}; 
    
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
			["textures\brumbrums\civ\grandpa.paa","civ"],
			["textures\brumbrums\civ\sunsetHB.paa","civ"],
			["textures\brumbrums\civ\wave.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\brumbrums\cop\suv.jpg","cop"],
            ["textures\brumbrums\med\notarzt.jpg","med"],
            ["textures\brumbrums\civ\king_suv.jpg","civ"],
            ["textures\brumbrums\cop\Blut_police_suv.jpg","none"],
			["textures\brumbrums\civ\redline.jpg","civ"],
            ["textures\brumbrums\civ\carbon_suv_V3.jpg","civ"],
            ["textures\brumbrums\civ\superman.jpg","civ"],
            ["textures\brumbrums\civ\bimbo.paa","civ"],
            ["textures\brumbrums\civ\grandpa.paa","civ"],
            ["textures\brumbrums\civ\green.paa","civ"],
            ["textures\brumbrums\civ\oxygen.paa","civ"],
            ["textures\brumbrums\civ\sunset.paa","civ"],
            ["textures\brumbrums\civ\suv_Ghostrider.jpg","civ"],
            ["textures\brumbrums\civ\monster.jpg","civ"],
            ["textures\brumbrums\adac\adac_suv.jpg","adac"],
			["textures\brumbrums\cop\suv_sek.jpg","cop"],
            ["textures\brumbrums\cop\suvsup.jpg","cop"]
        ];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
            ["textures\brumbrums\med\rtw1.jpg","med","textures\brumbrums\med\rtw2.jpg"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["textures\brumbrums\cop\cop_quad1.jpg","cop","textures\brumbrums\cop\cop_quad2.jpg"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["textures\brumbrums\reb\reb_quad.jpg","reb"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","cop"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["textures\brumbrums\cop\police_heli.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["textures\brumbrums\reb\reb_littlebird.jpg","reb"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","blackwater"],
            ["#(argb,8,8,3)color(0.05,0.05,0.05,1)","blackwater"],
			["textures\brumbrums\civ\hellokitty_heli.jpg","civ"],
            ["textures\brumbrums\civ\monster2.jpg","civ"],
            ["textures\brumbrums\med\medic_littlebird.jpg","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["textures\brumbrums\cop\SEK_Hunter.jpg","cop","textures\brumbrums\cop\SEK_Hunterb.jpg"],
			["textures\brumbrums\cop\drogenfahndung_hunter.jpg","cop","textures\brumbrums\cop\SEK_Hunterb.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
    
	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[
			["textures\brumbrums\cop\hellcat_police.jpg","cop"]
		];
	};
	
	case "O_Truck_03_covered_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};
	
	case "B_Truck_01_ammo_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\brumbrums\reb\reb_ifrit1.jpg","reb","textures\brumbrums\reb\reb_ifrit2.jpg"],
			["textures\brumbrums\civ\blackwaterifrit.jpg","blackwater","textures\brumbrums\civ\blackwaterifrit2.jpg"],
            ["textures\brumbrums\cop\polizei_ifrit1.jpg","cop","textures\brumbrums\cop\polizei_ifrit2.jpg"],
            ["textures\brumbrums\cop\sek_ifrit1.jpg","cop","textures\brumbrums\cop\sek_ifrit2.jpg"]
		];
	};
	
	case "O_Truck_03_covered_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Truck_03_ammo_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
    case "O_Truck_03_covered_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
    case "B_Truck_01_transport_F":
	{
		_ret = 
		[
            ["\a3\soft_f_beta\truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\data\truck_01_ext_02_co.paa"],
		    ["textures\brumbrums\adac\adac_hemett_01.jpg","adac","textures\brumbrums\adac\adac_hemett_02.jpg"]
		];   
	};
    case "B_Truck_01_box_F":
	{
		_ret = 
		[
            
		    ["\a3\soft_f_beta\truck_01\data\truck_01_ext_01_co.paa","civ","\a3\soft_f_beta\truck_01\data\truck_01_ext_02_co.paa"]
		];   
	};
    
    case "I_Truck_02_box_F":
    {
        _ret = 
        [ 
            ["textures\brumbrums\cop\gef1.jpg","cop","textures\brumbrums\cop\gef2.jpg"]
        ];
    };
    
};

_ret;