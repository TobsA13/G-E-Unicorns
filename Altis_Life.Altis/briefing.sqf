waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["welcome","Willkommen"];
player createDiarySubject ["serverrules","Hauptregeln"];
player createDiarySubject ["policerules","Polizei Procedures/Regeln"];
player createDiarySubject ["safezones","Sicherheitsgebiet (Kein Töten)"];
player createDiarySubject ["illegalitems","Illegale Aktivitäten"];
player createDiarySubject ["fine","Bußgeldkatalog"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["saves","Was genau gespeichert wird"];
player createDiarySubject ["house","Haussystem: Vorteile"];
player createDiarySubject ["adacrules","ADAC Regeln"];

	player createDiaryRecord ["welcome",
		[
			"Herzlich Willkommen",
				"
				Herzlich willkommen auf dem Server der German Elite Unicorns,<br/>
				Ihr könnt gerne auf unseren Teamspeak3-Server kommen!<br/>
				TS3: g-e-unicorns.de<br/>
				Homepage: http://g-e-unicorns.de/<br/>
				Viel spaß auf unserem Server<br/><br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Die Folgenden Dinge sind Exploits und werden mit Ban bestraft:
					1. Auf unnormalem Weg aus dem Gefängnis frei kommen.
					2. Suizid oder disconnecten um dem Roleplay zu entgehen (z.B.: in getasert, Feuergefecht, gefesselt, etc.)
					3. Duplizieren von Items oder Geld. Wenn dir jemand einen auffällig hohen Geldbetrag sendet melde es, sonst begehst du die Gefahr selbst gebannt zu werden.
					4. Benutzen von gecheateten Items. Falls ein Hacker Items spawnt und du diese benutzt kannst du gebannt werden. Melde dies umgehend bei einem Admin und bleib von den Items fern.
					5. Das benutzen von Bugs die dir ein Vorteil verschaffen ist untersagt./>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Bei Sprengungen (auch Fahrzeugexplosionen), ausrauben, oder töten in diesen Zonen wird der Spieler mit Kick/Ban bestraft.<br/><br/>
					
					Rot markierter Bereich<br/>
					Fahrzeugspawns (Laden und Garage)<br/>
					Waffenläden<br/>
					Bankautomaten<br/>
					Schießplatz<br/>
					Donator Shop<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Banbare Aktivitäten", 
				"
				Einzige und letzte Warung.<br/><br/>
					
					1. Hacken<br/>
					2. Cheaten<br/>
					3. Exploiten (siehe Exploits)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Polizei Interaktion", 
				"
				Die folgenden Aktivitäten sind Straftaten:<br/><br/>
					
					1. Zivilisten können dafür bestarft werden, dass sie bei Polizisten in die Fahrzeuge und Rucksäcke schauen.<br/>
					2. Zivilisten können dafür bestraft werden, dass sie Polizisten verfolgen.<br/>
					3. Zivilisten oder Rebellen die Polizisten ohne RP Grund töten fallen unter RDM (siehe RDM Sektion).<br/>
					4. Das Verfolgen oder Beleidigen von Polizisten kann lange Gefängnisstrafen zur Folge haben.<br/>
					5. Das mutwillige blockieren von Polizisten, die ihrer Arbeit nachgehen, wird bestraft.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boote", 
				"
				Die folgenden Aktivitäten können mit Kick/Ban bestraft werden:<br/><br/>
				
				1. Das wiederholte hereindrücken von Booten ohne Genehmigung vom Besitzer.<br/>
				2. Das hereindrücken von Booten wobei Spieler sterben oder verletzt werden.<br/>
				3. Das überfahren von Schwimmern oder Tauchern.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Luftfahrt", 
				"
				Die folgende Aktivität kann mit einem Kick/Ban bestraft werden:<br/><br/>
				
				1. Mutwilliges rammen mit einem Helikopter in Helikopter, Autos, Häuser kann mit einem Ban bestraft werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Die folgenden Aktivitäten können mit mit Kick/Ban bestraft werden:<br/><br/>
				
				1. Das mutwillige überfahren von Spielern(VRDM).<br/>
				2. Gezielt vor ein fahrendes Fahrzeug werfen um verletzt oder getötet zu werden.<br/>
				3. Das mutwillige rammen von anderen Fahrzeugen um Explosionen zu verursachen.<br/>
				4. Das Stehlen eines Fahrzeugs nur um es zu zerstören.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kommunikationsregeln", 
				"
				Die folgenden Aktivitäten können mit Kick/Ban bestraft werden:<br/><br/>
				
				1. Das Abspielen vom Musik oder spamen im Side Chat.<br/>
				2. Das spamen in jedem Chat Channel, auch Teamspeak.<br/>
				3. Polizisten dürfen im Teamspeak nur kurz in Zivilisten Channels gehen. Zivilisten dürfen sich auch nur kurz in Polizei Channels aufhalten.<br/>
				4. Das durchgeben von Polizeiinformationen während man in Polizei Channels ist.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Random Deathmatching kann mit Kick/Ban bestraft werden:<br/><br/>
				
				1. Jemanden ohne RP-Hintergrund töten ist RDM.<br/>
				2. Zu deklarieren, dass man ein Rebell ist, ist kein RP-Hintergrund zu töten.<br/>
				3. Falls du im Kreuzfeuer getetötet wirst ist das kein RDM.<br/>
				4. Jemanden zu töten in dem Versuch, dich selbst oder andere Persenen zu schützen ist kein RDM.<br/><br/>				
				"
		]
	];
	

	// Police Section
	player createDiaryRecord ["policerules",
		[
			"Krisenüberwindung",
				"
				Die Krisenüberwindung muss vom ranghöchsten Polizist übernommen werden.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Die Staatsbank",
				"
				1. Die Staatsbank ist ein illegales Areal für Zivilisten.
				2. Helikopter die über der Staatsbank fliegen haben diese nach Aufforderung zu verlassen, ansonsten werden sie außer Gefecht gesetzt.<br/>
				2. Falls die Staatsbank überfallen wird, müssen alle verfügbaren Polizeikräfte den Überfall verhindern.<br/>
				3. Tödliche Gewalt kann angewandt werden, je nach Bedingung sollten die Räuber aber verhaftet werden.<br/>
				4. Die Polizei sollte nicht blind um sich schießen, da Unbeteiligte verletzt werden könnten.<br/>
				5. Jeder Zivlist, der in irgendeiner Weiße die Räuber unterstützt wird als Komplize angesehen.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Helikopterlandungen",
				"
				1. Helikopter dürfen in Städten nur auf diesen Punkten Landen.<br/>
				Kavala: Helikoptergarage.<br/>
				Athira: Sportfeld.<br/>
				Pyrgos: Felder am Stadtrand<br/>
				Sofia: Felder am Stadtrand<br/>
				Dörfer: beliebige Auswahl<br/><br/>
				
				2. Helikopter sollten nicht auf der Straße landen.<br/>
				3. Die Polizei darf Landungen verbieten.<br/>
				4. Helikopter dürfen über Städten nicht niedriger als 150m fliegen.<br/>
				5. Helikopter dürfen über Städten nicht still schweben.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegale Bereiche", 
				"
				1. Betrete keinen illegalen Bereich ohne, dass er Teil einer Razzia ist.<br/>
				2. Falls du Jemanden in einen illegalen Bereich verfolgst solltest du um Verstärkung bitten.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrouillie", 
				"
				1. Die Polizei sollte die Straßen und Städte/Dörfer nach verlassenen Fahrzeugen und kriminellen Aktivitäten durchsuchen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Polizisten sollten Checkpoints in strategischen Gebieten errichten um illegale Aktivitäten zu unterbinden und um die Sicherheit auf den Straßen zu gewährleisten.<br/><br/>
				
				1. Ein Checkpoint darf nicht weniger als 500m von einem illegalen Bereich entfernt sein.<br/>
				2. Checkpoints sollten nur auf Straßen errichtet werden.<br/>
				3. Checkpoints dürfen nicht auf der Karte markiert werden.<br/><br/>


				Checkpoint Prozedur:<br/>
				1. Der Fahrer sollte das Fahrzeug in einer sicheren Distanz anhalten und den Motor ausschalten.<br/>
				2. Frage den Fahrer nach weiteren Passagieren und Waffen.<br/>
				3. Sag dem Fahrer sie sollen aussteigen und die Waffen senken(falls vorhanden), gieb ihnen hierbei eine vernünftige Zeit zum reagieren.<br/>
				4. Frag sie woher sie kommen und wohin sie fahren.<br/>
				5. Frag sie ob du sie durchsuchen darfst.<br/>
				6. Falls sie es erlauben fassel und durchsuche sie.<br/>
				7. Nachdem die Durchsuchung getan ist erlaube ihnen wieder ins Fahrzeug steigen zu können und wegzufahren.<br/>
				8. Falls etwas illegales gefunden wird müssen Tickets oder Gefängnisstrafen erteilt werden (abhängig vom Delikt).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				1. Fahrzeuge die vernünftig geparkt wurden sollten in Ruhe gelassen werden.<br/>
				2. Fahrzeuge die verlassen, zerstört und ohne Fahrer sind können beschlagnahmt werden.<br/>
				3. Boote sollten vernünftig in der Küste oder im Hafen geparkt werden.<br/>
				4. Beschlagnahmen ist ein essentieller Bestandteil eines Polizisten, es hält den Server sauber und weniger laggy.<br/>
				6. Im Zweifelsfall solltest du den Besitzer benachrichtigen.<br/>
				7. Bewaffnete Polizeifahrzeuge sollten nur in Krisensituationen genutzt werden.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeiten", 
				"
				Die folgenden Geschwindigkeitsregelungen sind einzuhalten und von der Polizei su überwachen:<br/><br/>
				
				In Städten darf nicht schneller als 50km/h gefahren werden.<br/>
				Am Marktplatz in Kavala darf nicht schneller als 30km/h gefahren werden.<br/>
				Außerhalb von Städten gibt es keine Geschwindigkeitsbergrenzungen<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Stadt-Patrouillie", 
				"
				1. Polizisten sollten immer in Kavala, Athira, Pyrgos und Sofia patrouillieren.<br/>
				2. Polizei HQ's sind illegal für Zivilisten, nicht aber der Aufenthalt in der Nähe des Polizei HQ's.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gefängnisstrafe und Tickets",
				"
				Gefängnisstrafen sollten nur an Kriminelle vergeben werden die sich selbst oder Andere gefährden.<br/><br/>

				1. Du sollst niemanden inhaftieren der bereits ein Ticket für die Straftat bezahlt hat.<br/>
				2. Du musst dem Kriminellen erklären warum er inhaftiert wird.<br/>
				3. Falls ein Zivilist gesucht wird solltest du ihn nicht töten sondern festnehmen, es sei denn es sind Umstände gegeben in denen der gebrauch von tödlicher Gewalt unumgehbar ist.<br/><br/>


				Tickets sollten nur an Kriminelle vergeben werden die ein Gesetz verletzt haben.<br/><br/>

				1. Die Weigerung ein Ticket zu bezahlen hat eine Gefängnisstrafe zur Folge und das Geld für das Ticket wird von der Bank abgebucht.<br/>
				2. Das Ausstellen eines Tickets, das nicht unter die Norm des Bußgeldkatalogs fällt hat die Entlassung aus dem Polizeidienst zur Folge.<br/><br/>
				
				Die Höhe der Tickets können im Bußgeldkatalog nachgeschlagen werden.<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Waffen", 
				"
				Ein Polizist darf niemals einen Zivilist mit Waffen versorgen. Tut er es doch wird er aus dem Polizeidienst entlassen oder schlimmeres.<br/><br/>

				Legale Waffen für Zivilisten die einen Waffenschein besitzen sind:<br/><br/>
				
				1. P07 (ohne Schalldämpfer)<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. PDW2000<br/><br/>

				Alle anderen Waffen(auch P07 + Schalldämpfer(Polizeiwaffe)) sind illegal.<br/><br/>

				1. Zivilisten sollten ihre Waffen innerhalb von Städten wegstecken.<br/>
				2. Zivilisten sollten ihre Waffen außerhalb von Städten in der Nähe von Polizisten runterhalten(2x Strg).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nutzung von nicht tödlicher Gewalt",
				"
				Die Taser-Pistole ist die einzige Form von nicht tödlicher Gewalt.<br/><br/>

				1. Taser sollten genutzt werden um Zivilisten außer Gefecht zu setzen und zu verhaften.<br/>
				2. Sinnloses herumgeschieße mit dem Taser kann eine Suspension zur Folge haben.<br/>
				3. Benutzen sie den Taser nicht nur um ihren Willen durchzusetzen sondern beachten sie die geltenden Gesetze.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzien",
				"
				Bei Razzien betritt die Polizei Bereiche in welchen sie kriminelle Aktivitäten vermutet.<br/><br/>

				1. Razzien müssen von einem hochrangigen Polizeimitglied durchgeführt werden.<br/>
				2. Alle Zivilisten im Bereich der Razzia werden gefesselt und durchsucht. Wenn nichts illegales gefunden wurde musst du sie frei lassen.<br/>
				3. Wenn etwas illegales gefunden wurde wird mit der üblichen Prozedur(Gefängnisstrafe oder Ticket) fortgefahren.<br/>
				4. Nachdem der Bereich sicher ist müssen alle Beamten den Ort verlassen.<br/>

				Beim Camping betritt die Polizei einen Bereich und wartet dort auf Kriminelle.<br/><br/>

				1. Polizisten dürfen in der Staatsbank campen wenn sie einen Überfall vermuten.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Kommandokette",
				"
				Der Chef der Polizei ist ein Server Admin. Der Polizist mit dem höchsten Rang der online ist vergibt die Befehle. Die Verweigerung eines Befehls kann eine Degradierung, Suspendierung oder Entlassung zur Folge haben.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nutzung von tödlicher Gewalt",
				"
				1. Die Nutzung von tödlicher gewalt ist nur erlaubt wenn Leben in Gefahr sind.<br/>
				2. Sinnloses herumgeschieße mit scharfer Munition kann eine Entlassung zur Folge haben.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regel",
				"
				1. Alle Polizisten müssen auf unserem Teamspeak in den Polizei Channels sein. Wenn dies nicht der Fall ist kann es eine Degradierung, Suspendierung oder Entlassung zur Folge haben. <br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Ein Rebel erhebt sich mit Waffengewalt gegen die Regierung, in diesem Fall gegen die Polizei. Trotzdem gelten für diese alle anderen RP-Regeln.<br/><br/>
				
				1. Widerstand ist keine Entschuldigung für Random Deathmatching.<br/>
				2. Eine plausible RP Handlung soll hinter jeder Attacke stecken.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				1. Mitglied einer Gang zu sein ist nicht illegal.<br/>
				2. Sich ein Ganggebiet aufzuhalten ist nicht illegal, außer wenn man dort illegale Aktivitäten ausübt.<br/>
				3. Gangs können Ganggebiete halten und kontrollieren. Andere Gangs können diese einnehemen.<br/>
				4. Um einer anderen Gang den Krieg zu erklären muss der eine Leader dem Anderem global den Krieg erklären. Außerdem müssen die Mitglieder beider Gangs genannt werden.<br/>
				5. Gangs dürfen keine unbeteiligten oder unbewaffneten Zivilisten töten.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Illegale Fahrzeuge sind:<br/><br/>

				1. alle Polizeifahrzeuge<br/>
				2. alle gepanzerten Fahrzeuge<br/>
				3. alle bewaffneten Fahrzeuge<br/>
				4. Karts (dürfen nur auf der Rennstercke gefahren werden)<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				Illegale Waffen sind:<br/><br/>

				1. alle Polizeiwaffen (MX Series, P07 + Schalldämpfer)<br/>
				2. Katiba Serien<br/>
				3. TRG Serien<br/>
				4. Mk.20 Serien<br/>
				5. Mk.18 ABR<br/>
				6. SDAR<br/>
				7. Rahim
				8. Granaten<br/>
				9. Rucksackladungen<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Items",
				"
				Illegale Items sind:<br/><br/>
				
				1. Schildkröten<br/>
				2. unverarbeites Kokain und verarbeitetes Kokain<br/>
				3. Heroin<br/>
				4. Marihuana und Cannabis<br/><br/>
				
				Der Besitz dieser Items und der Gebrauch sind strafbar.<br/><br/>
				"
		]
	];
	player createDiaryRecord["fine",
		[
			"Zivilisten:",
			"
				Waffen: (Wird immer mit Gefängnis bestraft)<br/><br/>
				- Mit gezogener Waffe durch die Stadt laufen: 5.000$ (keine Inhaftierung)<br/>
				- Besitz von verbotenen Waffen: 20.000$<br/>
				- Besitz von Polizei-Waffen: 35.000$<br/>
				- Schusswaffengebrauch innerhalb von Städten: 10.000$<br/>
				
				Personen & Gegenstände:<br/>
				- Verursachen von Sachschäden: 5.000$ + Entschädigung<br/>
				- Sich als Polizist aus geben: 10.000$ + 5min. Inhaftierung<br/>
				- Anschießen von Personen: 25.000$<br/>
				- Überfall auf Personen:: 20.000$<br/>
				- Mord einer Person: 50.000$ + Inhaftierung 10Min<br/><br/>
				
				Schwere Straftaten:<br/>
				- Beteiligung illegaler Straßensperren: 10.000$<br/>
				- Fahren von Illegale Fahrzeuge: 50.000$ + Beschlagnahmung<br/>
				- Geiselnahme je Teilnehmer: 125.000$ pro Geisel + 10min. Inhaftierung<br/>
				- Bankraub (erfolglos): 65.000$ je Teilnehmer + 10min. Inhaftierung<br/>
				- Bankraub (erfolgreich): Beute + 200.000$<br/><br/>
				
				Illegale Waren: (Das Fahrzeug wird vom ADAC abgeschleppt)<br/>
				- Besitz von Haschisch jeder Art: 1/2 des Marktwertes der Drogen + Inhaftierung 10Min<br/>
				- Besitz von Kokain jeder Art: 1/2 des Marktwertes der Drogen + Inhaftierung 10Min<br/>
				- Besitz von Heroin jeder Art: 1/2 des Marktwertes der Drogen + Inhaftierung 10Min<br/>
				- Besitz von Schildkröten: 1/2 des Marktwertes der Ware + Inhaftierung 10Min<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Wasserfahrzeuge:",
			"
				- Boote grundlos schieben: 3.000$<br/>
				- Schwimmende Leute behindern: 8.000$<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Luftverkehrs Ordnung (LuftVO):",
			"
				- Landung in einer Landeverbotszone: 50.000$<br/>
				- Fliegen in einer Flugverbotszone: 50.000$<br/>
				- Landen auf einer Straße (ohne Aufforderung): 10.000$<br/>
				- Fliegen ohne Kollisionslichter: 6.000$<br/>
				- Fliegen unter 150m über einer Stadt: 10.000$<br/>
				- Schweben über einer Stadt: 50.000$ + 10min. Inhaftierung<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Straßenverkehrs-Ordnung (StVO):",
			"
				Ordnungswidrigkeiten:<br/>
				- Falsches abstellen vom Fahrzeug: 500$ + Abschleppen des Fahrzeuges<br/>
				- Fahren ohne Licht bei Dunkelheit oder Dämmerung: 550$<br/>
				- Fahren auf der falschen Straßenseite: 1.000$<br/>
				- Fahren abseits der Straße: 1.000$<br/>
				- Missachtung der Straßenschilder (außer Km/h-Begrenzungen): 750$<br/>
				- Missachtung Rechts vor Links: 750$<br/><br/>
				
				Straftaten:<br/>
				- Verursachen eines Unfalles: 5.000$ + Begleichung des Schadens<br/>
				- Unfallflucht: 10.000$<br/>
				- Anfahren von Personen: 2.500$<br/>
				- Überfahren von Personen: 25.000$<br/>
				
				Geschwindigkeitsübertrettung:<br/>
				- 10-20 km/h zu schnell: 1.200$ (gefahren: 60-70km/h)<br/>
				- 21-30 km/h zu schnell: 2.500$ (gefahren: 71-80km/h)<br/>
				- 31-50 km/h zu schnell: 15.000$ (gefahren: 81-100kmh)<br/>
				- 51+km/h zu schnell: 30.000$ (gefahren: 101-Max km/h)<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Polizeibeamten:",
			"
				- Missachtung polizeilicher Anordnung: 5.000$<br/>
				- Wiederholte Missachtung Anordnung: 5.000$ + Inhaftierung 5min.<br/>
				- Betreten von Polizei-Gelände: 2.500$<br/>
				- Wiederholtes betreten von Polizei-Gelände: 5min. Inhaftierung<br/>
				- Belästigung eines Polizeibeamten: 2.500$<br/>
				- Wiederholte belästigung eines Polizeibeamten: 5min. Inhaftierung<br/>
				- Beamtenbeleidigung (Spielerisch): 5.000$<br/>
				- Widerstand gegen die Staatsgewalt: 10.000$<br/>
				- Beschuss eines Polizeibeamten: 40.000$<br/>
				- Töten eines Polizeibeamten: 100.000+Inhaftierung 30min<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Lizenzen & Scheine:",
			"
				- PKW Führerschein: 1.500$<br/>
				- LKW Führerschein: 30.000$<br/>
				- Bootsschein: 25.000$<br/>
				- Flugschein: 50.000<br/>
				- Waffenbesitz ohne Lizenz: 30.000$<br/><br/>
			"
		]
	];
	player createDiaryRecord["fine",
		[
			"Diebstahl:",
			"
				- (Versuchter) Taschendiebstahl: 1.500$<br/>
				- Wiederholten Taschendiebstahl: 5min. Inhaftierung<br/>
				- Versuchter Diebstahl eines zivilen Fahrzeuges: 2.500$<br/>
				- Diebstahl eines zivilen Fahrzeuges: 5.000$<br/>
				- Versuchter Diebstahl Polizei Fahrzeuges: 25.000$<br/>
				- Diebstahl Polizei Fahrzeuges: 50.000$<br/><br/>
			"
		]
	];
	player createDiaryRecord ["controls",
		[
			"controls",
				"
				Z: öffnet Spielermeü<br/>
				U: aufschließen und zuschließen von Autos<br/>
				F: Polizeisirene (nur Polizist)<br/>
				T: Fahrzeugkofferraum<br/>
				Linkes Shift + R: fesseln (nur Polizist)<br/>
				Linkes Shift + G: umschlagen (nur Zivilist, um auszurauben)<br/>
				Linkes Shift + L: aktiviert Blaulicht (nur Polizist)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["saves",
		[
			"Was genau gespeichert wird:",
				"
					Auf unserem Server werden i.d.R. alle Items gespeichert. Das heißt:<br/><br/>
					
					Gear von Polizisten <br/>
					Gear von Zivilisten <br/>
					Inventar (Z-Menü) - Unbedingt synchronisieren!<br/>
					Hausinventar (Synchronisiert, wenn man auf 'Schließen' drückt)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["house",
		[
			"Haussystem: Vorteile",
				"
					Du kannst hier ein Haus kaufen, wenn du dir vorher eine Hausbesitzerlizenz beim Lizenzhändler besorgt hast.
					Suche nach einem Schild mit dem Haussysmbol und öffne im Scroll-Menü die Haussteuerung.<br/><br/><br/>
					
					
					Ein eigenes Haus bringt dir folgende Vorteile:<br/><br/>
					
					* Du kannst in deinem Haus respawnen.<br/>
					* Du kannst beliebige virtuelle Items (vom Z-Inventar) in deinem Haus speichern. Es fasst standardmäßig 100 Gewichtsplätze.<br/>
					* Wenn du mehr Inventarplatz für dein Haus willst, dann kaufe dir 1 Kiste und benutze sie in der Nähe deines Hauses.<br/>
					* Niemand weiß wo du wohnst, außer er beobachtet dich oder du erzählst es ihm.<br/>
					* Direkter Zugriff auf die Autogarage, wenn du eine Garage kaufst.<br/><br/>

					Aber Vorsicht! Die Polizei kann das Haus durchsuchen!<br/><br/>
				"
		]
	];
	
///////////////////////////////////////////// ADAC ///////////////////////////////////////////////
	
	player createDiaryRecord["adacrules",
		[
			"Voraussetzungen", 
				"
				1. Spielzeiten auf dem Server nicht eingeschränkt.<br/><br/>
				2. Sauberes und erwachsenes Verhalten<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["adacrules",
		[
			"Sonstige Voraussetzungen", 
				"
				1. Gebildete und gute Aussprache.<br/><br/>
				2. Ruhiges gemüht und Geduld.<br/><br/>
				3. Höflichkeit<br/><br/>
				4. Häufige Anwesenheit wenn möglich<br/><br/>
				5. Einhaltung der gesamten Regeln<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["adacrules",
		[
			"Ausbildungsziele", 
				"
				1. Fahrprüfung SUV/Offroader.<br/><br/>
				2. Fahrprüfung LKW / Abschleppprüfung.<br/><br/>
				3. Flugprüfung<br><br/>
				4. Unfallsicherung<br/><br/>
				5. Zeitprüfung zum Unfallort<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["adacrules",
		[
			"Verbote", 
				"
				1. Waffen<br/><br/>
				2. Illegale Items<br/><br/>
				3. RDM<br/><br/>
				4. Missachtung von Nachrichten<br/><br/>
				5. Nichteinhaltung der Regeln<br/><br/>
				6. Taxifahrten<br/><br/>
				7. Begleitschutz<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["adacrules",
		[
			"Aufgaben",
				"
				1. Der ADAC ist für die Fahrzeuge und deren Insassen in Not (Unfall) einzusetzen.<br/><br/>
				
				2. Abschleppen von Fahrzeugen an Verkehrsbehinderungen und Unfallstellen (Hinzuziehung der Polizei).<br/><br/>
				3. Der ADAC kann über das Handy mit einer Nachricht (Information: Koordinaten, Name, Grund) angefordert werden.<br/><br/>
				4. Sobald der ADAC gefordert wird, muss dieser eine Rechnung für Anfahrt, Reparatur, Transport und/oder Reserve Tank Befüllung erstellen.<br/><br/>
				   Die Kosten belaufen sich folgend:<br/><br/>
				   - Anfahrt: Kilometer x 500$ == (15KM x 500$ = 7500$)<br/><br/>
				   - Reparatur: Toolkit = 500$<br/><br/>
				   - Reserve Tankfüllung: Reservekanister = 400$<br/><br/>
				   - Abschleppkosten = 1500$<br/><br/>

					
					Die Kosten mit einer ADAC-Clubmitgliedschaft belaufen sich wie folgend:<br/><br/>
				   - Anfahrt: Kilometer x 375$ == (15KM x 375$ = 5625$)<br/><br/>
				   - Reparatur: Toolkit = 300$<br/><br/>
				   - Reserve Tankfüllung: Reservekanister = 300$<br/><br/>
				   - Abschleppkosten = 1000$<br/><br/>
				"
		]
	];	

	player createDiaryRecord ["adacrules",
		[
			"Fahrzeug Nutzung",
				"
				1. Alle Fahrer des ADAC´s haben sich nach den Straßenverkehrsregeln zu richten.<br/><br/>
				2. Missbrauch eines Einsatzfahrzeuges für Zivile zwecke sind untersagt.<br/><br/>
				3. Der Helikopter des ADAC kann ausschließlich nur von der Polizei und ADAC-Leitern geordert werden.<br/><br/>
				4. Jeder ADAC-Mitarbeiter hat dafür sorge zu tragen, das seine Ausrüstung (ToolKit, etc.) vollständig ist.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["adacrules",
		[
			"Teamspeak Regeln",
				"
				1. Alle ADAC-Mitarbeiter haben sich während Ihrer Dienstzeit im Teamspeak(g-e-unicorns.de) einzufinden<br/>
				2. Jeder ADAC-Mitarbeiter muss vor seinem einstieg auf den Server sich im Teamspeak eingefunden haben.<br/><br/>
				"
		]
	];