INSERT INTO Clienti (Email, Nome_Cliente, Cognome_Cliente, Data_Nascita, Indirizzo) VALUES
("mario.rossi@example.com", "Mario", "Rossi", "1980-05-15", "Via Roma 1"),
("laura.bianchi@example.com", "Laura", "Bianchi", "1992-09-20", "Via Verdi 5"),
("luigi.verdi@example.com", "Luigi", "Russo", "1975-03-10", "Corso Italia 12"),
("anna.ferrari@example.com", "Anna", "Ferrari", "1988-07-02", "Via Garibaldi 8"),
("giovanni.esposito@example.com", "Giovanni", "Esposito", "1983-11-30", "Largo Mazzini 3"),
("elena.marino@example.com", "Elena", "Marino", "1995-02-18", "Piazza Colombo 7"),
("roberto.greco@example.com", "Roberto", "Greco", "1982-04-25", "Via Cavour 15"),
("martina.bruno@example.com", "Martina", "Bruno", "1990-06-12", "Via Dante 20"),
("chiara.gallo@example.com", "Chiara", "Gallo", "1987-08-07", "Via Manzoni 4"),
("paolo.conti@example.com", "Paolo", "Conti", "1984-12-22", "Piazza Duomo 6");

INSERT INTO Carta_di_Credito (Num_Carta, Circuito, CVV, Data_Scadenza, Nome_Carta, Cognome_Carta, Email) VALUES
("1234567890123456", "Visa", "123", "2025-06", "Mario", "Rossi", "mario.rossi@example.com"),
("2345678901234567", "MasterCard", "456", "2024-09", "Laura", "Bianchi", "laura.bianchi@example.com"),
("3456789012345678", "American Express", "789", "2023-12", "Luigi", "Verdi", "luigi.verdi@example.com"),
("4567890123456789", "Visa", "234", "2026-03", "Anna", "Ferrari", "anna.ferrari@example.com"),
("5678901234567890", "MasterCard", "567", "2025-07", "Giovanni", "Esposito", "giovanni.esposito@example.com"),
("6789012345678901", "American Express", "890", "2024-11", "Elena", "Russo", "elena.russo@example.com"),
("7890123456789012", "Visa", "345", "2023-08", "Roberto", "Greco", "roberto.greco@example.com"),
("8901234567890123", "MasterCard", "678", "2026-02", "Martina", "Bruno", "martina.bruno@example.com"),
("9012345678901234", "American Express", "901", "2025-04", "Paolo", "Conti", "paolo.conti@example.com"),
("1234567890123459", "Visa", "456", "2024-10", "Chiara", "Gallo", "chiara.gallo@example.com");

INSERT INTO Personale (ID_Personale, Ruolo, Nome_Personale, Cognome_Personale) VALUES
("PERS001234", "Manager", "Luca", "Rossi"),
("PERS002345", "Sommelier", "Giulia", "Bianchi"),
("PERS003456", "Addetto Vendite", "Marco", "Verdi"),
("PERS004567", "Addetto Vendite", "Laura", "Ferrari"),
("PERS005678", "Addetto Vendite", "Simone", "Esposito"),
("PERS006789", "Direttore Commerciale", "Federico", "Marino"),
("PERS007890", "Addetto Vendite", "Chiara", "Greco"),
("PERS008901", "Addetto Vendite", "Paola", "Bruno"),
("PERS009012", "Addetto Vendite", "Giovanni", "Gallo"),
("PERS010123", "Addetto Vendite", "Anna", "Conti");

INSERT INTO Ordini (Num_Ordine, Data_Ordine, Stato_Ordine, Indirizzo, ID_Personale, Email) VALUES
("ORD2023062401", "2023-06-24", "In corso", "Via Roma 1", "PERS001234", "mario.rossi@example.com"),
("ORD2023062402", "2023-06-24", "In corso", "Via Roma 1", "PERS002345", "mario.rossi@example.com"),
("ORD2023062501", "2023-06-25", "In attesa", "Via Roma 1", "PERS003456", "mario.rossi@example.com"),
("ORD2023062502", "2023-06-25", "Completato", "Via Verdi 5", "PERS004567", "laura.bianchi@example.com"),
("ORD2023062601", "2023-06-26", "In corso", "Via Verdi 5", "PERS005678", "laura.bianchi@example.com"),
("ORD2023062602", "2023-06-26", "In attesa", "Via Verdi 15", "PERS006789", "laura.bianchi@example.com"),
("ORD2023062701", "2023-06-27", "Completato", "Piazza Duomo 2", "PERS007890", "elena.marino@example.com"),
("ORD2023062702", "2023-06-27", "In corso", "Corso Vittorio Emanuele 20", "PERS008901", "cliente8@example.com"),
("ORD2023062801", "2023-06-28", "In corso", "Via Manzoni 8", "PERS009012", "martina.bruno@example.com"),
("ORD2023062802", "2023-06-28", "In attesa", "Lungomare Marconi 4", "PERS010123", "chiara.gallo@example.com");

INSERT INTO Corrieri (P_Iva_Corriere, Intestazione) VALUES
("12345678901", "Corriere Espresso S.r.l."),
("23456789012", "Logistica Veloce S.p.A."),
("34567890123", "Trasporti Rapidi & Co."),
("45678901234", "Spedizioni Sicure S.r.l."),
("56789012345", "Logistica Moderna S.p.A."),
("67890123456", "Corriere Affidabile S.r.l."),
("78901234567", "Logistica Rapida & Sicura"),
("89012345678", "Trasporti Semplici S.r.l."),
("90123456789", "Spedizioni Veloci S.p.A."),
("12345678903", "Logistica Puntuale S.r.l.");

INSERT INTO Spedizioni (Num_Spedizione, Data_Consegna, Data_Ritiro, Stato, P_Iva_Corriere, Num_Ordine) VALUES 
("SPED2023062401", "2023-06-24", "2023-06-23", "In transito", "12345678901", "ORD2023062401"),
("SPED2023062402", "2023-06-25", "2023-06-23", "In transito", "23456789012", "ORD2023062402"),
("SPED2023062501", "2023-06-26", "2023-06-25", "Consegnato", "34567890123", "ORD2023062501"),
("SPED2023062502", "2023-06-27", "2023-06-25", "In transito", "45678901234", "ORD2023062502"),
("SPED2023062601", "2023-06-27", "2023-06-26", "In transito", "56789012345", "ORD2023062601"),
("SPED2023062602", "2023-06-28", "2023-06-26", "In transito", "67890123456", "ORD2023062602"),
("SPED2023062701", "2023-06-28", "2023-06-27", "Consegnato", "78901234567", "ORD2023062701"),
("SPED2023062702", "2023-06-29", "2023-06-27", "In transito", "89012345678", "ORD2023062702"),
("SPED2023062801", "2023-06-29", "2023-06-28", "In transito", "90123456789", "ORD2023062801"),
("SPED2023062802", "2023-06-30", "2023-06-28", "In transito", "12345678901", "ORD2023062802");

INSERT INTO Recensioni (ID_Recensione, Data_Recensione, Stelle, Commento, Email, Nome_Vino, Annata)VALUES
(1234567890, "2023-06-24", 5, "Vino eccellente, ottimo rapporto qualita-prezzo.", "cliente1@example.com", "Chianti Classico", 2019),
(2345678901, "2023-06-25", 4, "Buon vino, un po' leggero per i miei gusti.", "cliente2@example.com", "Barolo", 2015),
(3456789012, "2023-06-26", 5, "Vino meraviglioso, lo consiglio a tutti gli amanti del rosso.", "cliente3@example.com", "Brunello di Montalcino", 2016),
(4567890123, "2023-06-27", 3, "Meh, niente di speciale.", "cliente4@example.com", "Amarone della Valpolicella", 2017),
(5678901234, "2023-06-28", 5, "Superbo vino, davvero eccezionale!", "cliente5@example.com", "Barbera d'Alba", 2018),
(6789012345, "2023-06-29", 4, "Buon rapporto qualita-prezzo.", "cliente6@example.com", "Nebbiolo d'alba", 2020),
(7890123456, "2023-06-30", 5, "Vino fantastico, lo adoro!", "cliente7@example.com", "Montepulciano d'Abruzzo", 2019),
(8901234567, "2023-07-01", 4, "Piacevole sorpresa, molto buono.", "cliente8@example.com", "Aglianico del Vulture", 2017),
(9012345678, "2023-07-02", 5, "Il miglior vino che abbia mai assaggiato.", "cliente9@example.com", "Primitivo di Manduria", 2018),
(1234567899, "2023-07-03", 3, "Non è male, ma non è eccezionale.", "cliente10@example.com", "Valpolicella Classico", 2019);

INSERT INTO Vini (Nome_Vino, Annata, Descrizione, Tipologia, Prezzo) VALUES
("Barolo", 2016, "Elegante vino rosso piemontese, robusto e strutturato.", "Rosso", 45.90),
("Chianti Classico", 2018, "Vino toscano dal carattere fruttato e speziato.", "Rosso", 24.50),
("Amarone della Valpolicella", 2015, "Vino corposo e complesso, con note di frutta secca e spezie.", "Rosso", 65.80),
("Montepulciano di Abruzzo", 2020, "Vino rosso dal gusto morbido e vellutato, con sentori di frutti rossi.", "Rosso", 18.75),
("Prosecco", 2023, "Spumante italiano fresco e fruttato, perfetto come aperitivo.", "Spumante", 12.90),
("Vermentino di Sardegna", 2019, "Vino bianco aromatico, con note di agrumi e fiori bianchi.", "Bianco", 15.40),
("Pinot Grigio", 2021, "Vino bianco fresco e leggero, dal bouquet floreale e fruttato.", "Bianco", 11.80),
("Lambrusco", 2022, "Frizzante rosso emiliano, dal gusto vivace e piacevolmente fruttato.", "Frizzante", 9.95),
("Rosato Salento", 2020, "Vino rosato pugliese, fresco e aromatico, con note di frutti di bosco.", "Rosato", 13.25),
("Moscato di Asti", 2024, "Vino dolce e aromatico del Piemonte, dal profumo intenso di fiori e frutta.", "Dolce", 14.70);

INSERT INTO Contenere (Num_Ordine, Nome_Vino, Annata, Num_Prodotti) VALUES
("ORD2023062401", "Chianti Classico", 2019, 21),
("ORD2023062402", "Barolo", 2015, 11),
("ORD2023062501", "Brunello di Montalcino", 2016, 3),
("ORD2023062501", "Amarone della Valpolicella", 2017, 2),
("ORD2023062601", "Barbera d'alba", 2018, 2),
("ORD2023062602", "Nebbiolo d'alba", 2020, 15),
("ORD2023062701", "Montepulciano d'Abruzzo", 2019, 13),
("ORD2023062702", "Aglianico del Vulture", 2017, 13),
("ORD2023062801", "Primitivo di Manduria", 2018, 24),
("ORD2023062802", "Valpolicella Classico", 2019, 2);

INSERT INTO Cantine (P_Iva_Cantina, Intestazione, Regione, Storia) VALUES
("01234567890", "Cantina Sociale di Alba", "Piemonte", "Fondata nel 1920, la Cantina Sociale di Alba è nota per la produzione di vini di alta qualita."),
("12345678901", "Tenuta San Guido", "Toscana", "Tenuta San Guido è famosa per il suo vino Sassicaia, uno dei più prestigiosi vini italiani."),
("23456789012", "Marchesi Antinori", "Toscana", "Marchesi Antinori è una delle cantine più antiche d'Italia, con una storia che risale al 1385."),
("34567890123", "Cantina di Negrar", "Veneto", "La Cantina di Negrar produce alcuni dei migliori Amarone della Valpolicella."),
("45678901234", "Cantine Ferrari", "Trentino-Alto Adige", "Cantine Ferrari è rinomata per la produzione di spumanti metodo classico di alta qualita."),
("56789012345", "Cantina di Soave", "Veneto", "Cantina di Soave è una delle cooperative vinicole più grandi e rispettate d'Italia."),
("67890123456", "Planeta", "Sicilia", "Planeta è una delle cantine più innovative della Sicilia, conosciuta per i suoi vini bianchi e rossi."),
("78901234567", "Feudi di San Gregorio", "Campania", "Feudi di San Gregorio è un' azienda leader nella produzione di vini del Sud Italia."),
("89012345678", "Mastroberardino", "Campania", "Mastroberardino è una cantina storica che ha contribuito a salvare dall' estinzione molti vitigni autoctoni campani."),
("90123456789", "Cantina di Montalcino", "Toscana", "Cantina di Montalcino è famosa per la produzione di Brunello di Montalcino, uno dei vini italiani più apprezzati.");

INSERT INTO Produrre (Annata, Nome_Vino, P_Iva_Cantina, Num_Bottiglie) VALUES
(2019, "Chianti Classico", "01234567890", 5000),
(2015, "Barolo", "12345678901", 3000),
(2016, "Brunello di Montalcino", "23456789012", 4000),
(2017, "Amarone della Valpolicella", "34567890123", 2000),
(2018, "Barbera d'Alba", "45678901234", 3500),
(2020, "Nebbiolo d'Alba", "56789012345", 2500),
(2019, "Montepulciano d'Abruzzo", "67890123456", 4500),
(2017, "Aglianico del Vulture", "78901234567", 1500),
(2018, "Primitivo di Manduria", "89012345678", 5000),
(2019, "Valpolicella Classico", "90123456789", 3000);

INSERT INTO Magazzini (ID_Magazzino, Indirizzo) VALUES
("MAG1234567", "Via Roma 1"),
("MAG2345678", "Corso Italia 5"),
("MAG3456789", "Piazza Garibaldi 10"),
("MAG4567890", "Via Dante 3"),
("MAG5678901", "Largo Mazzini 7"),
("MAG6789012", "Via Verdi 15"),
("MAG7890123", "Piazza Duomo 2"),
("MAG8901234", "Corso Vittorio Emanuele 20"),
("MAG9012345", "Via Manzoni 8"),
("MAG1234567", "Lungomare Marconi 4");

INSERT INTO Conservare (ID_Magazzino, Nome_Vino, Annata, Quantita) VALUES
("MAG1234567A", "Chianti Classico", 2019, 500),
("MAG2345678B", "Barolo", 2015, 300),
("MAG3456789C", "Brunello di Montalcino", 2016, 400),
("MAG4567890D", "Amarone della Valpolicella", 2017, 200),
("MAG5678901E", "Barbera d'Alba", 2018, 350),
("MAG6789012F", "Nebbiolo d'Alba", 2020, 250),
("MAG7890123G", "Montepulciano d'Abruzzo", 2019, 450),
("MAG8901234H", "Aglianico del Vulture", 2017, 150),
("MAG9012345I", "Primitivo di Manduria", 2018, 500),
("MAG0123456J", "Valpolicella Classico", 2019, 300);

INSERT INTO Creare (Varieta_Uva, Provenienza, Percentuale, Nome_Miscela) VALUES
("Sangiovese", "Toscana", 60, "Blend_001"),
("Merlot", "Toscana", 40, "Blend_001"),
("Nebbiolo", "Piemonte", 70, "Cuvee_Rosso"),
("Barbera", "Piemonte", 30, "Cuvee_Rosso"),
("Cabernet Sauvignon", "Toscana", 50, "Super_Tuscan"),
("Sangiovese", "Toscana", 30, "Super_Tuscan"),
("Merlot", "Toscana", 20, "Super_Tuscan"),
("Corvina", "Veneto", 50, "Nobile_Rosso"),
("Rondinella", "Veneto", 30, "Nobile_Rosso"),
("Molinara", "Veneto", 20, "Nobile_Rosso");

INSERT INTO Uve (Varieta_Uva , Provenienza) VALUES
("Nebbiolo", "Italia"),
("Sangiovese", "Italia"),
("Corvina", "Italia"),
("Montepulciano", "Italia"),
("Chardonnay", "Francia"),
("Merlot", "Francia"),
("Cabernet Sauvignon", "Francia"),
("Syrah", "Francia"),
("Pinot Noir", "Francia"),
("Riesling", "Germania");

INSERT INTO Creare (Varieta_Uva, Provenienza, Percentuale, Nome_Miscela) VALUES
("Sangiovese", "Toscana", 60, "Blend_001"),
("Merlot", "Toscana", 40, "Blend_001"),
("Nebbiolo", "Piemonte", 70, "Cuvee_Rosso"),
("Barbera", "Piemonte", 30, "Cuvee_Rosso"),
("Cabernet Sauvignon", "Toscana", 50, "Super_Tuscan"),
("Sangiovese", "Toscana", 30, "Super_Tuscan"),
("Merlot", "Toscana", 20, "Super_Tuscan"),
("Corvina", "Veneto", 50, "Nobile_Rosso"),
("Rondinella", "Veneto", 30, "Nobile_Rosso"),
("Molinara", "Veneto", 20, "Nobile_Rosso");

INSERT INTO Premio (Nome_Premio, Associazione, Tipologia) VALUES
("Gran Premio del Vino", "Associazione Italiana Sommelier", "Qualita"),
("Medaglia d'Oro", "Consorzio Vino Chianti", "Eccellenza"),
("Trofeo del Barolo", "Associazione Enologi Italiani", "Miglior Vino Rosso"),
("Premio Brunello", "Consorzio del Brunello di Montalcino", "Miglior Annata"),
("Stella d'Argento", "Gambero Rosso", "Rapporto Qualita-Prezzo"),
("Coppa del Vino", "Slow Wine", "Vino Sostenibile"),
("Premio d'Onore", "Vinitaly", "Innovazione"),
("Sigillo d'Eccellenza", "Wine Spectator", "Critica Internazionale"),
("Premio del Pubblico", "Decanter", "Scelta del Pubblico"),
("Gran Medaglia", "Bibenda", "Miglior Vino Italiano");

INSERT INTO Assegnare (Nome_Premio, P_Iva_Cantina, Data_Assegnazione) VALUES
("Gran Premio del Vino", "01234567890", "2023-01-15"),
("Medaglia d'Oro", "12345678901", "2023-02-10"),
("Trofeo del Barolo", "23456789012", "2023-03-05"),
("Premio Brunello", "34567890123", "2023-04-20"),
("Stella d'Argento", "45678901234", "2023-05-18"),
("Coppa del Vino", "56789012345", "2023-06-22"),
("Premio d'Onore", "67890123456", "2023-07-30"),
("Sigillo d'Eccellenza", "78901234567", "2023-08-25"),
("Premio del Pubblico", "89012345678", "2023-09-12"),
("Gran Medaglia", "90123456789", "2023-10-03");

INSERT INTO Ricevere (Nome_Vino, Annata, Nome_Premio, Data_Ricezione) VALUES
("Chianti Classico", 2019, "Gran Premio del Vino", "2023-01-15"),
("Barolo", 2015, "Medaglia d'Oro", "2023-02-10"),
("Brunello di Montalcino", 2016, "Trofeo del Barolo", "2023-03-05"),
("Amarone della Valpolicella", 2017, "Premio Brunello", "2023-04-20"),
("Barbera d'Alba", 2018, "Stella d'Argento", "2023-05-18"),
("Nebbiolo d'Alba", 2020, "Coppa del Vino", "2023-06-22"),
("Montepulciano d'Abruzzo", 2019, "Premio d'Onore", "2023-07-30"),
("Aglianico del Vulture", 2017, "Sigillo d'Eccellenza", "2023-08-25"),
("Primitivo di Manduria", 2018, "Premio del Pubblico", "2023-09-12"),
("Valpolicella Classico", 2019, "Gran Medaglia", "2023-10-03");

INSERT INTO Metodi (Nome_Metodo, Descrizione, Invecchiamento) VALUES
("Metodo Classico", "Tecnica tradizionale di spumantizzazione con rifermentazione in bottiglia.", 24),
("Metodo Charmat", "Metodo di spumantizzazione con fermentazione in autoclave.", 6),
("Appassimento", "Processo di essiccazione delle uve prima della vinificazione per concentrare gli zuccheri.", 12),
("Metodo Ripasso", "Tecnica che prevede la rifermentazione del vino sulle vinacce dell' Amarone.", 18),
("Metodo Solera", "Sistema di invecchiamento del vino in botti sovrapposte, utilizzato soprattutto per lo Sherry.", 36),
("Metodo Sur Lie", "Vinificazione che prevede l'affinamento del vino sui lieviti.", 12),
("Criomacerazione", "Tecnica di macerazione a basse temperature per estrarre aromi e colore.", 2),
("Affinamento in Barrique", "Invecchiamento del vino in piccole botti di rovere per arricchire il bouquet.", 24),
("Metodo Anfora", "Fermentazione e invecchiamento del vino in anfore di terracotta.", 12),
("Macération Carbonique", "Fermentazione intracellulare delle uve intere, utilizzata soprattutto per il Beaujolais.", 1);

INSERT INTO Usare (Nome_Metodo, P_Iva_Cantine) VALUES
("Metodo Classico", "01234567890"),
("Metodo Charmat", "12345678901"),
("Appassimento", "23456789012"),
("Metodo Ripasso", "34567890123"),
("Metodo Solera", "45678901234"),
("Metodo Sur Lie", "56789012345"),
("Criomacerazione", "67890123456"),
("Affinamento in Barrique", "78901234567"),
("Metodo Anfora", "89012345678"),
("Macération Carbonique", "90123456789");