/*
	File:
*/
private["_packet"];
_packet = [getPlayerUID player];

switch (playerSide) do {
	case west: {
        [] call life_fnc_saveGear;
        _packet set[count _packet,cop_gear];
    };
	case civilian: {
		[] call life_fnc_civFetchGear;
		_packet set[count _packet,civ_gear];
	};
	case east: {
		[] call life_fnc_asadacSaveGear;
		_packet set[count _packet,asadac_gear];
	};
	case independent:{
			[] call life_fnc_medicSaveGear;
			_packet set[count _packet,medic_gear];
	}
};


[_packet,"DB_fnc_updateGearRequest",false,false] spawn life_fnc_MP;