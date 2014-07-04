#include <macro.h>
/*
	File: fn_unimpound.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Yeah... Gets the vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price","_adacmarkers"];
disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;
_adacmarkers = ["adac_ver_1","adac_ver_2","adac_ver_3"];

if(isNil "_vehicle") exitWith {hint "The selection had a error..."};

_price = [_vehicle,__GETC__(life_garage_prices)] call fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_prices) select _price) select 1;};
if(life_atmcash < _price && playerSide in [east,civilian]) exitWith {hint format[(localize "STR_Garage_CashError"),[_price] call life_fnc_numberText];};
if(life_atmcash < 10000 && life_garage_sp in _adacmarkers && playerSide in [east,civilian]) exitWith {hint "Du hast nicht genügend Geld um den ADAC zu bezahlen. Du brauchst 10000$!";};

[[_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price],"TON_fnc_spawnVehicle",false,false] spawn life_fnc_MP;
hint localize "STR_Garage_SpawningVeh";

if(playerSide in [east,civilian]) then {
life_atmcash = life_atmcash - _price;
};
if(life_garage_sp in _adacmarkers)then{
if(playerSide in [east,civilian]) then {
titletext["Dir wurden 10000$ Abschleppkosten abgezogen. Vielen Dank ihr ADAC","PLAIN"];
life_atmcash = life_atmcash - 10000;

[[1,format["Du hast 10000 erhalten, da %1 sein Auto ausgelöst hat!",player getVariable["realname",name player]]],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
[[10000],"life_fnc_getMoney",east, false] spawn BIS_fnc_MP;
};
};



