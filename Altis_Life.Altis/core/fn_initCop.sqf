#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
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
        disableUserInput true;
        ["agb",false,true] call BIS_fnc_endMission;
        sleep 35;
};
rulesok = nil;

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

//Coptags
private["_getRank"];
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; case 7: {7}; case 8: {8}; case 9: {9}; case 10: {10}; case 11: {11}; case 12: {12}; default {0};};
player setVariable["coplevel",_getRank,TRUE];

//Nur 4 Rounds im Tazer
[] spawn
{
    sleep 3;
    _curWepn = currentWeapon player;
    _ammocout = player ammo _curWepn;
      if(_curWepn in ["hgun_P07_snds_F"] && _ammocout > 4) then {
        player setAmmo [_curWepn, 4];
      };
    player addEventHandler ["take", {
    _curWepn = currentWeapon player;
      if(_curWepn in ["hgun_P07_snds_F"]) then {
        player setAmmo [_curWepn, 4];
      };
    }];
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
player setObjectTextureGlobal [0,"textures\skins\SEK_fertig.jpg"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\skins\pol.jpg"];
waitUntil {uniform player != "U_Rangemaster"};
};
};