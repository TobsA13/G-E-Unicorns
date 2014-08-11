/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unprocessed Oil"};
	case "life_inv_oilp": {"Processed Oil"};
	case "life_inv_heroinu": {"Unprocessed Heroin"};
	case "life_inv_heroinp": {"Processed Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit Meat"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Breitrandschildkröten"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Water Bottle"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Fuel Can"};
	case "life_inv_fuelF": {"Full Fuel Can"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper Ore"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"Copper Ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salt"};
	case "life_inv_saltr": {"Refined Salt"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Diamond Uncut"};
	case "life_inv_diamondr": {"Diamond Cut"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Unprocessed Cocaine"};
	case "life_inv_cokep": {"Processed Cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_goldbar": {"Gold Bar"};
    case "life_inv_gummi": {"Gummibaerensaft"};	              
    case "life_inv_uturbo1": {"NOS Level: 1"};	              
    case "life_inv_uturbo2": {"NOS Level: 2"};	              
    case "life_inv_uturbo3": {"NOS Level: 3"};	              
    case "life_inv_ustorage1": {"kleiner Anhänger"};	          
    case "life_inv_ustorage2": {"grosser Anhänger"};	          
    case "life_inv_ustorage3": {"LKW Trailer"};	          
    case "life_inv_uspeed1": {"Turbolader Level: 1"};	              
    case "life_inv_uspeed2": {"Turbolader Level: 2"};	              
    case "life_inv_uspeed3": {"Turbolader Level: 3"};
    case "life_inv_udown1": {"Sportfahrwerk"};	              
    case "life_inv_udown2": {"Heckspolier"};	              
    case "life_inv_udown3": {"Frontspolier"};      
    case "life_inv_storagesmall": {"Small Storage Box"};
 	case "life_inv_storagebig": {"Large Storage Box"};
    case "life_inv_blackr": {"Schwefel"};
    case "life_inv_black": {"Schwarzpulver"};
    case "life_inv_platinr": {"Platinerz"};
    case "life_inv_platin": {"Platinbarren"};
    case "life_inv_turtleb": {"Schnappschildkröte"};
	
	//License Block
	case "license_civ_driver": {"Driver License"};
	case "license_civ_air": {"Pilot License"};
	case "license_civ_heroin": {"Heroin Training"};
	case "license_civ_gang": {"Gang License"};
	case "license_civ_oil": {"Oil Processing"};
	case "license_civ_dive": {"Diving License"};
	case "license_civ_boat": {"Boating License"};
	case "license_civ_gun": {"Firearm License"};
	case "license_cop_air": {"Pilot License"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Coast Guard"};
	case "license_civ_rebel": {"Rebel Training"};
	case "license_civ_truck": {"Truck License"};
	case "license_civ_diamond": {"Diamond Processing"};
	case "license_civ_copper": {"Copper Processing"};
	case "license_civ_iron": {"Iron Processing"};
	case "license_civ_sand": {"Sand Processing"};
	case "license_civ_salt": {"Salt Processing"};
	case "license_civ_coke": {"Cocaine Training"};
	case "license_civ_marijuana": {"Marijuana Training"};
	case "license_civ_cement": {"Cement Mixing License"};
	case "license_med_air": {"Pilot License"};
	case "license_civ_home": {"Home Owner License"};		//Hausing
	case "license_adac_air": {"Pilot License"};
	case "license_civ_blackwater": {"Blackwater Limited and Co.KG"};
	case "license_civ_kopfgeld": {"Kopfgeld Limited and Co.KG"};
	case "license_civ_inkasso": {"Inkasso GmbH"};
    case "license_civ_sparkasse": {"Sparkasse Altis Sued/West"};
    case "license_civ_asa": {"Altis Security Agency"};
    case "license_civ_home": {"Home Owners License"};
    case "license_civ_black": {"Schwarzpulver Rezept"};
    case "license_civ_platin": {"Platin License"};
};
