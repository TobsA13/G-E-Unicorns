private ["_Vehicle", "_Value", "_Offset"];

_Vehicle = _this select 0;
_Value = _this select 1;
_Offset = _this select 2;

_Vehicle setVariable ["Classification", _Value];

if (_Value < 1) exitWith {}; 

_Vehicle setVariable ["AttachedVehicle", objNull];
_Vehicle setVariable ["AttachOffset", _Offset];

_Vehicle addAction ["<t color='#1A44F9'>Attach</t>", "scripts\transport\attach.sqf", [_Vehicle], 1, false, true, "", "isPlayer driver _target && isNull(_target getVariable ""AttachedVehicle"") && !isNull(driver _target getVariable ""CurrentTarget"") && playerSide == east"];
_Vehicle addAction ["<t color='#980827'>Detach</t>", "scripts\transport\detach.sqf", [_Vehicle], 1, false, true, "", "!isNull(_target getVariable ""AttachedVehicle"") && playerSide == east"];

_Vehicle addEventHandler ["GetOut", { if (_this select 1 == "driver") then { [(_this select 0)] execVM "scripts\transport\detach.sqf"; }}];
_Vehicle addEventHandler ["GetIn", { if (_this select 1 == "driver") then { [(_this select 0)] execVM "scripts\transport\detach.sqf"; }}];
