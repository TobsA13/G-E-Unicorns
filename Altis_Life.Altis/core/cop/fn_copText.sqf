private["_list","_text"];
_list = (position player) nearEntities ["Man", 20];
_text = [_this,0,"",[""]] call BIS_fnc_param;


{

if(isPlayer _x) then {
    [[2,_text],"life_fnc_broadcast",_x,false] spawn life_fnc_MP;
};

} forEach _list;