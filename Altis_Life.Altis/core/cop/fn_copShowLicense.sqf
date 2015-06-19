/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Du bist kein Cop!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Ordnungsamt"; };
	case 2: { _rang = "Polizei Praktikant"; };
	case 3: { _rang = "Polizeireferendar"; };
	case 4: { _rang = "Polizeimeister"; };
	case 5: { _rang = "Polizeikommissar"; };
	case 6: { _rang = "Polizeioberkommissar"; };
	case 7: { _rang = "Polizeihauptkommissar"; };
	case 8: { _rang = "Erster Polizeihauptkommissar"; };
	case 9: { _rang = "Bundespolizist"; };
	case 10: { _rang = "Bundespolizei Pilot"; };
	case 11: { _rang = "SEK Anwärter"; };
	case 12: { _rang = "SEK"; };
	case 13: { _rang = "SEK Führer"; };
	case 14: { _rang = "GSG9 Anwärter"; };
	case 15: { _rang = "GSG9"; };
	case 16: { _rang = "GSG9 Führer"; };
	case 17: { _rang = "Polizei Ausbilder"; };
	case 18: { _rang = "Polizeirat"; };
	case 19: { _rang = "Polizeioberrat"; };
	case 20: { _rang = "Polizeidirektor"; };
	case 21: { _rang = "Leitender Polizeidirektor"; };
	default {_rank =  "Error";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\marke.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Polizei Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
