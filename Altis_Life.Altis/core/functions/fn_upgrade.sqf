/*
	File: fn_clearVehicleAmmo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Clears the vehicle of ammo types that we don't want.
*/

if(player == vehicle player) exitWith {hint "Bitte steige in dein Auto ein!"};
if(driver vehicle player != player) exitWith {hint "Du must der Fahrer sein!"};
_item = [_this,0,"",[""]] call BIS_fnc_param;
switch(_item) do{
                       //Mindest Level,donator,Type,para
    case("uturbo1"): {};

};