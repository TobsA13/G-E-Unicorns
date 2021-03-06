
private["_uid","_side","_query","_return","_queryResult","_qResult","_handler","_thread","_tickTime","_loops","_returnCount"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_ownerID = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _ownerID) exitWith {};
_ownerID = owner _ownerID;

_query = switch(_side) do {
	case west: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, cop_licenses, coplevel, cop_gear, blacklist FROM players WHERE playerid='%1'",_uid];};
	case civilian: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, civ_licenses, arrested, civ_gear FROM players WHERE playerid='%1'",_uid];}; //, lastposition
	case independent: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, med_licenses, mediclevel, medic_gear FROM players WHERE playerid='%1'",_uid];};
	case east: {format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, asadac_licenses, asadaclevel, asadac_gear FROM players WHERE playerid='%1'",_uid];};
};

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];

if(typeName _queryResult == "STRING") exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

if(count _queryResult == 0) exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

private["_tmp"];
_tmp = _queryResult select 2;
_queryResult set[2,[_tmp] call DB_fnc_numberSafe];
_tmp = _queryResult select 3;
_queryResult set[3,[_tmp] call DB_fnc_numberSafe];

//Parse licenses (Always index 6)
_new = [(_queryResult select 6)] call DB_fnc_mresToArray;
if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[6,_new];

//Convert tinyint to boolean
_old = _queryResult select 6;
for "_i" from 0 to (count _old)-1 do
{
	_data = _old select _i;
	_old set[_i,[_data select 0, ([_data select 1,1] call DB_fnc_bool)]];
};

_queryResult set[6,_old];
//Parse data for specific side.
switch (_side) do {
	case west: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
        _queryResult set[9,([_queryResult select 9,1] call DB_fnc_bool)];
	};

	case civilian: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
        _queryResult set[7,([_queryResult select 7,1] call DB_fnc_bool)]; 
        //_new = [(_queryResult select 9)] call DB_fnc_mresToArray;
		//if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
        //_queryResult set[10,_new];
        _houseData = _uid spawn TON_fnc_fetchPlayerHouses;
		waitUntil {scriptDone _houseData};
		_queryResult set[9,(missionNamespace getVariable[format["houses_%1",_uid],[]])];
        								

	};
	case east: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
	};
	
	case independent: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
	};
	
};
diag_log format["Endresult: %1",_queryResult];
diag_log "------------------------------------------------";
[_queryResult,"SOCK_fnc_requestReceived",_ownerID,false] spawn life_fnc_MP;
