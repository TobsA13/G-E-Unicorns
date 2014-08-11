
/*
	Author: TobsA13
	
	Description:
	Exe Halo Jump
*/
private["_killit","_nil","_action"];

closeDialog 0;

_action = [
	"Der HALO-Jump kostet momentan 120k $. Sind Sie sich sicher? Das Geld kann im Falle von Höhenangst und allen anderen erdenklichen Gründen nicht zurück gezahlt werden! Im Falle von Personen Schäden wir auch keine Versicherung für Sie Haften.","HALO-Jump","SPRINGEN!","Abhauen"
] call BIS_fnc_guiMessage;

if(_action) then {
    _killit = false;
	if(life_cash < 120000) exitWith {hint "Du hast nicht genuegend Geld dabei!"; _killit = true;};
    if(!_killit) then {
    life_cash = life_cash - 120000;
    _nil = [] execVM "ATM_airdrop\atm_airdrop.sqf";
    };
};