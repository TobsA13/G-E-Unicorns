
{
	//If owner is 1 or 0 then it's owned by the server, clean them up.
	if(owner _x < 2) then {
		_containers = nearestObjects[_x,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
		{deleteVehicle _x;} foreach _containers; //Delete the containers.
		deleteVehicle _x; //Get rid of the corpse.
	};
} foreach allDeadMen;

_uid spawn TON_fnc_houseCleanup;