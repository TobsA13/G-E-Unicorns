/*
	File: fn_receiveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Receives money
*/
private["_unit","_val","_from"];
_val = [_this,0,0] call BIS_fnc_param;
life_atmcash = life_atmcash + _val;
