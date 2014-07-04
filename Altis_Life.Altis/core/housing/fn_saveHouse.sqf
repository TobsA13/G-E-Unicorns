/*
	File: fn_saveHouse.sqf
	Author: TobsA13
	
	Description:
	save all boxes of a house
*/
private["_house","_boxes"];
if(isNil "life_house_time") then {life_house_time = false;};
if(life_house_time) exitWith {hint "Du kannst nur alle 5 Minuten speichern!";};

hint "Dein Haus wurde gespeichert!";
_house = nearestObject [position player, "House_F"];
_boxes = _house getVariable ["boxes", []];

{

if(typeOf _x in ["B_supplyCrate_F","Land_Box_AmmoOld_F"]) then {
	_wc = getWeaponCargo _x;
	_mc = getMagazineCargo _x;
	_ic = getItemCargo _x;
	_bc = getBackpackCargo _x;
	[[_house, typeOf _x,[_wc, _mc, _ic, _bc]],"BRUUUDIS_fnc_updateHouseWeaponStorage",false,false] spawn life_fnc_MP;
};
}forEach _boxes;

[] spawn
{
	life_house_time = true;
	sleep (5 * 60);
	life_house_time = false;
};