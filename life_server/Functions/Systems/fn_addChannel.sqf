
private["_unit","_bool","_side"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_side = [_this,1,civilian,[west]] call BIS_fnc_param;

if(isNull _unit) exitWith {};
diag_log "::TEST";
switch (_side) do
{
	case west:
	{
		life_radio_alarm radioChannelAdd [_unit];
        life_radio_adac radioChannelAdd [_unit];
	};
	
	
	
	case independent:
	{
		life_radio_alarm radioChannelAdd [_unit];
	};
	
	case east:
	{
		life_radio_adac radioChannelAdd [_unit];
	};	
};


