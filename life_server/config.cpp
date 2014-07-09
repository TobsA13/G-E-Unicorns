class DefaultEventhandlers;
class CfgPatches 
{
	class life_server
	{
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"TAW_Tonic"}; 
	};
};

class CfgFunctions
{
	class BIS_Overwrite
	{
		tag = "BIS";
		class MP
		{
			file = "\life_server\Functions\MP";
			class initMultiplayer{};
			class call{};
			class spawn{};
			class execFSM{};
			class execVM{};
			class execRemote{};
			class addScore{};
			class setRespawnDelay{};
			class onPlayerConnected{};
			class initPlayable{};
			class missionTimeLeft{};
		};
	};
	
	class MySQL_Database
	{
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class insertVehicle {};
			class bool{};
			class mresString {};
            class updateGearRequest{};
		};
	};
	
	class Life_System
	{
		tag = "life";
		class Wanted_Sys
		{
			file = "\life_server\Functions\WantedSystem";
			class wantedFetch {};
			class wantedPerson {};
			class wantedBounty {};
			class wantedTicket {};
			class wantedPardon {};
			class wantedRemove {};
			class wantedAdd {};
			class wantedPunish {};
		};
		
		class Jail_Sys
		{
			file = "\life_server\Functions\Jail";
			class jailSys {};
            class jailTimer {};
			class jailPlayer {};
		};
		
		class Client_Code
		{
			file = "\life_server\Functions\Client";
			class safeOpen {};
			class safeInventory {};
			class safeTake {};
			class safeStore {};
		};
	};
	class TON_System
	{
		tag = "TON";
		class Systems
		{
			file = "\life_server\Functions\Systems";
			class managesc {};
            class addChannel {};
			class cleanup {};
			class timeStamp {};
			class huntingZone {};
			class getID {};
			class vehicleCreate {};
			class vehicleDead {};
			class spawnVehicle {};
			class getVehicles {};
			class vehicleStore {};
			class vehicleDelete {};
			class spikeStrip {};
			class robReserve {};
			class robberyState {};
			class logIt {};
			class federalUpdate {};
			class chopShopSell {};
			class silentSync {};
			class clientDisconnect {};
			class cleanupRequest {};
			class vehicleDeleteCOP {};
		};
        class Housing
        {
            file = "\life_server\Functions\Housing";
            class addHouse {};
            class fetchPlayerHouses {};
            class initHouses {};
            class sellHouse {};
            class updateHouseContainers {};
            class updateHouseTrunk {};
            class houseCleanup {};
        };
    };
};

class CfgVehicles
{
	class Car_F;
	class CAManBase;
	class Civilian;
	class Civilian_F : Civilian
	{
		class EventHandlers;
	};
	
	class C_man_1 : Civilian_F
	{
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) execVM ""\life_server\fix_headgear.sqf""";
		};
	};
};