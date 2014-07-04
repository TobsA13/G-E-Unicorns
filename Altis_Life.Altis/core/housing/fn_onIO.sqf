/*
	File: fn_onIO.sqf
	Author: TobsA13
	
	Description:
	gets called when a player is opening a container
*/
private["_unit", "_house"];

_unit = [_this,0] call BIS_fnc_param;
_house = nearestObject [position player, "House_F"];

if((_house getVariable["storage_locked", 1]) == 0 OR side _unit == west) then {
false;
}else{
hint "Diese Kiste ist Verschlossen! Du kannst sie nicht öffnen!";
true;
};
