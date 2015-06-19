waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["Tools_im_Test","Tools im Test"];
player createDiarySubject ["Allgemeine_Gesetze","Allgemeine Gez."];
player createDiarySubject ["Gesetze_für_Zivilisten","Gez. für Zivilisten"];
//player createDiarySubject ["Gesetze_bzgl._Events","Gesetze bzgl. Events"];
player createDiarySubject ["Gesetze_für_Rebellen","Gez. für Rebellen"];
player createDiarySubject ["Gesetze_für_Polizisten","Gez. für Polizisten"];
player createDiarySubject ["Gesetze_bzgl._Events","Gez. Events"];
player createDiarySubject ["Bussgeldkatalog","Bußgeldkatalog"];
player createDiarySubject ["Zusatzinformationen","Informationen"];
player createDiarySubject ["Steuerung","Steuerung"];
player createDiarySubject ["Lizenzen","Lizenzen"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["Tools_im_Test",
		[
			"Tools in der Entwicklung",
				"
				Einsatzhelfer für Polizei, Medic, ADAC          <br/>
				"
		]
	];

	player createDiaryRecord["Tools_im_Test",
		[
			"Tools die wir testen",
				"
				Fahrzeug Blinker im Test. 06.06.15               <br/>
				Tempomat im Test.06.06.15                        <br/> 
				<br/>
				Dynamiches AirDrop System<br/>
				24/7/365 mit RealTime ohne Serverneustarts       <br/>
				"
		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§6 Random Deathmatch (RDM)", 
				"
				1. Das wahllose Töten von Spielern ohne RP-Hintergrund<br/>
				ist verboten.<br/>
				<br/>
				2. Solltest du als Zivilist in ein Event geraten und<br/>
				sterben gilt dies nicht als RDM.<br/>
				<br/>
				3. Das Verteidigen von Freunden und / oder<br/>
				Gangmitgliedern ist erlaubt, sofern diese durch ein<br/>
				Clantag gekennzeichnet sind.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§5 Kommunikation", 
				"
				1. Der Side-Chat ist für normale, kurzweilige <br/>
				Kommunikation gedacht.<br/>
				Für alles weitere gibt es den Gruppen- oder Direct-Chat.<br/>
				<br/>
				2. Das Sprechen im Side-Chat ist verboten.<br/>
				<br/>
				3. Spammen ist verboten.<br/>
				<br/>
				4. Das Posten von Links (Fremdwerbung etc.) ist <br/>
				verboten.<br/>
				<br/>
				5. Beleidigungen, Rassismus, Antisemitismus und<br/>
				pornografische Sprache ist verboten.<br/>
				<br/>
				6. Der Handel im Side-Chat ist erwünscht.<br/>
				<br/>
				7. SideChat-Informationen dürfen nur zum Handeln oder<br/>
				für OOC-Angaben genutzt werden. <br/>
				Im Sidechat ausgesprochene Warnungen (ausgenommen<br/>
				Terrorwarnungen) und Kopfgelder sind nichtig. <br/>
				"
 		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§4 Absichtliche Zerstörung von Fahrzeugen", 
				"
				1. Das vorsätzliche Zerstören von Fahrzeugen ohne <br/>
				Roleplayhintergrund ist verboten.<br/>
				<br/>
				2. Das absichtliche Rammen von Fahrzeugen außerhalb<br/>
				eines Events um sie zu zerstören ist verboten.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§3 One-Life-Regeln", 
				"
				1. Jeder darf genau einmal an einem Event teilnehmen.<br/>
				Nach seinem Tod darf der Teilnehmer nicht an den Ort<br/>
				des	Geschehens zurückkehren bis das Event beendet ist.<br/>
				<br/>
				2. Ein Event beginnt mit Eröffnung des RP und endet mit<br/>
				dem Ausgang dessen.<br/>
				<br/>
				3. Suizid ist kein Tod.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§2 Safezones", 
				"
				1. Alle Händler (ausgenommen Rohstoffhändler und<br/>
				Dealer) Geldautomaten, Lizenzämter, Craftingkisten <br/>
				und Garagen sind Safezones.<br/>
				<br/>
				2. Die Safezones betragen 100m um jeden in Punkt 1<br/>
				genannten Ort.<br/>
				<br/>
				3. In Safezones ist das Begehen von Straftaten verboten.<br/>
				<br/>
				4. Copspawns zählen ebenfalls als Safezone.<br/>
				<br/>
				5. Das Geocaching-Ende ist eine Safezone mit 50m <br/>
				Umkreis.<br/>
				<br/>
				6. Das Fliehen in eine Safezone ist ausdrücklich erlaubt!<br/>
				<br/>
				7. Cops dürfen in Safezones handeln und schießen!<br/>
				"
		]
	];
	
	player createDiaryRecord ["Allgemeine_Gesetze",
		[
			"§1 Exploits, Hacks, Bugs", 
				"
				1. Das Nutzen von Bugs, Hacks, Cheats,<br/>
				Exploits etc. ist verboten.<br/>
				<br/>
				2. Wenn ein Bug bekannt wird ist dieser im<br/>
				Forum zu melden.<br/>
				"
		]
	];
		
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§7 Zusatz", 
				"
				1. Die Gesetze von Altis sind verpflichtend.<br/>
				<br/>
				2. Bei Verstoß gegen die Gesetze wird nach<br/>
				Bußgeldkatalog bestraft. <br/>
				Im Wiederholungsfall droht eine Gefängnisstrafe.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§6 Umgang mit Waffen", 
				"
				1. Kavala ist waffenfrei und darf auch nicht mit der<br/>
				Waffe auf dem Rücken betreten werden.<br/>
				<br/>
				2. In Städten ist die Waffe generell geschultert zu tragen.<br/>
				<br/>
				3. Sollte eine Waffe in eurem Besitz sein, wenn die<br/>
				Polizei euch wegen einer Straftat festnimmt, darf diese<br/>
				beschlagnahmt werden.<br/>
				<br/>
				4. Wer ohne Waffenlizenz angetroffen wird, dem darf die<br/>
				Waffe durch die Polizei abgenommen werden.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§5 Einbürgerung", 
				"
				1. Binnen 7 Tagen nach der Einbürgerung darf ein Zivilist <br/>
				keine Rebellenlizenz erwerben.<br/>
				<br/>
				2. Das Begehen von schweren Straftaten (Raub, Mord,<br/>
				Banküberfälle, etc.) ist für 7 Tage nach der Einbürgerung<br/>
				verboten.<br/>
				<br/>
				3. Binnen 7 Tagen nach der Einbürgerung darf kein Zivilist<br/>
				keine Schnellfeuerwaffe bei sich tragen.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§4 Verkehrsregeln", 
				"
				1. Es gilt rechts vor Links.<br/>
				<br/>
				2. Es gilt Rechtsfahrgebot.<br/>
				<br/>
				3. Bei Dämmerung/Nacht/schlechter Sicht/Regen etc. ist<br/>
				mit Licht zu fahren.<br/>
				<br/>
				4. Das Parken auf der Straße ist verboten.<br/>
				<br/>
				5. Jeder Fahrzeugführer hat Werkzeugkästen und<br/>
				Erste-Hilfe-Kästen mitzuführen.<br/>
				<br/>
				6. Das absichtliche Behindern von Fahrzeugen ist<br/>
				verboten.<br/>
				<br/>
				7. Das Überfliegen von Städten unterhalb von 200m ist<br/>
				verboten.<br/>
				<br/>
				8. Das Landen von Helikoptern und Jets in Städten und<br/>
				auf Straßen ist verboten.<br/>
				Ausnahmeregelungen können durch den höchsten<br/>
				diensthabenden Polizisten erteilt werden.<br/>
				Kommisare haben keine Befigniss solche zu erteilen<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§3 Verhalten bei polizeilichen Maßnahmen", 
				"
				1. Den Anweisungen der Polizei ist Folge zu leisten.<br/>
				<br/>
				2. Wer eine Waffe bei sich führt sollte dies dem<br/>
				Polizisten mitteilen, bevor er aus dem Fahrzeug steigt.<br/>
				<br/>
				3. Widerstand gegen polizeiliche Maßnahmen wird im<br/>
				schlimmsten Fall mit dem Gebrauch der Schusswaffe<br/>
				beantwortet.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§2 Einmischung in Polizeiaktionen", 
				"
				1. Das dauerhafte spionieren und / oder <br/>
				stalken von Polizisten ist verboten.<br/>
				<br/>
				2. Das dauerhafte Blocken von Polizisten um diese daran<br/>
				zu hindern ihre Pflicht zu tun ist verboten.<br/>
				"
 		]
	];
	
	player createDiaryRecord ["Gesetze_für_Zivilisten",
		[
			"§1 Illegale Gegenstände", 
				"
				1. Liste illegaler Gegenstände:<br/>
				<br/>
				Fahrzeuge :<br/>
				<br/>
				Ifrit (alle Ausführungen)<br/>
				Rebellenoffroad (beide Ausführungen)<br/>
				Jegliche Polizeifahrzeuge<br/>
				<br/>
				<br/>
				Waffen :<br/>
				<br/>
				Polizeiwaffen (ausgenommen Mk18 und P07)<br/>
				Gegenstände<br/>
				Schildkrötenfleisch<br/>
				Marihuana<br/>
				LSD<br/>
				Kokain<br/>
				Heroin<br/>
				Cristal Meth<br/>
				Schnaps<br/>
				Goldbarren von der Staatsbank<br/>
				"
 		]
	];
		
	player createDiaryRecord ["Gesetze_für_Rebellen",
		[
			"§2 Rebellenverhalten", 
				"
				1. Rebellen sind keine Banditen und sollten sich<br/>
				dementsprechend auch nicht wie solche benehmen.<br/>
				<br/>
				2. Rebellenangriffe müssen als Gang ausgeführt werden.<br/>
				<br/>
				3. Rebellen richten sich gegen den Staat und nicht gegen<br/>
				Zivilisten.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Rebellen",
		[
			"§1 Rebellionen", 
				"
				1. Eine Rebellion ist kein Grund das Feuer auf Zivilisten <br/>
				oder Polizisten zu eröffnen.<br/>
				<br/>
				2. Rebellionen müssen einen RP-Hintergrund haben und<br/>
				angekündigt werden.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§10 One-Life-Regel", 
				"
				1. Die One-Life-Regel für Cops gilt nur dann, wenn mehr<br/>
				als 4 Polizisten online sind.<br/>
				<br/>
				2. Sind 4 oder weniger Cops online, hat ein Polizist zwei<br/>
				Leben.<br/>
				<br/>
				3. Das Wiederbeleben von Cops während eines Events ist<br/>
				verboten!<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§9 Verträge",
				"
				1. Hochrangige Beamte dürfen Informanten,<br/>
				Spionagegruppierungen oder andere Leute kontaktieren und<br/>
				einstellen und für die Hilfe bei polizeilichen<br/>
				Einsätzen/Operationen oder für das Dienen als Wachmann<br/>
				bezahlen.<br/>
				<br/>
				2. Verträge bleiben aufrecht, bis der zuständige Beamte<br/>
				den Vertrag beendet.<br/>
				<br/>
				3. Verträge bestehen nach dem Tod des Anbieters oder<br/>
				des Ausführenden weiter, außer der Vertrag wurde davor<br/>
				annulliert.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§8 Festnahmen und Bußgelder",
				"
				1. Jeder Polizist ist angehalten, Bußgelder statt<br/>
				Gefängnisstrafen zu verhängen.<br/>
				<br/>
				2. Der Bußgeldkatalog ist hierbei bindend.<br/>
				<br/>
				3. Wiederholungstäter sind zu inhaftieren.<br/>
				<br/>
				4. Jeder Bürger hat das Recht zu erfahren, wieso er<br/>
				festgenommen wird.<br/>
				<br/>
				5. Jeder Bürger hat das Recht darauf, seine Rechte<br/>
				vorgelesen zu bekommen.<br/>
				<br/>
				6. Sollte ein Bußgeld verhängt und bezahlt werden ist der<br/>
				Gefangene freizulassen, außer es handelt sich um ein<br/>
				Vergehen, welches ein Bußgeld und eine Haftstrafe zur<br/>
				Folge hat.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§7 Beschlagnahmung",
				"
				1. Fahrzeuge dürfen nach mehr als 5 Minuten stillstand<br/>
				abgeschleppt werden.<br/>
				<br/>
				2. Fahrzeuge welche Ordnungsgemäß auf Parkplätzen<br/>
				abgestellt und unbeschädigt sind dürfen nicht<br/>
				abgeschleppt werden.<br/>
				<br/>
				3. Fahrzeuge welche für schwere Straftaten eingesetzt<br/>
				werden dürfen von der Polizei dauerhaft beschlagnahmt<br/>
				und zerstört werden.<br/>
				<br/>
				4. Illegale Fahrzeuge dürfen sofort dauerhaft<br/>
				beschlagnahmt werden.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§6 Razzien, Raids und Camping", 
				"
				1. Razzien und Raids sind generell anzukündigen. Dies kann<br/>
				per SMS oder im Forum passieren. Der Ort der Razzia / <br/>
				des Raids muss dabei nicht angekündigt werden.<br/>
				<br/>
				2. Bei einer Razzia / einem Raid müssen mindestens vier<br/>
				Beamte anwesend sein.<br/>
				<br/>
				3. Bei einer Razzia / einem Raid darf jede Person<br/>
				zunächst kontrolliert und festgehalten werden.<br/>
				<br/>
				4. Nach einer Razzia / einem Raid darf das entsprechende<br/>
				Gebiet für mindestens 45 Minuten nicht erneut betreten<br/>
				werden.<br/>
				<br/>
				5. Polizisten dürfen sich zur Observierung für maximal 15<br/>
				Minuten im entsprechende Gebiet aufhalten.<br/>
				<br/>
				6. Das becampen von illegalen Gebieten ist untersagt.<br/>
				<br/>
				7. Die Observierung durch Drohnen ist kein Campen.<br/>
				<br/>
				8. Das SEK sowie das GSG 9 genießen sonderregelungen,<br/>
				um ihren Einsatz zu planen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§5 Verhalten bei Banküberfällen", 
				"
				1. Patroullierende Polizisten begeben sich ebenfalls<br/>
				umgehend zum Bankraub und räumen umgehend das<br/>
				umliegende Gebiet, um den einsatz des GSG9 oder SEKS<br/>
				für Zivilisten sicher zu gestalten.<br/>
				<br/>
				2. Jede Möglichkeit die Bankräuber zu verhaften sollte<br/>
				genutzt werden.<br/>
				<br/>
				3. Der Einsatz tödlicher Munition ist in §4 geregelt.<br/>
				"
		]
	];

	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§4 Einsatz von Waffen", 
				"
				1. Jeder Polizist ist angehalten auf nicht-tödliche Waffen<br/>
				zurückzugreifen.<br/>
				<br/>
				2. Die Polizei sollte versuchen, jeden Verdächtigen<br/>
				festzunehmen, nicht zu töten.<br/>
				<br/>
				3. Der Einsatz von Waffen ist Praktikanten nicht<br/>
				gestattet.<br/>
				<br/>
				4. Waffen sind generell geholstert zu tragen.<br/>
				<br/>
				5. Polizisten dürfen sich mit tödlicher Munition zur Wehr<br/>
				setzen falls sie angegriffen werden.<br/>
				6. Polizisten haben im Streifendienst nur eine<br/>
				Handfeuerwaffen zu tragen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§3 Fahrzeugkontrollen und Checkpoints", 
				"
				1. Die Polizei darf sowohl feste als auch mobile<br/>
				Straßensperren errichten um Fahrzeugkontrollen<br/>
				durchzuführen.<br/>
				<br/>
				2. Bei einer Fahrzeugkontrolle ist für die Absicherung der<br/>
				Polizeikräfte zu sorgen.<br/>
				<br/>
				3. Ein Checkpoint muss aus mindestens drei Polizisten und<br/>
				zwei Fahrzeugen bestehen.<br/>
				<br/>
				4. Solange ein Checkpoint besetzt ist dürfen Polizisten<br/>
				sich an diesem wiederbeleben lassen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§2 Patroullien", 
				"
				1. Jeder Polizist sollte im ihm zugeteilten Gebiet<br/>
				patroullieren.<br/>
				<br/>
				2. Bei Patrouillen dürfen Bürger ohne jeglichen Grund<br/>
				kontrolliert und durchsucht werden.<br/>
				<br/>
				3. Auf Patroulliengängen ist die Waffe stets gesenkt zu<br/>
				halten.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_für_Polizisten",
		[
			"§1 Allgemeines Verhalten", 
				"
				1. Polizisten haben sich dauerhaft im TS aufzuhalten.<br/>
				<br/>
				2. Polizisten sind dazu verpflichtet, mit dem Einsatzhelfer<br/>
				zu arbeiten<br/>
				<br/>
				3. Jeder Polizist hat sich an die geltenden Gesetze in<br/>
				Altis zu halten.<br/>
				<br/>
				4. Die Polizei ist Freund und Helfer und sollte sich auch<br/>
				entsprechend verhalten.<br/>
				5. Die Cop-Quote beträgt 15%. Sind weniger Cops online<br/>
				muss auf dem Cop-Slot gespielt werden.<br/>
				"
		]
	];
	
	player createDiaryRecord ["Gesetze_bzgl._Events",
		[
			"§4 Terroranschläge", 
				"
				1. Terroranschläge müssen mindestens 15 Minuten vor dem<br/>
				Anschlag angekündigt werden.<br/>
				<br/>
				2. Terroranschläge müssen sowohl durch den Side-Chat als<br/>
				auch durch Polizei-SMS angekündigt werden.<br/>
				<br/>
				3. Die One-Life-Regel gilt auch bei Terroranschlägen.<br/>
				<br/>
				4. Nach einem Anschlag ist das Gebiet für 60 Minuten<br/>
				Ruhezone!<br/>
				"
		]
	];

	player createDiaryRecord ["Gesetze_bzgl._Events",
		[
			"§3 Geiselnahmen", 
				"
				1. Bei Geiselnahmen muss mit dem Opfer kommuniziert<br/>
				werden.<br/>
				<br/>
				2. Für das Wohl der Geiseln ist zu sorgen.<br/>
				<br/>
				3. Sobald die Geisel genommen wurde müssen Forderungen<br/>
				gestellt werden.<br/>
				<br/>
				4. Sowohl von Cops als auch von den Geiselnehmern<br/>
				sollten Verhandlungen geführt werden. Hierfür sollten<br/>
				beide Parteien aufeinander zugehen!<br/>
				"
		]
	];	

	player createDiaryRecord ["Gesetze_bzgl._Events",
		[
			"§2 Eventeröffnung", 
				"
				1. “Halt Überfall” gilt nicht als Eventeröffnung!<br/>
				<br/>
				2. Eventeröffnungen dürfen nicht im Side-Chat gemacht<br/>
				werden. Ausgenommen hiervon sind Terrorwarnungen!<br/>
				"
		]
	];
		
	player createDiaryRecord ["Gesetze_bzgl._Events",
		[
			"§1 Camping", 
				"
			1. Camping ist verboten. Der erste Überfall ist der Beginn<br/>
			des Campens.<br/>
			<br/>
			2. Das wahllose Töten von Personen während des Campens<br/>
			ist verboten.<br/>
			<br/>
			3. Nach dem Überfall darf das Gebiet für 15 Minuten von<br/>
			den Banditen nicht wieder betreten werden.<br/>
				"
		]
	];

	
	
	
	
/*	
	player createDiaryRecord ["Bussgeldkatalog",
		[
			"Panda Bußgeldkatalog", 
				"
				Bußgeldkatalog : Unerlaubte Machenschaften :<br/>
				<br/>
				<br/>
				1.  Versuchter Fahrzeug Diebstahl pro Versuch 10.000 €<br/>
				2.  Versuchter Diebstahl e. Polizeifahrzeugs 25.000 €<br/>
				3.  Diebstahl von Fahrzeugen 20.000 €<br/>
				4.  Diebstahl von Polizeifahrzeugen 50.000 €<br/>
				5.  Unfallverursacher / Fahrerflucht nach Unfall 15.000 €<br/>
				6.  Flucht vor der Polizei 27.500 €<br/>
				7.  Widerstand gegen die Staatsgewalt 45.000 €<br/>
				8.  Missachtung pol. Anordnung 20.000 €<br/>
				9.  Beamtenbeleidigung 15.000 €<br/>
				10. Belaestigung eines Polizisten 10.000 €<br/>
				11. Betreten einer pol. Sperrzone 50.000 €<br/>
				12. Zerstoerung von Polizeieigentum 150.000 €<br/>
				13. Mit gez. Waffe durch Stadt 50.000 €<br/>
				14. Aufstand 75.000 €<br/>	
				<br/>
				<br/>
				Bußgeldkatalog : Verkehrsdelikte :<br/>
				<br/>
				<br/>
				1.  Fahren ohne Führerschein 15.000 €<br/>
				2.  Fliegen ohne Fluglizenz 50.000 €<br/>
				3.  Fahren ohne Licht 1.500 €<br/>
				4.  Dauerhaftes hupen 7.500 €<br/>
				5.  Überhoehte Geschwindigkeit 6.000 €<br/>
				6.  Gefährliche Fahrweise 7.500 €<br/>
				7.  Umfahren eines Außenpostens 100.000 €<br/>
				8.  Gef. Eingriff in den Straßenverkehr 5.000 €<br/>
				9.  Überfahren eines anderen Spielers 25.000 €<br/>
				10. Mutwilliges überfahren eines anderen Spielers 1.000.000 €<br/>
				11. Landen ohne Genehmigung 50.000 €<br/>
				12. Landung in einer Flugverbotszone 75.000 €<br/>
				13. Fliegen/Schweben über Stadt 75.000 €<br/>
				14. Illegale Strassensperren 50.000 €<br/>
				<br/>
				<br/>
				Bußgeldkatalog : Gewalt- und Waffendelikte :<br/>
				<br/>
				<br/>
				1.  Mord 1.500.000 € & 30min. JVA<br/>
				2.  Mord an Staatsgewalt 2.000.000 € & 30min. JVA<br/>
				3.  Waffengewalt 250.000 € & 15min. JVA<br/>
				4.  Abfeuern einer Waffe innerhalb von Städten 50.000 €<br/>
				5.  Beschuss auf Polizei/Beamte/Eigentum<br/>
					500.000 € & 20min. JVA<br/>
				6.  Geiselnahme 500.000 € & 20min. JVA<br/>
				7.  Raubueberfall 120.000 € & 20min. JVA<br/>
				8.  Bankraub 1.000.000 € & 25min. JVA<br/>
				9.  Angriff durch Rebellen 200.000 € & 15min. JVA<br/>
				10. Angriff/Belagerung von Hauptstädten/Checkpoints<br/>
					10.000.000 € & 20min. JVA<br/>
				<br/>
				<br/>
				Bußgeldkatalog : Gesetzeswidrige Delikte :<br/>
				<br/>
				<br/>
				1.  Führen von illegalen Fahrzeugen 50.000 €<br/>
				2.  Führen von gestohlenen Fahrzeugen 30.000 €<br/>
				3.  Kleine Drogendelikte 80.000 € & 5min. JVA<br/>
				4.  Gro0e Drogendelikte 120.000 € & 15min. JVA<br/>
				5.  Waffenbesitz ohne Lizenz 70.000 €<br/>
				6.  Besitz einer illegalen Waffe 150.000 €<br/>
				7.  Ausbruch aus dem Gefaengnis 350.000 € & 30min. JVA<br/>
				8.  Kraftwerk manipulation 500.000 € & 15min. JVA<br/>
				9.  Handel mit exotischen Gütern 500.000 €<br/>
				10. Organ Handel 150.000 €<br/>
				11. Handel mit Seehunden 800.000 € & 30min. JVA<br/>
				12. Handel mit Schildkröten 500.000 € & 30min. JVA<br/>
				13. Illegales Glückspiel 25.000 €<br/>
				"
		]
	];
		

*/
	
	
	
	

	
	player createDiaryRecord ["Bussgeldkatalog",
		[
			"Gesetzeswidrige Delikte", 
				"
				Bußgeldkatalog : Gesetzeswidrige Delikte :<br/>
				<br/>
				<br/>
				1.  Führen von illegalen Fahrzeugen 50.000 €<br/>
				2.  Führen von gestohlenen Fahrzeugen 30.000 €<br/>
				3.  Kleine Drogendelikte 80.000 € u. 5min. JVA<br/>
				4.  Gro0e Drogendelikte 120.000 € u. 15min. JVA<br/>
				5.  Waffenbesitz ohne Lizenz 70.000 €<br/>
				6.  Besitz einer illegalen Waffe 150.000 €<br/>
				7.  Ausbruch aus dem Gefaengnis<br/>
				    350.000 € u. 30min. JVA<br/>
				8.  Kraftwerk manipulation 500.000 € u. 15min. JVA<br/>
				9.  Handel mit exotischen Gütern 500.000 €<br/>
				10. Organ Handel 150.000 €<br/>
				11. Handel mit Seehunden 800.000 € u. 30min. JVA<br/>
				12. Handel mit Schildkröten 500.000 € u. 30min. JVA<br/>
				13. Illegales Glückspiel 25.000 €<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["Bussgeldkatalog",
		[
			"Gewalt- und Waffendelikte", 
				"
				Bußgeldkatalog : Gewalt- und Waffendelikte :<br/>
				<br/>
				<br/>
				1.  Mord 1.500.000 € u. 30min. JVA<br/>
				2.  Mord an Staatsgewalt 2.000.000 € u. 30min. JVA<br/>
				3.  Waffengewalt 250.000 € u. 15min. JVA<br/>
				4.  Abfeuern einer Waffe innerhalb von Städten 50.000 €<br/>
				5.  Beschuss auf Polizei/Beamte/Eigentum<br/>
				    500.000 € u. 20min. JVA<br/>
				6.  Geiselnahme 500.000 € u. 20min. JVA<br/>
				7.  Raubueberfall 120.000 € u. 20min. JVA<br/>
				8.  Bankraub 1.000.000 € u. 25min. JVA<br/>
				9.  Angriff durch Rebellen 200.000 € u. 15min. JVA<br/>
				10. Angriff/Belagerung von Hauptstädten/Checkpoints<br/>
				    10.000.000 € u. 20min. JVA<br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["Bussgeldkatalog",
		[
			"Verkehrsdelikte", 
				"
				Bußgeldkatalog : Verkehrsdelikte :<br/>
				<br/>
				<br/>
				1.  Fahren ohne Führerschein 15.000 €<br/>
				2.  Fliegen ohne Fluglizenz 50.000 €<br/>
				3.  Fahren ohne Licht 1.500 €<br/>
				4.  Dauerhaftes hupen 7.500 €<br/>
				5.  Überhoehte Geschwindigkeit 6.000 €<br/>
				6.  Gefährliche Fahrweise 7.500 €<br/>
				7.  Umfahren eines Außenpostens 100.000 €<br/>
				8.  Gef. Eingriff in den Straßenverkehr 5.000 €<br/>
				9.  Überfahren eines anderen Spielers 25.000 €<br/>
				10. Mutwilliges überfahren eines anderen Spielers<br/>
				    1.000.000 € u. 10min. JVA<br/>
				11. Landen ohne Genehmigung 50.000 €<br/>
				12. Landung in einer Flugverbotszone 75.000 €<br/>
				13. Fliegen/Schweben über Stadt 75.000 €<br/>
				14. Illegale Strassensperren 50.000 €<br/>
				"
		]
	];
	
	
	
	
	
	
	
	player createDiaryRecord ["Bussgeldkatalog",
		[
			"Unerlaubte Machenschaften", 
				"
				Bußgeldkatalog : Unerlaubte Machenschaften :<br/>
				<br/>
				<br/>
				1.  Versuchter Fahrzeug Diebstahl pro Versuch 10.000 €<br/>
				2.  Versuchter Diebstahl e. Polizeifahrzeugs 25.000 €<br/>
				3.  Diebstahl von Fahrzeugen 20.000 €<br/>
				4.  Diebstahl von Polizeifahrzeugen 50.000 €<br/>
				5.  Unfallverursacher / Fahrerflucht nach Unfall 15.000 €<br/>
				6.  Flucht vor der Polizei 27.500 €<br/>
				7.  Widerstand gegen die Staatsgewalt 45.000 €<br/>
				8.  Missachtung pol. Anordnung 20.000 €<br/>
				9.  Beamtenbeleidigung 15.000 €<br/>
				10. Belaestigung eines Polizisten 10.000 €<br/>
				11. Betreten einer pol. Sperrzone 50.000 €<br/>
				12. Zerstoerung von Polizeieigentum 150.000 €<br/>
				13. Mit gez. Waffe durch Stadt 50.000 €<br/>
				14. Aufstand 75.000 €<br/>				
				"
		]
	];

	
//Bussgeldkatalog
	
	player createDiaryRecord ["Zusatzinformationen",
		[
			"Rangkette",
				"
				Rangkette:<br/>
				<br/>
				Ordnungsamt<br/>
				Polizei Praktikant<br/>
				Polizeireferendar<br/>
				Polizeimeister<br/>
				Polizeikommissar<br/>
				Polizeioberkommissar<br/>
				Polizeihauptkommissar<br/>
				Erster Polizeihauptkommissar<br/>
				Bundespolizist<br/>
				Bundespolizei-Pilot<br/>
				SEK Anwärter<br/>
				SEK<br/>
				SEK Führer<br/>
				GSG9 Anwärter<br/>
				GSG9<br/>
				GSG9 Führer<br/>
				Polizei Ausbilder<br/>
				Polizeirat<br/>
				Polizeioberrat<br/>
				Polizeidirektor<br/>
				Leitender Polizeidirektor<br/>
				"
		]
	];
	
	player createDiaryRecord ["Zusatzinformationen",
		[
			"Geschwindigkeiten", 
				"
				In Städten: 30<br/>
				Bundesstraße 70<br/>
				Landstraße 100<br/>
				Hauptstraße: 120Km/h<br/>
				"
		]
	];
	
// Abschnitt zur Steuerung

	player createDiaryRecord ["Steuerung",
		[
			"Fahrzeug Steuerung Polizei",
				"
				Q: Blinker L<br/>
				E: Blinker R<br/>
				Space: Tempomat aktivieren<br/>
				S: Tempomat deaktivieren<br/>
				F: Polizei Sirene<br/>
				Ö: Polizei Warnung<br/>
				Left Shift + F: Polizei Anhaltesignal<br/>
				"
		]
	];
	
	player createDiaryRecord ["Steuerung",
		[
			"Steuerung Polizei",
				"
				Ä: Schranken öffnen<br/>
				O: Nagelbänder legen<br/>
				Left Shift + 2: WantedList<br/>
				Left Shift + 3: Anzeige erstatten<br/>
				Left Shift + R: Festnehmen<br/>
				Left Shift + O: Civ Restrain<br/>
				Left Shift + H: Waffe Holstern<br/>
				Left Windows: Spieler Interaktionsmenü<br/>
				"
		]
	];
	
	player createDiaryRecord ["Steuerung",
		[
			"Fahrzeug Steuerung",
				"
				Q: Blinker L<br/>
				E: Blinker R<br/>
				Space: Tempomat aktivieren<br/>
				S: Tempomat deaktivieren<br/>
				"
		]
	];

	player createDiaryRecord ["Steuerung",
		[
			"Steuerung",
				"
				Z: Spieler Menü<br/>
				U: Fahrzeuge auf/zuschließen<br/>
				U: Häuser Öffnen/Schließen<br/>
				T: Vehicle Trunk<br/>
				^: Spitzhacke<br/>
				Left Shift + 1: Telefon<br/>
				Left Shift + G: Ergeben<br/>
				Left Shift + V: Knockout<br/>
				Left Shift + O: Civ Restrain<br/>
				Left Shift + Space: Springen<br/>
				Left Shift + H: Waffe Holstern<br/>
				Left Windows: Housing option<br/>
				Left Windows: Farmen an Feldern<br/>
				Left Windows: Spieler Interaktionsmenü<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["Lizenzen",
		[
			"Lizenzen",
				"
				Personalausweis 100 €<br/>
				Reisepass 5.000 €<br/>
				Taxischein 50.000 €<br/>
				Führerschein 1.000 €<br/>
				Bootschein 1.000 €<br/>
				Pilotenschein 50.000 €<br/>
				Waffenschein 20.000 €<br/>
				Tauchschein 5.000 €<br/>
				Öl 10.000 €<br/>
				Heroin 45.000 €<br/>
				Marijuana 20.000 €<br/>
				Medmarijuana 75.000 €<br/>
				Gang 500.000 €<br/>
				Rebel 1.000.000 €<br/>
				LKW 25.000 €<br/>
				Diamant 50.000 €<br/>
				Salz 20.000 €<br/>
				Cocaine 80.000 €<br/>
				Sand 14.500 €<br/>
				Eisen 9.500 €<br/>
				Kupfer 9.000 €<br/>
				Zement 6.500 €<br/>
				Trauben 10.000 €<br/>
				Moonshine 80.000 €<br/>
				Meth 65.000 €<br/>
				Eigentumslizenz 500.000 €<br/>
				Stiller 25.000 €<br/>
				Liquor 50.000 €<br/>
				Bottler 25.000 €<br/>
				Mash 100.000 €<br/>
				Uran 150.000 €<br/>
				Silber 30.000 €<br/>
				Gold 60.000 €<br/>
				"
		]
	];