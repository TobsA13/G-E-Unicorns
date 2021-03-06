
private["_uid","_side","_cash","_bank","_licenses","_gear","_name","_query","_thread"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_side = [_this,2,sideUnknown,[civilian]] call BIS_fnc_param;
_cash = [_this,3,0,[0]] call BIS_fnc_param;
_bank = [_this,4,5000,[0]] call BIS_fnc_param;
_licenses = [_this,5,[],[[]]] call BIS_fnc_param;
_gear = [_this,6,[],[[]]] call BIS_fnc_param;
_position = [_this,7,[],[[]]] call BIS_fnc_param;

//Get to those error checks.
if((_uid == "") OR (_name == "")) exitWith {};

//Parse and setup some data.
_name = [_name] call DB_fnc_mresString;
_gear = [_gear] call DB_fnc_mresArray;
_cash = [_cash] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;
_position = [_position] call DB_fnc_mresArray;

//Does something license related but I can't remember I only know it's important?
for "_i" from 0 to count(_licenses)-1 do {
	_bool = [(_licenses select _i) select 1] call DB_fnc_bool;
	_licenses set[_i,[(_licenses select _i) select 0,_bool]];
};

_licenses = [_licenses] call DB_fnc_mresArray;

switch (_side) do {
	case west: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', cop_gear='%4', cop_licenses='%5' WHERE playerid='%6'",_name,_cash,_bank,_gear,_licenses,_uid];};
	case civilian: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', civ_licenses='%4', civ_gear='%6', arrested='%7' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid,_gear,[_this select 8] call DB_fnc_bool];}; //	case civilian: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', civ_licenses='%4', civ_gear='%6', arrested='%7', lastposition='%8' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid,_gear,[_this select 8] call DB_fnc_bool,_position];};
	case independent: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', med_licenses='%4' , medic_gear='%5' WHERE playerid='%6'",_name,_cash,_bank,_licenses,_gear,_uid];};
	case east: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', asadac_licenses='%4', asadac_gear='%5' WHERE playerid='%6'",_name,_cash,_bank,_licenses,_gear,_uid];};
};

waitUntil {sleep (random 0.3); !DB_Async_Active};
_thread = [_query,1] call DB_fnc_asyncCall;