-- Conta il numero di vini di una certa tipologia (es: rosso)

SELECT
    COUNT(vini.Id_Vino) AS Num_Vini_Rossi
FROM
    vini
WHERE
    vini.Tipologia = "Rosso";

-- Restituisce le 10 città con più clienti

SELECT
    indirizzi.Città,
    COUNT(clienti.Id_Cliente) AS Numero_Clienti
FROM
    clienti
INNER JOIN indirizzi ON clienti.Id_Indirizzo = indirizzi.Id_Indirizzo
GROUP BY
    Città
ORDER BY
    Numero_Clienti
DESC
    ;

-- Restituisce i vini che rispettano alcuni parametri presi in input (annata, prezzo, tipologia)

SELECT
    *
FROM
    vini
WHERE
    vini.Tipologia = "Rosso" AND vini.Prezzo <= 20 AND vini.Anno > 2015;

-- Trova i clienti che hanno fatto i 10 ordini più costosi.

SELECT
    clienti.Nome, clienti.Cognome, ordini.Id_Ordine,
    SUM(
        contiene.Quantità * vini.Prezzo
    ) AS Totale_Ordine
FROM clienti INNER JOIN
    ordini ON clienti.Id_Cliente = ordini.Id_Cliente
INNER JOIN contiene ON ordini.Id_Ordine = contiene.Id_Ordine
INNER JOIN vini ON contiene.Id_Vino = vini.Id_Vino
GROUP BY
    ordini.Id_Ordine
ORDER BY
    Totale_Ordine
DESC
LIMIT 10;

-- Trova i 10 vini più costosi.

SELECT * FROM vini ORDER BY vini.Prezzo DESC LIMIT 10;

-- Restituisce quanti ordini hanno fatto i clienti

SELECT
    clienti.Nome,
    clienti.Cognome,
    COUNT(ordini.Id_Ordine) AS Num_Ordini
FROM
    clienti
INNER JOIN ordini ON clienti.Id_Cliente = ordini.Id_Cliente
GROUP BY
    ordini.Id_Cliente;

-- Vini col maggior numero di preferiti

SELECT
    vini.Id_Vino,
    vini.Nome,
    COUNT(preferiti.Id_Cliente) AS Num_Preferiti
FROM
    vini
INNER JOIN preferiti ON vini.Id_Vino = preferiti.Id_Vino
GROUP BY
    vini.Id_Vino;

-- Restituisce i 10 vini più venduti

SELECT
    vini.Id_Vino,
    vini.Nome,
    SUM(
        vini.Prezzo * contiene.Quantità
    ) AS Totale_Venduto
FROM
    vini
INNER JOIN contiene ON vini.Id_Vino = contiene.Id_Vino
INNER JOIN ordini ON contiene.Id_Ordine = ordini.Id_Ordine
GROUP BY
    vini.Id_Vino
ORDER BY
    Totale_Venduto
DESC
LIMIT 10;

-- Restituisce i 10 vini meglio recensiti ed il loro prezzo

SELECT
    vini.Id_Vino,
    vini.Nome,
    vini.Prezzo,
    ROUND(AVG(recensioni.Voto),
    2) AS Voto_Medio
FROM
    vini
INNER JOIN recensioni ON vini.Id_Vino = recensioni.Id_Vino
GROUP BY
    vini.Id_Vino
ORDER BY
    Voto_Medio
DESC
LIMIT 10;

-- Restituisce i 10 vini più premiati dalla critica

SELECT
    vini.Id_Vino,
    vini.Nome,
    COUNT(assegnare.Id_Premio) AS Num_Premi
FROM
    vini
INNER JOIN assegnare ON vini.Id_Vino = assegnare.Id_Vino
GROUP BY
    vini.Id_Vino
ORDER BY
    Num_Premi
DESC
LIMIT 10;

-- Restituisce i 10 produttori di vino più premiati dalla critica

SELECT
    produttori.Nome,
    COUNT(ricevere.Id_Premio) AS Num_Premi
FROM
    produttori
INNER JOIN ricevere ON produttori.Id_Produttore = ricevere.Id_Produttore
GROUP BY
    produttori.Id_Produttore
ORDER BY
    Num_Premi
DESC;


-- Trova i clienti che hanno ordinato di più

SELECT
    *
FROM
    clienti
INNER JOIN ordini ON clienti.Id_Cliente = ordini.Id_Cliente
INNER JOIN contiene ON ordini.Id_Ordine = contiene.Id_Ordine
INNER JOIN vini ON contiene.Id_Vino = vini.Id_Vino
GROUP BY clienti.Id_Cliente, contiene.Id_Contenuto;

-- Restituisce il fatturato totale in un certo periodo


-- Restituisce la lista dei vini novelli

SELECT *
FROM vini
WHERE vini.Anno = YEAR(CURDATE()) AND vini.gradazione >= 11;

-- Restituisce tutti i vini fatti con una percentuale arbitraria di un tipo di uva

