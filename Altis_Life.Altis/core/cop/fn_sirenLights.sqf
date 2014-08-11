/*
	File: fn_sirenLights.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lets play a game! Can you guess what it does? I have faith in you, if you can't
	then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_color = [_this,1] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad entry!

_trueorfalse = _vehicle getVariable["lightson",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lightson",FALSE,TRUE];
} else {
	_vehicle setVariable["lightson",TRUE,TRUE];
	[[_vehicle,0.22,_color],"life_fnc_copLights",true,false] call life_fnc_MP;
};