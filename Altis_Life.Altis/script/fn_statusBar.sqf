waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
File: fn_statusBar.sqf
Author: Some French Guy named Osef I presume, given the variable on the status bar
Edited by: [midgetgrimm], Additional Modification by Bond (Server Uptime)
Description: Puts a small bar in the bottom right of screen to display in-game information
 
*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["[Altis Life] Loading game server info...", _rscLayer];
 
[] spawn {
sleep 5;
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Cops: %2 | Civs: %3 | ARV: %4 | CASH: %5 | BANK: %6 | SPIELER: %7 |", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[cash] call life_fnc_numberText,[bank] call life_fnc_numberText, count playableUnits,_counter ];
};
};
