/*
	File: fn_tazeSound.sqf
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
[_source,"Tazersound"] call life_fnc_globalSound;