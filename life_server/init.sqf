#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
DB_Async_Active = false;
DB_Async_ExtraLock = false;
life_server_isReady = false;
publicVariable "life_server_isReady";

//__CONST__(LIFE_SCHEMA_NAME,"'arma3life'");//CHANGE THIS IF YOUR DATABASE IS NOT CALLED ARMA3LIFE KEEP THE ' '

[] execVM "\life_server\functions.sqf";
[] execVM "\life_server\eventhandlers.sqf";

//I am aiming to confuse people including myself, ignore the ui checks it's because I test locally.
if(isNil {uiNamespace getVariable "life_sql_id"}) then {
	life_sql_id = round(random(9999));
	__CONST__(life_sql_id,life_sql_id);
	uiNamespace setVariable ["life_sql_id",life_sql_id];
} else {
	life_sql_id = uiNamespace getVariable "life_sql_id";
	__CONST__(life_sql_id,life_sql_id);
};

_version = "extDB" callExtension "9:VERSION";
if(_version == "") exitWith {life_server_extDB_notLoaded = true; publicVariable "life_server_extDB_notLoaded";};
 
//Initialize the database
"extDB" callExtension "9:DATABASE:Database2";
"extDB" callExtension format["9:ADD:DB_RAW:%1",(call life_sql_id)];
"extDB" callExtension "9:LOCK";

//Run procedures for SQL cleanup on mission start.
["CALL resetLifeVehicles",1] spawn DB_fnc_asyncCall;
["CALL deleteDeadVehicles",1] spawn DB_fnc_asyncCall;

["DELETE FROM houses WHERE owned='0'",1] spawn DB_fnc_asyncCall;

life_adminlevel = 0;
life_medicLevel = 0;
life_coplevel = 0;

//Null out harmful things for the server.
__CONST__(JxMxE_PublishVehicle,"No");

[] execVM "\life_server\fn_initHC.sqf";

life_radio_west = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_civ = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_indep = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_east = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
life_radio_alarm = radioChannelCreate [[0.9,0.11,0,0.8], "Notarzt Channel", "%UNIT_NAME", []];
life_radio_adac = radioChannelCreate [[0.92,0.96,0.01,0.8], "ADAC Channel", "%UNIT_NAME", []];

server_query_running = false;
life_DB_queue = [];
serv_sv_use = [];
fed_bank setVariable["fed_rob_ip",false,true];
fed_bank setVariable["fed_locked",false,true];


life_federal_funds = (count playableUnits) * 750; //Amount the federal reserve is funded.
life_animals_spawned = false;
life_animals_array = [];


//[] call compile preProcessFileLineNumbers "\life_server\SHK_pos\shk_pos_init.sqf"; Not currently used

_tempID = ["SERV_onClientDisconnect","onPlayerDisconnected","TON_fnc_clientDisconnect"] call BIS_fnc_addStackedEventHandler;

[] spawn TON_fnc_cleanup;
life_gang_list = [];
publicVariable "life_gang_list";
life_wanted_list = [];
client_session_list = [];

bank_obj setVariable["rob_in_sess",false,true];
robbery_success = 0;
publicVariable "robbery_success";

[] execFSM "\life_server\cleanup.fsm";

[] spawn
{
	private["_logic","_queue"];
	while {true} do
	{
		sleep (30 * 60);
		_logic = missionnamespace getvariable ["bis_functions_mainscope",objnull];
		_queue = _logic getvariable "BIS_fnc_MP_queue";
		_logic setVariable["BIS_fnc_MP_queue",[],TRUE];
	};
};

fnc_serv_kick = {endMission "loser";};
publicVariable "fnc_serv_kick";

//Server-side functions that need to be sent out.
publicVariable "TON_fnc_addVehicle2Chain";
publicVariable "life_fnc_fedSuccess";

[] spawn TON_fnc_federalUpdate;

[] spawn
{
	while {true} do
	{
		sleep (30 * 60);
		{
			_x setVariable["sellers",[],true];
		} foreach [Dealer_1,Dealer_2,Dealer_3];
	};
};

//Strip NPC's of weapons
{
	if(!isPlayer _x) then {
		_npc = _x;
		{
			if(_x != "") then {
				_npc removeWeapon _x;
			};
		} foreach [primaryWeapon _npc,secondaryWeapon _npc,handgunWeapon _npc];
	};
} foreach allUnits;

[] spawn TON_fnc_initHouses;

life_server_isReady = true;
publicVariable "life_server_isReady";

if (isServer) then {														//Maping start
call compile preProcessFileLineNumbers "\life_server\map\map1.sqf";
};

if (isServer) then {
call compile preProcessFileLineNumbers "\life_server\map\copbase.sqf";
};

if (isServer) then {
call compile preProcessFileLineNumbers "\life_server\map\map1_carspawn.sqf";
};

if (isServer) then {
call compile preProcessFileLineNumbers "\life_server\map\cop.sqf";
};				//Maping Ende
                                                        