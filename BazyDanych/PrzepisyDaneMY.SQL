-- Tabele z pliku PrzepisyStrukturaMY.sql muszą zostać utworzone najpierw.

USE PrzepisyPrzyklad;
INSERT INTO Kategorie_skladnikow
 VALUES (1, 'Przyprawy');
INSERT INTO Kategorie_skladnikow
  VALUES (2, 'Mięsa');
INSERT INTO Kategorie_skladnikow
  VALUES (3, 'Warzywa');
INSERT INTO Kategorie_skladnikow
  VALUES (4, 'Oleje');
INSERT INTO Kategorie_skladnikow
  VALUES (5, 'Makarony');
INSERT INTO Kategorie_skladnikow
  VALUES (6, 'Ziarna');
INSERT INTO Kategorie_skladnikow
  VALUES (7, 'Mąki');
INSERT INTO Kategorie_skladnikow
  VALUES (8, 'Nabiał');
INSERT INTO Kategorie_skladnikow
  VALUES (9, 'Płyny');
INSERT INTO Kategorie_skladnikow
  VALUES (10, 'Owoce morza');
INSERT INTO Kategorie_skladnikow
  VALUES (11, 'Masła');
INSERT INTO Kategorie_skladnikow
  VALUES (12, 'Sery');
INSERT INTO Kategorie_skladnikow
  VALUES (13, 'Sosy');
INSERT INTO Kategorie_skladnikow
  VALUES (14, 'Dressingi');
INSERT INTO Kategorie_skladnikow
  VALUES (15, 'Sosy pieczeniowe');
INSERT INTO Kategorie_skladnikow
  VALUES (16, 'Toppingi');
INSERT INTO Kategorie_skladnikow
  VALUES (17, 'Owoce');
INSERT INTO Kategorie_skladnikow
  VALUES (18, 'Chipsy');
INSERT INTO Kategorie_skladnikow
  VALUES (19, 'Dodatki');
INSERT INTO Kategorie_skladnikow
  VALUES (20, 'Dodatki płynne');
INSERT INTO Kategorie_skladnikow
  VALUES (21, 'Jedzenie paczkowane');
INSERT INTO Kategorie_skladnikow
  VALUES (22, 'Zioła');
INSERT INTO Kategorie_skladnikow
  VALUES (23, 'Sorbety');
INSERT INTO Kategorie_skladnikow
  VALUES (24, 'Alkohole');
 
INSERT INTO Miary
  VALUES (1, 'Dekagram');
INSERT INTO Miary
  VALUES (2, 'Szklanka');
INSERT INTO Miary
  VALUES (3, 'Łyżeczka');
INSERT INTO Miary
  VALUES (4, 'Łyżka');
INSERT INTO Miary
  VALUES (5, 'Kilogram');
INSERT INTO Miary
  VALUES (6, 'Szczypta');
INSERT INTO Miary
  VALUES (7, 'Kawałek');
INSERT INTO Miary
  VALUES (8, 'Plasterek');
INSERT INTO Miary
  VALUES (9, 'Odrobina');
INSERT INTO Miary
  VALUES (10, 'Puszka');
INSERT INTO Miary
  VALUES (11, 'Torebka');
INSERT INTO Miary
  VALUES (12, 'Dodatki płynne');
INSERT INTO Miary
  VALUES (13, 'Główka');
INSERT INTO Miary
  VALUES (14, 'Garść');
INSERT INTO Miary
  VALUES (15, 'Kiść');
INSERT INTO Miary
  VALUES (16, 'Ząbek');
INSERT INTO Miary
  VALUES (17, 'Sztuka');
INSERT INTO Miary
  VALUES (18, 'Butelka');
INSERT INTO Miary
  VALUES (19, 'Do smaku');
INSERT INTO Miary
  VALUES (20, 'Opakowanie');
INSERT INTO Miary
  VALUES (21, 'Słoik');
INSERT INTO Miary
  VALUES (22, 'Listek');
INSERT INTO Miary
  VALUES (23, 'Litr');
INSERT INTO Miary
  VALUES (24, 'Filiżanka');
INSERT INTO Miary
  VALUES (25, 'Plaster');
INSERT INTO Miary
  VALUES (26, 'Miarka');
 
INSERT INTO Kategorie_przepisow
  VALUES (1, 'Dania główne');
INSERT INTO Kategorie_przepisow
  VALUES (2, 'Warzywa');
INSERT INTO Kategorie_przepisow
  VALUES (3, 'Dania mączne');
INSERT INTO Kategorie_przepisow
  VALUES (4, 'Sałatki');
INSERT INTO Kategorie_przepisow
  VALUES (5, 'Przystawki');
INSERT INTO Kategorie_przepisow
  VALUES (6, 'Desery');
INSERT INTO Kategorie_przepisow
  VALUES (7, 'Zupy');
 
INSERT INTO Przepisy
  VALUES (1, 'Gulasz irlandzki', 1, 'Pokrój wołowinę na dość drobne kawałki. 
Pokrój wołowinę na dość drobne kawałki. 
Podduś mięso.
Dodaj wodę i guinessa.
Posiekaj cebulę, ziemniaki i marchew w centymetrową kostkę.
Dodaj do gulaszu.
Gotuj na wolnym ogniu do miękkości.', 
   NULL);
INSERT INTO Przepisy
  VALUES (2, 'Sos Salsa', 5, 'Posiekaj papryczki jalapeno na drobne kawałki.
Dokładnie zmieszaj wszystkie składniki w misce i pozostaw w lodówce na jakąś godzinę.
Podawaj z ulubionymi chipsami kukurydzianymi.', 
   NULL);
INSERT INTO Przepisy
  VALUES (3, 'Nachos à la macho', 5, 'Pokrój papryczki jalapeno w poprzek (w talarki) i odstaw.
Zetrzyj cheddar na tarce i odstaw.
Posiekaj cebulę i odstaw.
Rozłóż chipsy typu tortilla na dużym, płaskim naczyniu do mikrofalówki.
Posyp chipsy tartym serem, siekaną cebulą i jalapeno.
Wstaw naczynie do kuchenki mikrofalowej i podgrzewaj aż ser zacznie się topić; 3-4 minuty na dużej mocy.
Gdy ser rozpuści się, wyjmij naczynie i udekoruj całość czarnymi oliwkami.', 
   'Do tego dania możesz dodać pół filiżanki pokrojonych w kostkę pomidorów. Możesz dodać je przed podgrzaniem w kuchence mikrofalowej albo potem, tuż przed dodaniem czarnych oliwek.');
INSERT INTO Przepisy
  VALUES (4, 'Fasolka z czosnkiem', 2, 'Odetnij i wyrzuć końce, a potem przepłucz fasolkę w zimnej wodzie.
Przeciśnij dwa ząbki czosnku.
Podgrzej olej na patelni, na dość dużym ogniu.
Gdy tłuszcz będzie gorący, wrzuć zieloną fasolkę i czosnek.
Mieszaj bez przerwy przez około cztery minuty.
Wyłóż fasolkę do naczynia i posyp mielonymi orzechami.', 
   'Uważaj, by nie przypalić tłuszczu. Pilnuj go podczas podgrzewania.');
INSERT INTO Przepisy
  VALUES (5, 'Makaron fettuccine Alfredo', 1, 'Duży garnek wypełnij w dwóch trzecich wodą. Dodaj łyżeczkę soli i łyżeczkę oleju roślinnego. Doprowadź do wrzenia.
Zmniejsz ogień, wrzuć makaron i przemieszaj. Ugotuj makaron al dente.
Gdy makaron będzie prawie gotowy (po jakichś pięciu minutach), rozpuść masło w rondelku, na małym ogniu.
Kiedy masło się rozpuści, dodaj tłustą śmietanę. Zwiększ ogień i mieszaj, aż mikstura trochę zgęstnieje.
Zdejmij patelnię z ognia, gdy sos będzie gotowy.
Odcedź makaron po ugotowaniu i dodaj go do sosu.
Dodaj do potrawy około 80 g sera i przemieszaj całość.
Dodaj kolejne 80 g sera oraz biały pieprz i delikatnie przemieszaj.', 
   NULL);
INSERT INTO Przepisy
  VALUES (6, 'Pollo z kurczakiem', 1, 'Dokładnie umyj kawałki kurczaka pod zimną wodą. Osusz i odstaw.
Wyciśnij czosnek i zmieszaj go z solą, pieprzem i pieprzem cayenne. Zadbaj o to, by wszystkie składniki dobrze się połączyły.
Posmaruj przyprawową pastą kawałki kurczaka (do smaku).
Włóż kurczaka do brytfanny i zapiekaj przez kwadrans. Obróć kawałki na drugą stronę i zapiekaj kolejny kwadrans. Wreszcie obróć go po raz ostatni i zapiekaj przez 35 - 40 minut.
Po zapieczeniu wyjmij brytfannę z piekarnika i pozwól jej odstać 10 minut.', 
   'Wstępnie rozgrzej piekarnik do 200 stopni.
Dno brytfanny przykryj arkuszem folii aluminiowej, a następnie zalej wodą na wysokość około centymetra. Dzięki temu tłuszcz wytapiający się z kurczaka będzie skapywał do wody, a nie rozpryskiwał wewnątrz piekarnika i przypalał się, dymiąc. Folia ułatwia też doszorowanie brytfanny.');
INSERT INTO Przepisy
  VALUES (7, 'Letnia sałatka Mike''a', 4, 'Opłucz sałatę i potnij na niewielkie kawałki. (Jeśli chcesz, możesz ją "podrzeć").
Opłucz grzyby, usuń nóżki i potnij na grube, półcentymetrowe kawałki.
Obierz ogórek i pokrój go na półcentymetrowe plastry.
Pokrój pomirody na centymetrowe ząbki.
Umyj rzodkiewki, odetnij korzonek i zieleninę, i pokrój na średniej grubości plasterki.
Wymieszaj wszystkie składniki w dużej salaterce i dodaj ulubiony dressing na bazie sosu vinaigrette.', 
   NULL);
INSERT INTO Przepisy
  VALUES (8, 'Deser Trifle', 6, 'Przygotuj galaretkę oraz krem custard według instrukcji.
W wysokich naczyniach deserowych nałóż około centymetrową warstwę biszkopta. Nasącz warstwę ciasta galaretką. Nałóż cienką warstwę dżemu malinowego. Nałóż warstwę kremu custard.
Nakładaj kolejne warstwy biszkopta, dżemu i kremu aż do wypełnienia naczynia (na wierzchu powinien być krem custard), łącznie 2, 3 warstwy.
Włóż do lodówki na 2 godziny. Ozdób kolorową posypką i podaj.', 
   'Jeśli chcesz zrobić trochę "mocniejszy" deser, zastąp połowę wody w przepisie na galaretkę brandy albo innym ulubionym alkoholem.');
INSERT INTO Przepisy
  VALUES (9, 'Stek wołowy', 1, 'Rozłóż wołowinę na ruszcie w brytfannie do pieczenia z rusztem.
Zrób pastę z mielonego czosnku, soli i pieprzu. Posmaruj pastą mięso z wierzchu.
Piecz w temperaturze 165 stopni przez około 20 minut (na każde pół kilo mięsa) albo do osiągnięcia wewnątrz mięsa temperatury 70 stopni (średnio krwisty; medium rare).
Wyjmij brtyfannę z piekarnika i odczekaj kwadrans przed krojeniem. Wytopiony tłuszcz możesz zostawić do przyrządzenia sosu albo puddingu Yorkshire.', 
   NULL);
INSERT INTO Przepisy
  VALUES (10, 'Pudding Yorkshire', 3, 'Wbij jajka do naczynia blendera i dodaj wodę. Podczas miksowania stopniowo dodawaj mąkę. Dodaj sól, mleko i miksuj przez jeszcze 30 sekund.
Pozostaw w lodówce na 1 godzinę lub dłużej.
Podgrzej brytfannę z tłuszczem wołowym do 230 stopni. Wlej przygotowaną mieszaninę. Zapiekaj w bardzo gorącym piekarniku przez 20 - 25 minut, albo do chwili gdy masa urośnie i zrumieni się na złoty brąz. Wyjmij brytfannę i potnij danie na kawałki. Podawaj z ciemnym sosem pieczeniowym.', 
   NULL);
INSERT INTO Przepisy
  VALUES (11, 'Ryba à la Veracruz', 
   1, 'Podgrzej dwie łyżki oliwy w półtoralitrowym rondlu. Posiekaj cebulę i lekko podduś w oliwie.
Odsącz pomidory z puszki (możesz użyć świeżych, obranych pomidorów, jeśli wolisz) i zmiksuj przy użyciu blendera.
Do zmiksowanych pomidorów dodaj wszystkie przyprawy, cienko pokrojone papryczki jalapeno oraz zielone oliwki. Przelej mieszaninę pomidorów i przypraw do rondla z cebulą i próż pod przykryciem, na bardzo małym ogniu, przez 30 minut.
Gdy sos dochodzi, obierz i ugotuj ziemniaki.
Kiedy ziemniaki będą prawie ugotowane, rozgrzej resztę oliwy na dużej patelni. Opłucz i lekko oprósz kawałki ryby w mieszance mąki, soli i pieprzu. Usmaż rybę, jednokrotnie ją obracając, aż będzie gotowa.
Ułóż usmażone ryby na dużym talerzu. Dookoła rozłóż ugotowane ziemniaki. Polej rybę sosem, posyp siekaną natką pietruszki i od razu podawaj.
Porcja na 6 osób.', 
   'Zamiast ryby podanej w przepisie możesz użyć dowolnych filetów z białej ryby. Jeżeli zastosujesz solone pomidory z puszki, zmniejsz ilość soli w sosie o połowę. Dobierz ilość papryczek jalapeno w sosie do smaku, są ostre!');
INSERT INTO Przepisy
  VALUES (12, 'Szparagi', 2, 'Umyj szparagi i usuń zdrewniałe końce (jeśli są) w ich dolnej części. Ułóż na ruszcie do gotowania na parze, na dużym rondlu. Nałóż na szparagi sporą ilość masła i posyp siekanym czosnkiem. Gotuj na parze do miękkości - nie więcej niż 5 minut, jeśli szparagi są duże. Podawaj od razu.', 
   'Możesz schłodzić ugotowane szparagi i podawać z ulubionym dipem, jako przekąskę.');
INSERT INTO Przepisy
  VALUES (13, 'Tourtière (francusko-kanadyjski placek z wieprzowiną)', 
   1, 'Zrumień mieloną wieprzowinę i posiekaną cebulę, mieszając i rozdrabniając mięso. Dodaj przyprawy, sól i pieprz. Próż bez przykrycia przez 45 minut, od czasu do czasu mieszając. Podgrzej piekarnik do 190 stopni. Przygotuj kruche ciasto. Wyłóż 25-centymetrową formę połową rozwałkowanego ciasta. Odsącz wieprzowinę i zmieszaj z bułką tartą. Dopraw do smaku solą i pieprzem, jeśli uznasz, że jest mało wyraziste. Nałóż wymieszane mięso na ciasto i przykryj drugą porcją rozwałkowanego ciasta. Uformuj brzegi ciasta i natnij górny placek w kilku miejscach. Zapiekaj w piekarniku rozgrzanym do temperatury 190 stopni przez godzinę, w razie potrzeby osłaniając brzegi ciasta folią aluminiową. Podawać na gorąco lub na zimno.', 
   'Koniecznie użyj świeżej, mielonej wieprzowiny a nie przetworów mięsnych. Jeśli wolisz, możesz użyć mieszanki mięsa wieprzowego i wołowego.');
INSERT INTO Przepisy
  VALUES (14, 'Filety z łososia w pergaminie', 1, 
   'Potnij marchew, por i paprykę na długie, cienkie paski, i próż przez kilka minut. Odcedź i przepłucz warzywa w zimnej wodzie, a potem odstaw na bok. Podgrzej piekarnik do 200 stopni. Nasmaruj masłem 4 duże arkusze pergaminu. Rozdziel warzywa na części; połowę każdej ułóż po jednej stronie pergaminu. Połóż filet z łososia na warzywach. Na wierzchu filetów umieść pozostałe warzywa. Polej każdy filet jedną łyżeczją białego wina i skrop sokiem cytrynowym. Na wierzch nałóż odrobinę roztopionego masła, potem zaś ozdób każdy filet cieniutko pokrojoną cytryną. Lekko posól i popieprz. Zwiń pergamin na pół, a potem zawiń i ciasno zagnieć krawędzie. Tak przygotowane filety piecz w 200 stopniach przez 10 - 15 minut, zależnie od grubości ryb..', 
   'Łososia podawaj w pergaminowych kieszonkach. Doskonałymi dodatkami będą ugotowane, młode ziemniaki z masłem, posypane świeżą natką pietruszki.');
INSERT INTO Przepisy
  VALUES (15, 'Puchar pułkownika', 6, 'Do dużego kieliszka włóż 2 łyżki sorbetu cytrynowego. Zalej wódką..', 
   'Jest to pyszny, lekki, orzeźwiający deser. Użyj najlepszego sorbetu i wódki jakie masz. Podawaj z chrupiącymi ciasteczkami.');
 
INSERT INTO Skladniki
  VALUES (1, 'Wołowina', 2, 1);
INSERT INTO Skladniki
  VALUES (2, 'Cebula', 3, 17);
INSERT INTO Skladniki
  VALUES (3, 'Woda', 9, 1);
INSERT INTO Skladniki
  VALUES (4, 'Piwo Guinness', 9, 1);
INSERT INTO Skladniki
  VALUES (5, 'Ziemniaki', 3, 2);
INSERT INTO Skladniki
  VALUES (6, 'Marchew', 3, 2);
INSERT INTO Skladniki
  VALUES (7, 'Pomidory', 3, 8);
INSERT INTO Skladniki
  VALUES (8, 'Jalapeno', 3, 2);
INSERT INTO Skladniki
  VALUES (9, 'Czosnek', 1, 16);
INSERT INTO Skladniki
  VALUES (10, 'Pieprz czarny (mielony)', 1, 3);
INSERT INTO Skladniki
  VALUES (11, 'Sól', 1, 3);
INSERT INTO Skladniki
  VALUES (12, 'Halibut', 10, 5);
INSERT INTO Skladniki
  VALUES (13, 'Kurczak, smażony', 2, 5);
INSERT INTO Skladniki
  VALUES (14, 'Boczek', 2, 8);
INSERT INTO Skladniki
  VALUES (15, 'Sałata rzymska', 3, 13);
INSERT INTO Skladniki
  VALUES (16, 'Sałata lodowa', 3, 13);
INSERT INTO Skladniki
  VALUES (17, 'Sałata masłowa', 3, 13);
INSERT INTO Skladniki
  VALUES (18, 'Przegrzebek', 10, 5);
INSERT INTO Skladniki
  VALUES (19, 'Łosoś', 10, 5);
INSERT INTO Skladniki
  VALUES (20, 'Ocet', 9, 1);
INSERT INTO Skladniki
  VALUES (21, 'Oliwa z oliwek', 4, 1);
INSERT INTO Skladniki
  VALUES (22, 'Ogórek', 3, 17);
INSERT INTO Skladniki
  VALUES (23, 'Grzyby', 3, 2);
INSERT INTO Skladniki
  VALUES (24, 'Czerwone wino', 9, 2);
INSERT INTO Skladniki
  VALUES (25, 'Białe wino', 9, 2);
INSERT INTO Skladniki
  VALUES (26, 'Mleko', 8, 2);
INSERT INTO Skladniki
  VALUES (27, 'Ser Cheddar', 12, 2);
INSERT INTO Skladniki
  VALUES (28, 'Chipsy tortilla', 18, 11);
INSERT INTO Skladniki
  VALUES (29, 'Czarne oliwki', 19, 2);
INSERT INTO Skladniki
  VALUES (30, 'Fasolka szparagowa', 3, 14);
INSERT INTO Skladniki
  VALUES (31, 'Makaron fettuccine', 5, 1);
INSERT INTO Skladniki
  VALUES (32, 'Tłusta śmietana', 8, 1);
INSERT INTO Skladniki
  VALUES (33, 'Kurczak, kawałki', 2, 17);
INSERT INTO Skladniki
  VALUES (34, 'Stek z kością', 2, 17);
INSERT INTO Skladniki
  VALUES (35, 'Pierś z kurczaka', 2, 7);
INSERT INTO Skladniki
  VALUES (36, 'Nóżka kurczaka', 2, 17);
INSERT INTO Skladniki
  VALUES (37, 'Skrzydełko kurczaka', 2, 7);
INSERT INTO Skladniki
  VALUES (38, 'Udko kurczaka', 2, 7);
INSERT INTO Skladniki
  VALUES (39, 'Stek nowojorski', 2, 17);
INSERT INTO Skladniki
  VALUES (40, 'Spaghetti', 5, 1);
INSERT INTO Skladniki
  VALUES (41, 'Musztarda zwykła', 19, 1);
INSERT INTO Skladniki
  VALUES (42, 'Musztarda dijon', 19, 1);
INSERT INTO Skladniki
  VALUES (43, 'Ketchup', 19, 1);
INSERT INTO Skladniki
  VALUES (44, 'Salsa', 13, 1);
INSERT INTO Skladniki
  VALUES (45, 'Ser parmezan', 12, 1);
INSERT INTO Skladniki
  VALUES (46, 'Ser pleśniowy', 12, 1);
INSERT INTO Skladniki
  VALUES (47, 'Masła', 11, 4);
INSERT INTO Skladniki
  VALUES (48, 'Zielona cebulka', 3, 14);
INSERT INTO Skladniki
  VALUES (49, 'Zielone oliwki', 19, 2);
INSERT INTO Skladniki
  VALUES (50, 'Olej roślinny', 4, 4);
INSERT INTO Skladniki
  VALUES (51, 'Pieprz biały (mielony)', 1, 1);
INSERT INTO Skladniki
  VALUES (52, 'Pieprz cayenne (mielony)', 1, 1);
INSERT INTO Skladniki
  VALUES (53, 'Rzodkiewki', 3, 14);
INSERT INTO Skladniki
  VALUES (54, 'Dressing balsamiczny vinaigrette', 20, 
   1);
INSERT INTO Skladniki
  VALUES (55, 'Biszkopt', 21, 20);
INSERT INTO Skladniki
  VALUES (56, 'Galaretka malinowa', 21, 20);
INSERT INTO Skladniki
  VALUES (57, 'Krem custard w proszku', 21, 20);
INSERT INTO Skladniki
  VALUES (58, 'Posypka cukrowa', 1, 3);
INSERT INTO Skladniki
  VALUES (59, 'Dżem malinowy', 21, 21);
INSERT INTO Skladniki
  VALUES (61, 'Mąki', 6, 2);
INSERT INTO Skladniki
  VALUES (62, 'Jaja', 8, 7);
INSERT INTO Skladniki
  VALUES (63, 'Tłuszcz wołowy', 4, 3);
INSERT INTO Skladniki
  VALUES (64, 'Lucjan czerwony', 10, 1);
INSERT INTO Skladniki
  VALUES (65, 'Pomidory w puszce', 3, 10);
INSERT INTO Skladniki
  VALUES (66, 'Gałka muszkatołowa', 1, 3);
INSERT INTO Skladniki
  VALUES (67, 'Cynamon', 1, 3);
INSERT INTO Skladniki
  VALUES (68, 'Sok limonkowy', 9, 3);
INSERT INTO Skladniki
  VALUES (69, 'Szparagi', 3, 5);
INSERT INTO Skladniki
  VALUES (70, 'Natka pietruszki', 22, 22);
INSERT INTO Skladniki
  VALUES (71, 'Mąka tortowa', 21, 24);
INSERT INTO Skladniki
  VALUES (72, 'Mielona wieprzowina', 2, 5);
INSERT INTO Skladniki
  VALUES (73, 'Mielone goździki', 1, 3);
INSERT INTO Skladniki
  VALUES (74, 'Bułka tarta', 21, 2);
INSERT INTO Skladniki
  VALUES (75, 'Por', 3, 7);
INSERT INTO Skladniki
  VALUES (76, 'Papryka czerwona', 3, 7);
INSERT INTO Skladniki
  VALUES (77, 'Sok cytrynowy', 9, 4);
INSERT INTO Skladniki
  VALUES (78, 'Cytryny ', 17, 7);
INSERT INTO Skladniki
  VALUES (79, 'Sorbet cytrynowy', 23, 26);
INSERT INTO Skladniki
  VALUES (80, 'Wódka', 24, 4);
 
INSERT INTO Skladniki_przepisow
  VALUES (1, 1, 1, 5, 1);
INSERT INTO Skladniki_przepisow
  VALUES (1, 2, 2, 17, 2);
INSERT INTO Skladniki_przepisow
  VALUES (1, 3, 5, 17, 4);
INSERT INTO Skladniki_przepisow
  VALUES (1, 4, 6, 17, 6);
INSERT INTO Skladniki_przepisow
  VALUES (1, 5, 3, 23, 4);
INSERT INTO Skladniki_przepisow
  VALUES (1, 6, 4, 1, 12);
INSERT INTO Skladniki_przepisow
  VALUES (2, 1, 8, 17, 6);
INSERT INTO Skladniki_przepisow
  VALUES (2, 2, 7, 17, 2);
INSERT INTO Skladniki_przepisow
  VALUES (2, 3, 2, 17, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (2, 4, 10, 4, 1);
INSERT INTO Skladniki_przepisow
  VALUES (2, 5, 11, 3, 1);
INSERT INTO Skladniki_przepisow
  VALUES (3, 1, 8, 17, 4);
INSERT INTO Skladniki_przepisow
  VALUES (3, 2, 27, 2, 1);
INSERT INTO Skladniki_przepisow
  VALUES (3, 3, 2, 17, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (3, 4, 28, 11, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (3, 5, 29, 2, 0.25);
INSERT INTO Skladniki_przepisow
  VALUES (4, 1, 30, 5, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (4, 2, 9, 16, 2);
INSERT INTO Skladniki_przepisow
  VALUES (4, 3, 21, 4, 1);
INSERT INTO Skladniki_przepisow
  VALUES (5, 1, 31, 1, 16);
INSERT INTO Skladniki_przepisow
  VALUES (5, 2, 50, 4, 1);
INSERT INTO Skladniki_przepisow
  VALUES (5, 3, 11, 3, 3);
INSERT INTO Skladniki_przepisow
  VALUES (5, 4, 47, 4, 6);
INSERT INTO Skladniki_przepisow
  VALUES (5, 5, 32, 2, 0.25);
INSERT INTO Skladniki_przepisow
  VALUES (5, 12, 45, 1, 6);
INSERT INTO Skladniki_przepisow
  VALUES (5, 16, 51, 19, 0);
INSERT INTO Skladniki_przepisow
  VALUES (6, 1, 36, 7, 2);
INSERT INTO Skladniki_przepisow
  VALUES (6, 2, 38, 7, 2);
INSERT INTO Skladniki_przepisow
  VALUES (6, 3, 11, 3, 1.5);
INSERT INTO Skladniki_przepisow
  VALUES (6, 4, 10, 3, 1.5);
INSERT INTO Skladniki_przepisow
  VALUES (6, 5, 9, 16, 3);
INSERT INTO Skladniki_przepisow
  VALUES (6, 6, 52, 19, 0);
INSERT INTO Skladniki_przepisow
  VALUES (7, 1, 15, 13, 1);
INSERT INTO Skladniki_przepisow
  VALUES (7, 2, 23, 7, 12);
INSERT INTO Skladniki_przepisow
  VALUES (7, 3, 22, 17, 1);
INSERT INTO Skladniki_przepisow
  VALUES (7, 4, 7, 17, 1);
INSERT INTO Skladniki_przepisow
  VALUES (7, 5, 53, 14, 1);
INSERT INTO Skladniki_przepisow
  VALUES (7, 6, 54, 4, 3);
INSERT INTO Skladniki_przepisow
  VALUES (8, 1, 55, 20, 1);
INSERT INTO Skladniki_przepisow
  VALUES (8, 2, 56, 20, 1);
INSERT INTO Skladniki_przepisow
  VALUES (8, 3, 57, 20, 1);
INSERT INTO Skladniki_przepisow
  VALUES (8, 4, 59, 21, 1);
INSERT INTO Skladniki_przepisow
  VALUES (8, 5, 58, 3, 1);
INSERT INTO Skladniki_przepisow
  VALUES (9, 1, 1, 5, 4);
INSERT INTO Skladniki_przepisow
  VALUES (9, 2, 9, 16, 6);
INSERT INTO Skladniki_przepisow
  VALUES (9, 3, 11, 3, 1);
INSERT INTO Skladniki_przepisow
  VALUES (9, 4, 10, 3, 1);
INSERT INTO Skladniki_przepisow
  VALUES (10, 1, 61, 2, 1.5);
INSERT INTO Skladniki_przepisow
  VALUES (10, 2, 3, 2, 1);
INSERT INTO Skladniki_przepisow
  VALUES (10, 3, 62, 7, 2);
INSERT INTO Skladniki_przepisow
  VALUES (10, 4, 11, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (10, 5, 26, 2, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (10, 6, 63, 3, 4);
INSERT INTO Skladniki_przepisow
  VALUES (11, 1, 64, 5, 2);
INSERT INTO Skladniki_przepisow
  VALUES (11, 2, 21, 1, 4);
INSERT INTO Skladniki_przepisow
  VALUES (11, 3, 2, 17, 1);
INSERT INTO Skladniki_przepisow
  VALUES (11, 4, 65, 10, 2);
INSERT INTO Skladniki_przepisow
  VALUES (11, 5, 11, 3, 1);
INSERT INTO Skladniki_przepisow
  VALUES (11, 6, 10, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (11, 7, 66, 3, 0.25);
INSERT INTO Skladniki_przepisow
  VALUES (11, 8, 67, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (11, 9, 68, 3, 2);
INSERT INTO Skladniki_przepisow
  VALUES (11, 10, 49, 7, 8);
INSERT INTO Skladniki_przepisow
  VALUES (11, 11, 61, 2, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (11, 12, 70, 22, 2);
INSERT INTO Skladniki_przepisow
  VALUES (12, 1, 69, 5, 1);
INSERT INTO Skladniki_przepisow
  VALUES (12, 2, 47, 4, 4);
INSERT INTO Skladniki_przepisow
  VALUES (12, 3, 9, 16, 4);
INSERT INTO Skladniki_przepisow
  VALUES (13, 1, 71, 24, 2);
INSERT INTO Skladniki_przepisow
  VALUES (13, 2, 72, 5, 2);
INSERT INTO Skladniki_przepisow
  VALUES (13, 3, 2, 2, 0.333);
INSERT INTO Skladniki_przepisow
  VALUES (13, 4, 67, 4, 1);
INSERT INTO Skladniki_przepisow
  VALUES (13, 5, 73, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (13, 6, 11, 3, 0.25);
INSERT INTO Skladniki_przepisow
  VALUES (13, 7, 10, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (13, 8, 74, 2, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (14, 1, 19, 25, 4);
INSERT INTO Skladniki_przepisow
  VALUES (14, 2, 6, 7, 2);
INSERT INTO Skladniki_przepisow
  VALUES (14, 3, 75, 7, 1);
INSERT INTO Skladniki_przepisow
  VALUES (14, 4, 76, 7, 1);
INSERT INTO Skladniki_przepisow
  VALUES (14, 5, 47, 4, 4);
INSERT INTO Skladniki_przepisow
  VALUES (14, 6, 25, 4, 2);
INSERT INTO Skladniki_przepisow
  VALUES (14, 7, 77, 4, 2);
INSERT INTO Skladniki_przepisow
  VALUES (14, 8, 78, 7, 1);
INSERT INTO Skladniki_przepisow
  VALUES (14, 9, 11, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (14, 10, 10, 3, 0.5);
INSERT INTO Skladniki_przepisow
  VALUES (15, 1, 79, 26, 2);
INSERT INTO Skladniki_przepisow
  VALUES (15, 2, 80, 4, 2);

