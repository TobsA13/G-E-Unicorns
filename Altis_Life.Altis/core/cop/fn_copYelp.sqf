private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};

    if(count (crew (_vehicle)) == 0) exitWith {};
    if(!alive _vehicle) exitWith {};
    _vehicle say3D "Yelp";