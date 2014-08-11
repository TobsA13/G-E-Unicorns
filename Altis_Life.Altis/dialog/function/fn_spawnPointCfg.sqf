#include <macro.h>
/*
File: fn_spawnPointCfg.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for available spawn points depending on the units side.

Return:
[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_mkName","_mk"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{

    _markers = [];



    case west:
    {
        _markers = _markers + [
        ["cop_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
        ["cop_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
        ["cop_spawn_3","Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
        ["cop_spawn_4","Flughafen","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
        ["cop_spawn_5","Autobahn","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
        ["cop_spawn_6","Küstenwache","\a3\ui_f\data\map\MapControl\quay_ca.paa"]
        ];
    };
    
    case civilian:
    {   
        //if(!life_respawned2) then {
        //    if(count life_ses_last_pos > 2) then {
        //        _mkName = "last_spawnpos_marker";
        //        createMarkerLocal [_mkName, life_ses_last_pos];
        //        _markers set [count _markers, [_mkName, format ["Letzter Ort"], "\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
        //    };
        //};
        
        _markers = _markers + [
            ["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
        ];
            
        if(__GETC__(life_donator) != 0) then{
            _markers set [count _markers, ["civ_spawn_8","Donator Kavalla","textures\server\don.paa"]];
            _markers set [count _markers, ["civ_spawn_9","Donator Telos","textures\server\don.paa"]];
            _markers set [count _markers, ["civ_spawn_10","Donator Sofia","textures\server\don.paa"]]; 
        };
        if(license_civ_rebel) then {
            _markers set [count _markers, ["civ_spawn_5","Rebellen Bezirk","textures\server\head.paa"]];
            //_markers set [count _markers, ["civ_spawn_6","Rebellen S","textures\server\head.paa"]];
            _markers set [count _markers, ["civ_spawn_7","Rebellen Außenp.","textures\server\head.paa"]];       
        };
        
        if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_markers set[count _markers,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};
    };

    case independent: 
    {
        _markers = [
            ["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
            ["medic_spawn_2","Athira Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
            ["medic_spawn_3","Pygros Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
        ];
    };
    
    case east: 
    {
        _markers = [
            ["adac_spawn_1","ADAC Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["adac_spawn_2","ADAC Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["adac_spawn_3","ADAC Pygros","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
        ];
    };
};
_markers;