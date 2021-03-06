/* 		
			file: fn_robShops.sqf
			Author: MrKraken
			Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
			Description:
			Executes the rob shob action!
			Idea developed by PEpwnzya v1.0
			
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
if(side _robber != civilian) exitWith { hint "Du kannst diese Tankstelle nicht ausrauben!" };
if(_robber distance _shop > 3) exitWith { hint "Du musst in 3 Meter Reichweite sein!" };
//if !(_kassa) then { _kassa = 1000}; // ; entfernt
if (rip) exitWith { hint "Diebstahl im Gange!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };
if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };
if (_kassa == 0) exitWith { hint "There is no cash in the register!" };
rip = true;
_kassa = 3000 + round(random 12000);
[[_shop,_action],"life_fnc_delAction",true,false] spawn life_fnc_MP;
[[_shop,"AmovPercMstpSsurWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
hint "The cashier hit the silent alarm, police has been alerted!"; 
[[0,format["ALARM! - Gasstation: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(rip) then
{
	while{true} do
	{
		sleep  0.85;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Robbery in Progress, stay close (5m) (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 5) exitWith { };
		if!(alive _robber) exitWith {};
		
	};
	if!(alive _robber) exitWith { rip = false; };
	if(_robber distance _shop > 5) exitWith { [[_shop,""],"life_fnc_animSync",true,false] spawn life_fnc_MP; hint "You need to stay within 5m to Rob registry! - Now the registry is locked."; 5 cutText ["","PLAIN"]; rip = false; };
	5 cutText ["","PLAIN"];
	titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _kassa;
	rip = false;
	life_use_atm = false;
	sleep (30 + random(180));
	life_use_atm = true;
	if!(alive _robber) exitWith {};
	[[0,format["911 - Gasstation: %2 was just robbed by %1 for a total of $%3",_robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["NEWS: Gasstation: %1 was just robbed for a total of $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,name _robber,"211W"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
[[_shop],"life_fnc_addActionRob",true,false] spawn life_fnc_MP;
[[_shop,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;