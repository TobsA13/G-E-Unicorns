#include <macro.h>
/*
	File: fn_sellTurtle.sqf
	
	Description:
	Sells the turtles! Save the turtles!
	This was a super lazy thing to do but I just want to push it...
*/
private["_index","_price","_val"];
if(life_inv_turtle == 0) exitWith {
	titleText["You don't have any turtles to sell.","PLAIN"];
};

_index = ["turtle",__GETC__(sell_array)] call fnc_index;
_price = (__GETC__(sell_array) select _index) select 1;
_val = life_inv_turtle;


////Marktsystem Anfang////
_marketprice = ["turtle"] call life_fnc_marketGetSellPrice;
if(_marketprice != -1) then
{
	_price = _marketprice;
};
////Marktsystem Ende////

_price = _price * _val;

if([false,"turtle",life_inv_turtle] call life_fnc_handleInv) then {
	titleText[format["You sold %1 turtle(s) for $%2",_val,[_price] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _price;


	////Marktsystem Anfang////
	if(_marketprice != -1) then 
	{ 
		["turtle", _val] spawn
		{
			sleep 120;
			[_this select 0,_this select 1] call life_fnc_marketSell;
		};
	////Marktsystem Ende////
	};
    
};