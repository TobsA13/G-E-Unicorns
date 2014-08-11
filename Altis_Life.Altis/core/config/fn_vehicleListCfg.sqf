#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_SUV_01_F",0],
            ["C_Van_01_box_F",0]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",0]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",11500],
			["C_Offroad_01_F",15500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",400000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",890000]];
		};
	};
	
	case "cop_car":
	{   
        _return = [["B_Quadbike_01_F",0]];
        if(__GETC__(life_coplevel) > 1) then
        {
            _return set[count _return,["C_Offroad_01_F",0]];
            _return set[count _return,["C_SUV_01_F",0]]; 
            _return set[count _return,["I_Truck_02_box_F",0]];
        };
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,["B_MRAP_01_F",0]];
		};	
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,["O_MRAP_02_F",0]];
		};
        if(__GETC__(life_coplevel) > 9) then
		{
			_return set[count _return,["B_MRAP_01_hmg_F",0]];
		};
       
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",1000000]
		];
	};
	
	case "cop_air":
	{
        if(__GETC__(life_coplevel) > 2) then {
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
        };
        if(__GETC__(life_coplevel) > 4) then {
		_return set[count _return,["I_Heli_light_03_unarmed_F",0]];
        };
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",0]];
		};
	};
	
	case "cop_airhq":
	{
        if(__GETC__(life_coplevel) > 2) then {
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
        };
        if(__GETC__(life_coplevel) > 4) then {
		_return set[count _return,["I_Heli_light_03_unarmed_F",0]];
        };
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",0]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",110000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",0],
			["C_Boat_Civil_01_police_F",0],
			["B_Boat_Armed_01_minigun_F",0],
			["B_SDV_01_F",0]
		];
	};
	case "adac_car":
	{
		_return =
		[
			["B_Truck_01_transport_F",10000],
			["C_Offroad_01_F",3500]//,
			//["C_SUV_01_F",5000]//
            //["B_Truck_01_mover_F",25000]
		];
	};
	
	case "adac_air":
	{
		_return =		
		[			
			["I_Heli_Transport_02_F",15000]
		];
	};
	
	case "blackwater":
	{
		_return =
		[
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",50000]
		];
		
		if(license_civ_blackwater) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "kopfgeld":
	{
		_return =
		[
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",50000],
			["C_SUV_01_F",35000]
		];
		
		if(license_civ_kopfgeld) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "inkasso":
	{
		_return =
		[
			["C_SUV_01_F",35000],
			["B_MRAP_01_F",30000],
			["O_Truck_03_device_F",450000]
		];		
	};
	
	case "donator":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",75000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500],
			["O_Truck_03_device_F",450000],
			["B_Truck_01_box_F",750000],
            ["I_Heli_Transport_02_F",1200000]
		];	
	};
	
};

_return;
