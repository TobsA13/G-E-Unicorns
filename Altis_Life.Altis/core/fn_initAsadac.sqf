#include <macro.h>
/*
	File: fn_initasadac.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player setVariable["handyblock",FALSE,TRUE];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_asadaclevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

diag_log "::Life Client:: Creating AGB Dialog";
// AGB
rulesok = false;
if(!createDialog "AGB") exitWith {};
waitUntil{!isNull (findDisplay 32154)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 32154)}; //Wait for the spawn selection to be done.
if(!rulesok)then {		
        player enableSimulation false;
        ["agb",false,true] call BIS_fnc_endMission;
        sleep 35;
};
rulesok = nil;


[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_O_OfficerUniform_ocamo"};
player setObjectTextureGlobal [0,"textures\skins\adac_uniform.jpg"];
waitUntil {uniform player != "U_O_OfficerUniform_ocamo"};
};
};