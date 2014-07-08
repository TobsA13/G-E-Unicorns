/*
	File: fn_gummi.sqf
	Author: TobsA13
	
	Description:
	Gummibaeren huepfen hier und dort und ueberall
*/
private["_item"];
if(isNil "life_gummi_time") then {life_gummi_time = false;};
if(life_gummi_time) exitWith {hint "Du bist schon ein Gummibear!";};

_item = [_this,0,"",[""]] call BIS_fnc_param;

if(vehicle player != player) exitWith{hint "Du kannst kein Gummibaer in einem Fahrzeug sein!";};
if(life_upgrade_gummi) exitWith {hint "Du bist schon eine Gummibaer!";};
life_gummi_time = true;

titleText["Gummibaeren huepfen hier und dort und ueberall!","PLAIN"];

if(([false,_item,1] call life_fnc_handleInv)) then{
life_jumphight = 6.82;
_hndl1 = ppEffectCreate ["colorCorrections", 1501];
_hndl2 = ppEffectCreate ["RadialBlur", 1502];
_hndl3 = ppEffectCreate ["ColorInversion", 1503];

_hndl1 ppEffectAdjust[ 0.85, 0.83, 0, [0, 0, 0, 0],[5, 1.39, 0.81, 0.7],[0.2, 0.59, 0.52, 0.92]];
_hndl2 ppEffectAdjust[0.01, 0, 0.32, 0.5];
_hndl3 ppEffectAdjust[0, 0.41, 0];

_hndl1 ppEffectForceInNVG true;
_hndl2 ppEffectForceInNVG true;
_hndl3 ppEffectForceInNVG true;

_hndl1 ppEffectCommit 3;
_hndl2 ppEffectCommit 4;
_hndl3 ppEffectCommit 5;

_hndl1 ppEffectEnable true;
_hndl2 ppEffectEnable true;
_hndl3 ppEffectEnable true;


[_hndl1,_hndl2,_hndl3] spawn {
    _hndl1 = [_this,0] call BIS_fnc_param;
    _hndl2 = [_this,1] call BIS_fnc_param;
    _hndl3 = [_this,2] call BIS_fnc_param;
    
    sleep 180;
    life_jumphight = 3.82;
    _hndl1 ppEffectAdjust[ 0.9, 0.9, 0, [0, 0, 0, 0],[1.8, 1.8, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
    _hndl2 ppEffectAdjust[0, 0, 0, 0];
    _hndl3 ppEffectAdjust[0, 0, 0];
    
    _hndl1 ppEffectCommit 3;
    _hndl2 ppEffectCommit 4;
    _hndl3 ppEffectCommit 5;
    life_gummi_time = false;
    sleep 5;
    ppEffectDestroy _hndl1;
    ppEffectDestroy _hndl2;
    ppEffectDestroy _hndl3;

};
}else{hint "Fucked!";};