/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_vis","_pos","_near","_name","_icon","_width","_height","_color"];
_near = getPos player nearEntities ["Man",35];
{
    if(player distance _x < 20 && isPlayer _x && _x != player) then
    {
        _vis = lineIntersects [eyePos player, eyePos _x,player, _x];
        if(!_vis) then
        {
            _pos = visiblePosition _x;
            _pos set[2,(getPosATL _x select 2) + 2.2];
			_width = 0.7;
			_height = 0.7;
            _name = _x getVariable["realname",name _x]; _icon = ""; _width = 0; _height = 0;_color = [1,1,1,0.7];
            if(_x getVariable["donatortag", FALSE]) then {_color = [0.4,1,0.35,0.7];};
			switch (_x getVariable["coplevel", 0]) do
			{
				case (1) : {_name = format["PMAnw %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\1.paa"; _color = [1,1,1,0.7]; _width = 0.7; _height = 0.7;};
				case (2) : {_name = format["PM %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\2.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 0.7;};
                case (3) : {_name = format["POM %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\3.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};					
				case (4) : {_name = format["PHM %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\4.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};
				case (5) : {_name = format["PK %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\5.paa"; _color = [1,1,1,0.7]; _width = 0.7; _height = 0.7;};
				case (6) : {_name = format["POK %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\6.paa"; _color = [1,1,1,0.7];_width = 1.4; _height = 0.7;};
				case (7) : {_name = format["PHK %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\7.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};
                case (8) : {_name = format["EPHK %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\8.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};
                case (9) : {_name = format["PR %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\9.paa"; _color = [1,1,1,0.7]; _width = 0.7; _height = 0.7;};
                case (10) : {_name = format["POR %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\10.paa"; _color = [1,1,1,0.7];_width = 1.4; _height = 0.7;};
                case (11) : {_name = format["PD %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\11.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};
                case (12) : {_name = format["Ltd. PD %1", _x getVariable["realname",name _x]]; _icon = MISSION_ROOT + "textures\polizeiabzeichen\12.paa"; _color = [1,1,1,0.7]; _width = 1.4; _height = 1.4;};
                default {_name = _x getVariable["realname",name _x]; _icon = ""; _width = 0; _height = 0; _color = [1,1,1,0.7];}
			};
            

            if(side _x == resistance) then{_name = format["Notarzt %1", _x getVariable["realname",name _x]]; _color = [0.99,0.29,0.24,0.7];};
            if(side _x == east) then {_name = format["ADAC %1", _x getVariable["realname",name _x]]; _color = [0.97,0.97,0.12,0.7];};
            if(_x getVariable["admintag", FALSE]) then {_name = format["[A] %1", _name];};
            /*if (_x getVariable["coplevel", 0] > 0) then
			{
				_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
			};*/
            drawIcon3D [_icon,_color,_pos,_width,_height,0,_name,0,0.04];
        };
    };
} foreach _near;