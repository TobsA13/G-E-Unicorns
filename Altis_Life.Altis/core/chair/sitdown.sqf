//////////////////////////////////////////////////////////////////////////
//                            Script Made By                            //
//                                MacRae                                //
//                                                                      //
//                                                                      //
//1.Place a Camping Chair on the map.                                   //
//                                                                      //
//2.Add this to the Camping chair Init:                                 //
//this addAction ["<t color='#0099FF'>Sit Down</t>","Chair\sitdown.sqf"]//
//                              4D6163526165                            //
//////////////////////////////////////////////////////////////////////////


_chair = _this select 0; 
_unit = _this select 1; 

removeAction _this select 2;
_unit setVariable ["sitting", _chair, false];
[[_unit,"Crew"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180); 
_acc = _unit addaction ["<t color='#0099FF'>Aufstehen</t>","core\chair\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];


