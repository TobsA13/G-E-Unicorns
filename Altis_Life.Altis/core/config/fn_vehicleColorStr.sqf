/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
            case 9: {_color = "ADAC"};
            case 10: {_color = "Unicorn"};
            case 11: {_color = "Rockstar Gelb";};
            case 12: {_color = "Rockstar Lila";};
            case 13: {_color = "SEK";};
            case 14: {_color = "FTP";};
		};
	};
	
    case "B_G_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "FTP";};			
		};
	};
	
    case "B_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "FTP";};		
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Opa"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Wave"};          
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
            case 7: {_color = "Fire"};
            case 8: {_color = "Tuning"};
			case 9: {_color = "Blue Smile"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Cop";};
            case 4: {_color = "Medic";};
            case 5: {_color = "King";};
            case 6: {_color = "Blut";};
			case 7: {_color = "Redline";};
            case 8: {_color = "Carbon";};
            case 9: {_color = "Superman";};
            case 10: {_color = "Bimbo";};
            case 11: {_color = "Opa";};
            case 12: {_color = "Toxic";};
            case 13: {_color = "O2";};
            case 14: {_color = "Sunset";};
            case 15: {_color = "Ghostrider";};
            case 16: {_color = "Monster";};
            case 17: {_color = "ADAC";};
            case 18: {_color = "SEK";};
            case 19: {_color = "ServerSUP";};
        };
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
            case 2: {_color = "RTW"};
		};
	};
	
    case "I_Truck_02_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Transporter"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Ordnungsa."};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "FTP"};
            case 9: {_color = "Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Cop"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "FTP"};
            case 14: {_color = "Digital"};
            case 15: {_color = "Schwarz"};
            case 16: {_color = "Hello Kitty"};
            case 17: {_color = "Monster"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Drogenfahndung"};
			case 2: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Überwachung"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
            case 2: {_color = "Medic"};
            case 3: {_color = "ADAC"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Truck_03_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	
	case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{	
			case 0: {_color = "FTP"};
			case 1: {_color = "Blackwater"};
            case 2: {_color = "Polizei"};
            case 3: {_color = "SEK"};
		};
	};
	
	case "O_Truck_03_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
            case 0: {_color = "Ziv"};
			case 1: {_color = "ADAC"};
		};
	};
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
            case 0: {_color = "Ziv"};
		};
	};
};

_color;