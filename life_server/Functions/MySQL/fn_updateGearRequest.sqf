/*
	File: fn_updateRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ain't got time to describe it, READ THE FILE NAME!
*/
private["_uid","_side","_cash","_bank","_licenses","_gear","_name","_query","_thread"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_gear = [_this,2,[],[[]]] call BIS_fnc_param;

//Get to those error checks.
if(_uid == "") exitWith {};

//Parse and setup some data.
_gear = [_gear] call DB_fnc_mresArray;


switch (_side) do {
	case west: {_query = format["UPDATE players SET cop_gear='%1'WHERE playerid='%2'",_gear,_uid];};
	case civilian: {_query = format["UPDATE players SET civ_gear='%1' WHERE playerid='%2'",_gear,_uid];};
	case independent: {_query = format["UPDATE players SET medic_gear='%1'  WHERE playerid='%2'",_gear,_uid];};
	case east: {_query = format["UPDATE players SET asadac_gear='%1'  WHERE playerid='%2'",_gear,_uid];};
};

waitUntil {sleep (random 0.3); !DB_Async_Active};
_thread = [_query,false] call DB_fnc_asyncCall;