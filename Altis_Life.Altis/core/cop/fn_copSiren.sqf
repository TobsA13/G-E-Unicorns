/*
	File: fn_copSiren.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the cop siren sound for other players
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_sound = [_this,1,"SirenLong",[""]] call BIS_fnc_param;
_l = [_this,2,1.38,[0]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "sirenall"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "sirenall")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["sirenall",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D _sound;
	sleep _l;
	if(!(_vehicle getVariable "sirenall")) exitWith {};
};