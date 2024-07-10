USE EnoMarketDB;

-- Insert into Indirizzi
INSERT INTO Indirizzi (Via, Civico, CAP, Città, Provincia, Nazione) VALUES
('Via Roma', 1, 10100, 'Torino', 'TO', 'Italia'),
('Via Milano', 2, 20100, 'Milano', 'MI', 'Italia'),
('Via Napoli', 3, 80100, 'Napoli', 'NA', 'Italia'),
('Via Firenze', 4, 50100, 'Firenze', 'FI', 'Italia'),
('Via Venezia', 5, 30100, 'Venezia', 'VE', 'Italia'),
('Via Bari', 6, 70100, 'Bari', 'BA', 'Italia'),
('Via Bologna', 7, 40100, 'Bologna', 'BO', 'Italia'),
('Via Genova', 8, 16100, 'Genova', 'GE', 'Italia'),
('Via Palermo', 9, 90100, 'Palermo', 'PA', 'Italia'),
('Via Cagliari', 10, 09100, 'Cagliari', 'CA', 'Italia'),
('Via Trieste', 11, 60100, 'Ancona', 'AN', 'Italia'),
('Via Torino', 12, 10100, 'Torino', 'TO', 'Italia'),
('Via Verona', 13, 37100, 'Verona', 'VR', 'Italia'),
('Via Padova', 14, 35100, 'Padova', 'PD', 'Italia'),
('Via Perugia', 15, 06100, 'Perugia', 'PG', 'Italia'),
('Via Potenza', 16, 85100, 'Potenza', 'PZ', 'Italia'),
('Via Catanzaro', 17, 88100, 'Catanzaro', 'CZ', 'Italia'),
('Via Reggio Calabria', 18, 89100, 'Reggio Calabria', 'RC', 'Italia'),
("Via L'Aquila", 19, 67100, "L'Aquila", 'AQ', 'Italia'),
('Via Campobasso', 20, 86100, 'Campobasso', 'CB', 'Italia');

-- Insert into Corrieri
INSERT INTO Corrieri (Nome) VALUES
('DHL'),
('FedEx'),
('UPS'),
('TNT'),
('GLS'),
('SDA'),
('Nexive'),
('Bartolini'),
('Poste Italiane'),
('TNT Express');

-- Insert into Clienti
INSERT INTO Clienti (Nome, Cognome, Data_di_nascita, Id_Indirizzo) VALUES
('Mario', 'Rossi', '1980-01-01', 1),
('Luigi', 'Verdi', '1990-02-02', 2),
('Anna', 'Bianchi', '2000-03-03', 3),
('Carla', 'Neri', '1975-04-04', 4),
('Giovanni', 'Gialli', '1985-05-05', 5),
('Paolo', 'Blu', '1995-06-06', 6),
('Sara', 'Rosa', '2001-07-07', 7),
('Luca', 'Marrone', '1988-08-08', 8),
('Elena', 'Arancio', '1999-09-09', 9),
('Davide', 'Viola', '1992-10-10', 10);

-- Insert into Carte_di_Credito
INSERT INTO Carte_di_Credito (Numero_Carta, Tipo_Carta, Scadenza, CVV, Nome_Carta, Cognome_Carta, Id_Cliente) VALUES
('1234567890123456', 'Visa', '2025-01-01', '123', 'Mario', 'Rossi', 1),
('2345678901234567', 'Mastercard', '2026-02-02', '234', 'Luigi', 'Verdi', 2),
('3456789012345678', 'American Express', '2027-03-03', '345', 'Anna', 'Bianchi', 3),
('4567890123456789', 'Discover', '2028-04-04', '456', 'Carla', 'Neri', 4),
('5678901234567890', 'Visa', '2029-05-05', '567', 'Giovanni', 'Gialli', 5),
('6789012345678901', 'Mastercard', '2030-06-06', '678', 'Paolo', 'Blu', 6),
('7890123456789012', 'American Express', '2031-07-07', '789', 'Sara', 'Rosa', 7),
('8901234567890123', 'Discover', '2032-08-08', '890', 'Luca', 'Marrone', 8),
('9012345678901234', 'Visa', '2033-09-09', '901', 'Elena', 'Arancio', 9),
('0123456789012345', 'Mastercard', '2034-10-10', '012', 'Davide', 'Viola', 10);

-- Insert into Produttori
INSERT INTO Produttori (Nome, Partita_IVA, Id_Indirizzo) VALUES
('Cantina Sociale', 12345678901, 11),
('Vigneti Rossi', 23456789012, 12),
('Azienda Agricola Bianchi', 34567890123, 13),
('Vinicola Neri', 45678901234, 14),
('Enoteca Gialli', 56789012345, 15),
('Cantine Blu', 67890123456, 16),
('Viticoltori Rosa', 78901234567, 17),
('Azienda Marrone', 89012345678, 18),
('Vini Arancio', 90123456789, 19),
('Vinicola Viola', 10123456780, 20);

-- Insert into Tipi_di_Vino
INSERT INTO Tipi_di_Vino (Nome) VALUES
('Rosso'),
('Bianco'),
('Rosato'),
('Spumante');

-- Insert into Vini
INSERT INTO Vini (Nome, Anno, Solfiti, Biologico, Tipologia, Gradazione, Id_Produttore, Prezzo) VALUES
('Chianti Classico', 2018, TRUE, FALSE, 'Rosso', 13.5, 1, 12.50),
('Barolo Riserva', 2016, TRUE, TRUE, 'Rosso', 14.0, 2, 25.00),
('Merlot Veneto', 2019, FALSE, FALSE, 'Rosso', 12.0, 3, 8.00),
('Pinot Grigio delle Venezie', 2020, TRUE, TRUE, 'Bianco', 11.5, 4, 10.00),
('Sauvignon Blanc', 2017, TRUE, FALSE, 'Bianco', 13.0, 5, 15.00),
('Rosso di Montalcino', 2015, TRUE, TRUE, 'Rosso', 13.5, 6, 18.00),
('Prosecco DOC', 2021, FALSE, FALSE, 'Spumante', 11.0, 7, 9.00),
('Spumante Brut', 2019, TRUE, FALSE, 'Spumante', 12.5, 8, 20.00),
('Rosato Toscana', 2020, TRUE, TRUE, 'Rosato', 12.0, 9, 7.50),
('Bianco di Custoza', 2021, FALSE, FALSE, 'Bianco', 11.5, 10, 6.50),
('Cabernet Sauvignon', 2018, TRUE, FALSE, 'Rosso', 13.8, 11, 14.00),
('Nero di Avola', 2017, TRUE, TRUE, 'Rosso', 14.5, 12, 20.00),
('Chardonnay', 2020, FALSE, FALSE, 'Bianco', 12.5, 13, 11.00),
('Vermentino', 2019, TRUE, FALSE, 'Bianco', 13.0, 14, 13.50),
('Franciacorta', 2018, FALSE, TRUE, 'Spumante', 12.0, 15, 22.00),
('Valpolicella Ripasso', 2016, TRUE, TRUE, 'Rosso', 13.5, 16, 19.00),
('Lambrusco', 2021, FALSE, FALSE, 'Rosso', 10.5, 17, 8.50),
('Gewurztraminer', 2019, TRUE, TRUE, 'Bianco', 14.0, 18, 18.50),
('Brunello di Montalcino', 2015, TRUE, FALSE, 'Rosso', 14.5, 19, 30.00),
('Orvieto Classico', 2020, FALSE, FALSE, 'Bianco', 12.0, 20, 9.50),
('Sangiovese', 2019, TRUE, FALSE, 'Rosso', 13.2, 21, 12.00),
('Zinfandel', 2018, TRUE, TRUE, 'Rosso', 14.3, 22, 21.00),
('Riesling', 2021, FALSE, FALSE, 'Bianco', 11.8, 23, 10.50),
('Grillo', 2020, TRUE, FALSE, 'Bianco', 12.9, 24, 13.00),
('Moscato di Asti', 2019, FALSE, TRUE, 'Spumante', 7.5, 25, 15.50),
('Primitivo', 2017, TRUE, TRUE, 'Rosso', 14.7, 26, 17.00),
('Trebbiano', 2021, FALSE, FALSE, 'Bianco', 11.2, 27, 7.50),
('Syrah', 2019, TRUE, TRUE, 'Rosso', 13.8, 28, 19.50),
('Amarone della Valpolicella', 2015, TRUE, FALSE, 'Rosso', 15.0, 29, 35.00),
('Pinot Nero', 2020, FALSE, FALSE, 'Rosso', 12.7, 30, 11.00);


-- Insert into Ordini
INSERT INTO Ordini (Id_Cliente, Stato, Id_Indirizzo, Data_Ordine) VALUES
(1, 'In Preparazione', 1, '2023-01-01 10:00:00'),
(2, 'Spedito', 2, '2023-02-02 11:00:00'),
(3, 'Consegnato', 3, '2023-03-03 12:00:00'),
(4, 'In Preparazione', 4, '2023-04-04 13:00:00'),
(5, 'Spedito', 5, '2023-05-05 14:00:00'),
(6, 'Consegnato', 6, '2023-06-06 15:00:00'),
(7, 'In Preparazione', 7, '2023-07-07 16:00:00'),
(8, 'Spedito', 8, '2023-08-08 17:00:00'),
(9, 'Consegnato', 9, '2023-09-09 18:00:00'),
(10, 'In Preparazione', 10, '2023-10-10 19:00:00');

-- Insert into Lista_Prodotti
INSERT INTO Lista_Prodotti (Id_Vino, Id_Ordine, Quantità) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 4),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1);

-- Insert into Pagamenti
INSERT INTO Pagamenti (Id_Ordine, Id_Carta, Data_Pagamento) VALUES
(1, 1, '2023-01-01 10:30:00'),
(2, 2, '2023-02-02 11:30:00'),
(3, 3, '2023-03-03 12:30:00'),
(4, 4, '2023-04-04 13:30:00'),
(5, 5, '2023-05-05 14:30:00'),
(6, 6, '2023-06-06 15:30:00'),
(7, 7, '2023-07-07 16:30:00'),
(8, 8, '2023-08-08 17:30:00'),
(9, 9, '2023-09-09 18:30:00'),
(10, 10, '2023-10-10 19:30:00');

-- Insert into Preferire
INSERT INTO Preferire (Id_Cliente, Id_Vino) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insert into Recensire
INSERT INTO Recensire (Id_Cliente, Id_Vino, Voto, Commento, Data_recensione) VALUES
(1, 1, 8, 'Ottimo vino!', '2023-01-10 10:00:00'),
(2, 2, 9, 'Fantastico!', '2023-02-10 11:00:00'),
(3, 3, 7, 'Buono.', '2023-03-10 12:00:00'),
(4, 4, 6, 'Niente di speciale.', '2023-04-10 13:00:00'),
(5, 5, 10, 'Eccellente!', '2023-05-10 14:00:00'),
(6, 6, 5, 'Non male.', '2023-06-10 15:00:00'),
(7, 7, 8, 'Molto buono.', '2023-07-10 16:00:00'),
(8, 8, 9, 'Fantastico!', '2023-08-10 17:00:00'),
(9, 9, 7, 'Buono.', '2023-09-10 18:00:00'),
(10, 10, 6, 'Niente di speciale.', '2023-10-10 19:00:00');

-- Insert into Premi
INSERT INTO Premi (Nome, Organizzazione) VALUES
('Premio Eccellenza', 'Organizzazione 1'),
('Premio Qualità', 'Organizzazione 2'),
('Premio Innovazione', 'Organizzazione 3'),
('Premio Sostenibilità', 'Organizzazione 4'),
('Premio Tradizione', 'Organizzazione 5'),
('Premio Miglior Vino', 'Organizzazione 6'),
('Premio Miglior Produttore', 'Organizzazione 7'),
('Premio Miglior Design', 'Organizzazione 8'),
('Premio Miglior Gusto', 'Organizzazione 9'),
('Premio Miglior Annata', 'Organizzazione 10');

-- Insert into Assegnare
INSERT INTO Assegnare (Id_Premio, Id_Vino, Data_Assegnazione) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-02-02'),
(3, 3, '2024-03-03'),
(4, 4, '2021-04-04'),
(5, 5, '2024-05-05'),
(6, 6, '2024-06-06'),
(7, 7, '2024-07-07'),
(8, 8, '2024-08-08'),
(9, 9, '2024-09-09'),
(10, 10, '2022-10-10');

-- Insert into Ricevere
INSERT INTO Ricevere (Id_Premio, Id_Produttore, Data_Ricezione) VALUES
(1, 1, '2024-01'),
(2, 2, '2024-02-02'),
(3, 3, '2024-03-03'),
(4, 4, '2024-04-04'),
(5, 5, '2024-05-05'),
(6, 6, '2024-06-06'),
(7, 7, '2024-07-07'),
(8, 8, '2024-08-08'),
(9, 9, '2024-09-09'),
(10, 10, '2024-10-10');

-- Insert into Uve
INSERT INTO Uve (Nome, Descrizione) VALUES
('Cabernet Sauvignon', 'Descrizione Cabernet Sauvignon'),
('Merlot', 'Descrizione Merlot'),
('Sangiovese', 'Descrizione Sangiovese'),
('Nebbiolo', 'Descrizione Nebbiolo'),
('Pinot Nero', 'Descrizione Pinot Nero'),
('Chardonnay', 'Descrizione Chardonnay'),
('Sauvignon Blanc', 'Descrizione Sauvignon Blanc'),
('Trebbiano', 'Descrizione Trebbiano'),
('Barbera', 'Descrizione Barbera'),
('Malvasia', 'Descrizione Malvasia');

-- Insert into Compone
INSERT INTO Compone (Id_Vino, Id_Uva, Percentuale) VALUES
(1, 1, 60),
(1, 3, 40),
(2, 4, 100),
(3, 2, 100),
(4, 6, 100),
(5, 7, 100),
(6, 3, 80),
(6, 9, 20),
(7, 8, 100),
(8, 6, 50),
(8, 7, 50),
(9, 5, 100),
(10, 6, 70),
(10, 10, 30);

-- Insert into Magazzini
INSERT INTO Magazzini (Id_Indirizzo, Nome) VALUES
(1, 'Magazzino Torino'),
(2, 'Magazzino Milano'),
(3, 'Magazzino Napoli'),
(4, 'Magazzino Firenze'),
(5, 'Magazzino Venezia'),
(6, 'Magazzino Bari'),
(7, 'Magazzino Bologna'),
(8, 'Magazzino Genova'),
(9, 'Magazzino Palermo'),
(10, 'Magazzino Cagliari');

-- Insert into Contenere
INSERT INTO Contenere (Id_Magazzino, Id_Vino, Quantità_Rimanente) VALUES
(1, 1, 100),
(2, 2, 50),
(3, 3, 75),
(4, 4, 100),
(5, 5, 50),
(6, 6, 60),
(7, 7, 30),
(8, 8, 40),
(9, 9, 20),
(10, 10, 10);

-- Insert into Spedizioni
INSERT INTO Spedizioni (Id_Ordine, Id_Corriere, Data_Spedizione, Data_Consegna, Stato_Spedizione) VALUES
(1, 1, '2023-01-01 09:00:00', '2023-01-02 09:00:00', 'In Viaggio'),
(2, 2, '2023-02-01 10:00:00', '2023-02-03 10:00:00', 'In Viaggio'),
(3, 3, '2023-03-01 11:00:00', '2023-03-05 11:00:00', 'Consegnato'),
(4, 4, '2023-04-01 12:00:00', '2023-04-04 12:00:00', 'Consegnato'),
(5, 5, '2023-05-01 13:00:00', '2023-05-02 13:00:00', 'Consegnato'),
(6, 6, '2023-06-01 14:00:00', '2023-06-03 14:00:00', 'Consegnato'),
(7, 7, '2023-07-01 15:00:00', '2023-07-04 15:00:00', 'Consegnato'),
(8, 8, '2023-08-01 16:00:00', '2023-08-05 16:00:00', 'Consegnato'),
(9, 9, '2023-09-01 17:00:00', '2023-09-06 17:00:00', 'Consegnato'),
(10, 10, '2023-10-01 18:00:00', '2023-10-04 18:00:00', 'Consegnato');
