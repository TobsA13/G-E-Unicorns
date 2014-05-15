#include <macro.h>

_pathtotools = "admintools\tools\";
_pathtovehicles = "admintools\vehicles\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicles+'%1"';
//customise these menus to fit your server
if (__GETC__(life_adminlevel) == 1) then { //mods
    adminmenu =
    [
		["",true],
			["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
    ];};
if (__GETC__(life_adminlevel) == 2) then { //admins
    adminmenu =
    [
		["",true],
			["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
    ];};
if (__GETC__(life_adminlevel) == 3) then { // super admins
	adminmenu =
	[
		["",true],
			["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
	];};
//customise to fit
ModToolsMenu =
[
	["",true],
		//["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		//["Car God", [3],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		//["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [5], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		//["ESP", [6], "", -5, [["expression", format[_EXECscript1, "ESP.sqf"]]], "1", "1"],
		["Teleport", [7], "", -5, [["expression", format[_EXECscript1, "Tele.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
AdminToolsMenu =
[
	["",true],
		//["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		//["Car God", [3],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		//["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [5], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["ESP", [6], "", -5, [["expression", format[_EXECscript1, "ESP.sqf"]]], "1", "1"],
		["Teleport", [7], "", -5, [["expression", format[_EXECscript1, "Tele.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		//["Car God", [3],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		//["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [5], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["ESP", [6], "", -5, [["expression", format[_EXECscript1, "ESP.sqf"]]], "1", "1"],
		["Teleport", [7], "", -5, [["expression", format[_EXECscript1, "Tele.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:adminmenu";