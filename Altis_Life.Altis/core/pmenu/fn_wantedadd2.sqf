//fn_wantedadd2.sqf

private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 9900)};
_display = findDisplay 9900;
_list = _display displayCtrl 9902;

//Purge List
lbClear _list;


{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", name _x,_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;


_list2 = _display displayCtrl 9991;
lbClear _list2;


//_index = lbAdd [_list2, "Name"];
//lbSetData [_list2, _index, "pfad/zum/bild.paa"];
//lbSetValue [_list2, _index, "pfad/zum/bild.paa"];


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Unerlaubte Machenschaften
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


_text = "Versuchter Fahrzeug Diebstahl pro Versuch 10.000 €";
_data = "1";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Versuchter Diebstahl e. Polizeifahrzeugs 25.000 €";
_data = "2";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Diebstahl von Fahrzeugen 20.000 €";
_data = "3";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Diebstahl von Polizeifahrzeugen 50.000 €";
_data = "4";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Unfallverursacher / Fahrerflucht nach Unfall 15.000 €";
_data = "5";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Flucht vor der Polizei 27.500 €";
_data = "6";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Widerstand gegen die Staatsgewalt 45.000 €";
_data = "7";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Missachtung pol. Anordnung 20.000 €";
_data = "8";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Beamtenbeleidigung 15.000 €";
_data = "9";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Belaestigung eines Polizisten 10.000 €";
_data = "10";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Betreten einer pol. Sperrzone 50.000 €";
_data = "11";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Zerstoerung von Polizeieigentum 150.000 €";
_data = "12";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Mit gez. Waffe durch Stadt 50.000 €";
_data = "13";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Aufstand 75.000 €";
_data = "14";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Verkehrsdelikte
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

_text = "Fahren ohne Führerschein 15.000 €";
_data = "15";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fliegen ohne Fluglizenz 50.000 €";
_data = "16";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fahren ohne Licht 1.500 €";
_data = "17";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Dauerhaftes hupen 7.500 €";
_data = "18";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ueberhoehte Geschwindigkeit 6.000 €";
_data = "19";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Gefaehrliche Fahrweise 7.500 €";
_data = "20";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Umfahren eines Außenpostens 100.000 €";
_data = "21";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Gef. Eingriff in den Straßenverkehr 5.000 €";
_data = "22";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Überfahren eines anderen Spielers 25.000 €";
_data = "23";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Mutwilliges überfahren eines anderen Spielers 1.000.000 €";
_data = "24";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Landen ohne Genehmigung 50.000 €";
_data = "25";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Landung in einer Flugverbotszone 75.000 €";
_data = "26";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fliegen/Schweben über Stadt 75.000 €";
_data = "27";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Illegale Strassensperren 50.000 €";
_data = "28";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Gewalt- und Waffendelikte
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

_text = "Mord 1.500.000 € & 30min. JVA";
_data = "29";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Mord an Staatsgewalt 2.000.000 € & 30min. JVA";
_data = "30";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text ="Waffengewalt 250.000 € & 15min. JVA";
_data = "31";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Abfeuern einer Waffe innerhalb von Städten 50.000 €";
_data = "32";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Beschuss auf Polizei/Beamte/Eigentum 500.000 € & 20min. JVA";
_data = "33";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Geiselnahme 500.000 € & 20min. JVA";
_data = "34";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Raubueberfall 120.000 € & 20min. JVA";
_data = "35";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Bankraub 1.000.000 € & 25min. JVA";
_data = "36";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Angriff durch Rebellen 200.000 € & 15min. JVA";
_data = "37";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Angriff/Belagerung von Hauptstädten/Checkpoints 10.000.000 €";
_data = "38";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Gesetzeswidrige Delikte
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

_text = "Führen von illegalen Fahrzeugen 50.000 €";
_data = "39";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Führen von gestohlenen Fahrzeugen 30.000 €";
_data = "40";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Kleine Drogendelikte 80.000 € & 5min. JVA";
_data = "41";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Gro0e Drogendelikte 120.000 € & 15min. JVA";
_data = "42";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Waffenbesitz ohne Lizenz 70.000 €";
_data = "43";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Besitz einer illegalen Waffe 150.000 €";
_data = "44";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ausbruch aus dem Gefaengnis 350.000 € & 30min. JVA";
_data = "45";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Kraftwerk manipulation 500.000 € & 15min. JVA";
_data = "46";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Handel mit exotischen Gütern 500.000 €";
_data = "47";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Organ Handel 150.000 €";
_data = "48";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Handel mit Seehunden 800.000 € & 30min. JVA";
_data = "49";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Handel mit Schildkröten 500.000 € & 30min. JVA";
_data = "50";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Illegales Glückspiel 25.000 €";
_data = "51";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];
