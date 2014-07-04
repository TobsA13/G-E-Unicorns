[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
(player getVariable ["sitting",ObjNull]) addAction ["<t color='#0099FF'>Hinsetzen</t>","core\chair\sitdown.sqf"]
player removeaction _this select 2;

//4D6163526165 
