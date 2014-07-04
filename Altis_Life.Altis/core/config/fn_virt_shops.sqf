/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storage1","storage2"]]};		//Hausing
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "shell": {["Shell",["water","rabbit","apple","redgull","tbacon","fuelF"]]};
    case "donator": {["Donator Shop",["water","rabbit","apple","redgull","tbacon","fuelF","pickaxe"]]};
    case "dev": {["All Items in Development",["gummi","uturbo1","uturbo2","uturbo3","ustorage1","ustorage2","ustorage3","uspeed1","uspeed2","uspeed3","udown1","udown2","udown3"]]};
};