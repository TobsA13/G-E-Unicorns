_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_caller removeAction _id;


_ltcolor = (_this select 3) select 0;

            _lgt = _ltcolor createVehicle [0,0,0];
            _lgt attachTo [_caller, [0,-0.03,0.07], "LeftShoulder"];
            _caller setvariable ["lgtarray", _lgt,true];


if (_ltcolor =="Chemlight_Green") then {
        actionGreenOff = _caller addAction["<t color='#30fd07'>Chemlight OFF</t>", "ATM_airdrop\atm_chem_off.sqf",[_ltcolor],6,false,false,"", "_target == ( player)"];
        _caller removeaction GreenOn;
        };

		while {(getPos _caller select 2) > 2} do {

	if(getPos _caller select 2 < 3) then{
        if (_ltcolor =="Chemlight_Green") then {
        _caller removeaction actionGreenOff;
        };
	}
	};