-- View che fornisce una vista completa dei dettagli dei clienti con il loro indirizzo.

CREATE VIEW Dettagli_Cliente AS SELECT
    c.Id_Cliente,
    c.Nome,
    c.Cognome,
    c.Data_di_nascita,
    i.Via,
    i.CAP,
    i.Città,
    i.Provincia,
    i.Nazione
FROM
    Clienti c
JOIN Indirizzi i ON
    c.Id_Indirizzo = i.Id_Indirizzo;

-- Fornisce una vista completa dei dettagli contenente solo i vini rossi

CREATE VIEW Vini_Rossi AS SELECT
	vini.Id_Vino,
    vini.Nome AS Nome_Vino,
    produttori.Nome AS Nome_Produttore,
    vini.Anno,
    vini.Solfiti,
    vini.Biologico,
    vini.Prezzo
FROM
    Vini
INNER JOIN Produttori ON vini.Id_Produttore = produttori.Id_Produttore
WHERE
    tipologia = "Rosso";

-- Fornisce una vista completa dei dettagli contenente solo i vini bianchi

CREATE VIEW Vini_Bianchi AS SELECT
	vini.Id_Vino,
    vini.Nome AS Nome_Vino,
    produttori.Nome AS Nome_Produttore,
    vini.Anno,
    vini.Solfiti,
    vini.Biologico,
    vini.Prezzo
FROM
    Vini
INNER JOIN Produttori ON vini.Id_Produttore = produttori.Id_Produttore
WHERE
    tipologia = "Bianco";

-- Fornisce una vista dei 10 vini più venduti

CREATE VIEW Vini_più_venduti AS
SELECT
    vini.Id_Vino,
    vini.Nome,
    SUM(
        vini.Prezzo * Lista_Prodotti.Quantità
    ) AS Totale_Venduto
FROM
    vini
INNER JOIN Lista_Prodotti ON vini.Id_Vino = Lista_Prodotti.Id_Vino
INNER JOIN ordini ON Lista_Prodotti.Id_Ordine = ordini.Id_Ordine
GROUP BY
    vini.Id_Vino
ORDER BY
    Totale_Venduto
DESC
LIMIT 10;