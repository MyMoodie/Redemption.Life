/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts zum wegwerfen ausgewählt.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Du hast keine Anzahl angegeben."};
if(parseNumber(_value) <= 0) exitWith {hint "Du musst die Anzahl angeben, welche du wegwerfen möchtest."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Dies ist ein illegaler Gegenstand und Polizisten sind in deiner Nähe","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Du kannst in einem Auto keine Gegenstände wegwerfen.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Konnte die angegebene Anzahl nicht wegwerfen, vielleicht hast du nicht so viele ?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du hast %1 %2 erfolgreich aus deinem Inventar entsorgt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;