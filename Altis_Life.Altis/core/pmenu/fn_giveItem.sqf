/*
	File: fn_giveItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected item & amount to the selected player and
	removes the item & amount of it from the players virtual
	inventory.
*/
private["_unit","_val"];
_val = ctrlText 2010;
ctrlShow[2002,false];
if((lbCurSel 2023) == -1) exitWith {hint "Nichts ausgewählt!";ctrlShow[2002,true];};
_unit = lbData [2023,lbCurSel 2023];
_unit = call compile format["%1",_unit];
if((lbCurSel 2005) == -1) exitWith {hint "Du hast kein Item ausgewählt, welches du abgeben möchtest.";ctrlShow[2002,true];};
_item = lbData [2005,(lbCurSel 2005)];
if(isNil "_unit") exitWith {ctrlShow[2002,true];};
if(_unit == player) exitWith {ctrlShow[2002,true];};
if(isNull _unit) exitWith {ctrlShow[2002,true];};

//A series of checks *ugh*
if(!([_val] call TON_fnc_isnumber)) exitWith {hint "Bitte gib eine Anzalh an.";ctrlShow[2002,true];};
if(parseNumber(_val) <= 0) exitWith {hint "Bitte gib eine Anzalh an.";ctrlShow[2002,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Der gewählte Spieler befindet sich nicht in deiner Nähe";};
if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {hint "Die Anzahl konnte nicht gegeben werden, vielleicht besitzt du nicht genug ?";ctrlShow[2002,true];};
[[_unit,_val,_item,player],"life_fnc_receiveItem",_unit,false] spawn life_fnc_MP;
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du gibst %1 %2 %3",_unit getVariable["realname",name _unit],_val,_type];
[] call life_fnc_p_updateMenu;

ctrlShow[2002,true];