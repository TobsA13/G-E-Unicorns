/*
        File: fn_repairTruck.sqf
        Author: Bryan "Tonic" Boardwine
 
        Description:
        Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName","_killit"];
_veh = cursorTarget;
_killit = false;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh getHitPointDamage "HitEngine" > 0.70) || (_veh getHitPointDamage "HitFuel" > 0.70) || (_veh getHitPointDamage "HitBody" > 0.70)) then {
if(!((getMarkerPos "adac_ver_1" distance player < 20) || (getMarkerPos "adac_ver_2" distance player < 20) || (getMarkerPos "adac_ver_3" distance player < 20))) exitWith{titleText["Das Fahrzeug ist zu stark zerstört um es hier zu Reparieren. Du musst in eine Werkstatt!","PLAIN"]; _killit = true;};
if(playerSide != east) exitWith{titleText["Du musst schon vom ADAC sein um das Auto noch zu reparieren!","PLAIN"]; _killit = true;};
};
if(_killit) exitwith {};
if(playerSide != east)then{
if((_veh getHitPointDamage "HitEngine" > 0.30) || (_veh getHitPointDamage "HitFuel" > 0.30) || (_veh getHitPointDamage "HitBody" > 0.30)) exitWith {titleText["Dein Fahrzeug ist zu stark zerstört um es mit einen Toolkit zu reparieren. Du brauchst den ADAC","PLAIN"]; _killit = true;};
};
if(_killit) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
        if("ToolKit" in (items player)) then
        {
                life_action_inUse = true;
                _displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
                _upp = format["Repairing %1",_displayName];
                //Setup our progress bar.
                disableSerialization;
                5 cutRsc ["life_progress","PLAIN"];
                _ui = uiNameSpace getVariable "life_progress";
                _progress = _ui displayCtrl 38201;
                _pgText = _ui displayCtrl 38202;
                _pgText ctrlSetText format["%2 (1%1)...","%",_upp];
                _progress progressSetPosition 0.01;
                _cP = 0.01;
 
                while{true} do
                {
                        if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
                                [[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
                                player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
                        };
                        sleep 0.27;
                        _cP = _cP + 0.01;
                        _progress progressSetPosition _cP;
                        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
                        if(_cP >= 1) exitWith {};
                        if(!alive player) exitWith {};
                        if(player != vehicle player) exitWith {};
                        if(life_interrupted) exitWith {};
                };
 
                life_action_inUse = false;
                5 cutText ["","PLAIN"];
                player playActionNow "stop";
                if(life_interrupted) exitWith {life_interrupted = false; titleText["Action cancelled","PLAIN"]; life_action_inUse = false;};
                if(player != vehicle player) exitWith {titleText["You must be outside of the vehicle to fix it. Sorry that this prevents you from exploiting the system, well not really.","PLAIN"];};
                player removeItem "ToolKit";
                _veh setDamage 0;
                titleText["You have repaired that vehicle.","PLAIN"];
        };
};