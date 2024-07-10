CREATE DATABASE IF NOT EXISTS EnoMarketDB;

USE EnoMarketDB;

CREATE TABLE Corrieri (
    Id_Corriere INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (Id_Corriere)
);

CREATE TABLE Indirizzi (
    Id_Indirizzo INT NOT NULL AUTO_INCREMENT,
    Via TEXT NOT NULL,
    Civico INT NOT NULL,
    CAP INT NOT NULL,
    Città VARCHAR(50) NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    Nazione VARCHAR(50) NOT NULL,
    PRIMARY KEY (Id_Indirizzo)
);

CREATE TABLE Clienti (
    Id_Cliente INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Data_di_nascita DATE NOT NULL,
    Id_Indirizzo INT,
    PRIMARY KEY (Id_Cliente),
    FOREIGN KEY (Id_Indirizzo) REFERENCES Indirizzi(Id_Indirizzo)
);

CREATE TABLE Carte_di_Credito (
    Id_Carta INT NOT NULL AUTO_INCREMENT,
    Numero_Carta VARCHAR(20) NOT NULL,
    Tipo_Carta VARCHAR(50) NOT NULL,
    Scadenza DATE NOT NULL,
    CVV VARCHAR(4) NOT NULL,
    Nome_Carta VARCHAR(50) NOT NULL,
    Cognome_Carta VARCHAR(50) NOT NULL,
    Id_Cliente INT NOT NULL,
    PRIMARY KEY (Id_Carta),
    FOREIGN KEY (Id_Cliente) REFERENCES Clienti(Id_Cliente)
);

CREATE TABLE Produttori (
    Id_Produttore INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Partita_IVA BIGINT NOT NULL,
    Id_Indirizzo INT,
    PRIMARY KEY (Id_Produttore),
    FOREIGN KEY (Id_Indirizzo) REFERENCES Indirizzi(Id_Indirizzo)
);

CREATE TABLE Tipi_di_Vino (
    Nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (Nome)
);

CREATE TABLE Vini (
    Id_Vino INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Anno INT NOT NULL,
    Solfiti BOOLEAN,
    Biologico BOOLEAN,
    Tipologia VARCHAR(50),
    Gradazione DECIMAL(4,2) NOT NULL,
    Id_Produttore INT,
    Prezzo DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Id_Vino),
    FOREIGN KEY (Id_Produttore) REFERENCES Produttori(Id_Produttore),
    FOREIGN KEY (Tipologia) REFERENCES Tipi_di_Vino(Nome)
);

CREATE TABLE Ordini (
    Id_Ordine INT NOT NULL AUTO_INCREMENT,
    Id_Cliente INT,
    Stato VARCHAR(50),
    Id_Indirizzo INT NOT NULL,
    Data_Ordine DATETIME NOT NULL,
    PRIMARY KEY (Id_Ordine),
    FOREIGN KEY (Id_Cliente) REFERENCES Clienti(Id_Cliente),
    FOREIGN KEY (Id_Indirizzo) REFERENCES Indirizzi(Id_Indirizzo)
);

CREATE TABLE Lista_Prodotti (
    Id_Lista INT NOT NULL AUTO_INCREMENT,
    Id_Vino INT,
    Id_Ordine INT,
    Quantità INT NOT NULL,
    PRIMARY KEY (Id_Lista),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino),
    FOREIGN KEY (Id_Ordine) REFERENCES Ordini(Id_Ordine)
);

CREATE TABLE Pagamenti (
    Id_Ordine INT,
    Id_Carta INT,
    Data_Pagamento DATETIME NOT NULL,
    PRIMARY KEY (Id_Ordine, Id_Carta),
    FOREIGN KEY (Id_Carta) REFERENCES Carte_di_Credito(Id_Carta),
    FOREIGN KEY (Id_Ordine) REFERENCES Ordini(Id_Ordine)
);

CREATE TABLE Preferire (
    Id_Cliente INT,
    Id_Vino INT,
    PRIMARY KEY (Id_Cliente, Id_Vino),
    FOREIGN KEY (Id_Cliente) REFERENCES Clienti(Id_Cliente),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino)
);

CREATE TABLE Recensire (
    Id_Cliente INT,
    Id_Vino INT,
    Voto INT NOT NULL,
    Commento TEXT,
    Data_recensione DATETIME NOT NULL,
    PRIMARY KEY (Id_Cliente, Id_Vino),
    FOREIGN KEY (Id_Cliente) REFERENCES Clienti(Id_Cliente),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino)
);

CREATE TABLE Premi (
    Id_Premio INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50),
    Organizzazione VARCHAR(50),
    PRIMARY KEY (Id_Premio)
);

CREATE TABLE Assegnare (
    Id_Premio INT,
    Id_Vino INT,
    Data_Assegnazione DATE NOT NULL,
    PRIMARY KEY (Id_Premio, Id_Vino),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino),
    FOREIGN KEY (Id_Premio) REFERENCES Premi(Id_Premio)
);

CREATE TABLE Ricevere (
    Id_Premio INT,
    Id_Produttore INT,
    Data_Ricezione DATE NOT NULL,
    PRIMARY KEY (Id_Premio, Id_Produttore),
    FOREIGN KEY (Id_Produttore) REFERENCES Produttori(Id_Produttore),
    FOREIGN KEY (Id_Premio) REFERENCES Premi(Id_Premio)
);

CREATE TABLE Uve (
    Id_Uva INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50),
    Descrizione TEXT,
    PRIMARY KEY (Id_Uva)
);

CREATE TABLE Compone (
    Id_Vino INT,
    Id_Uva INT,
    Percentuale INT NOT NULL,
    PRIMARY KEY (Id_Vino, Id_Uva),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino),
    FOREIGN KEY (Id_Uva) REFERENCES Uve(Id_Uva)
);

CREATE TABLE Magazzini (
    Id_Magazzino INT NOT NULL AUTO_INCREMENT,
    Id_Indirizzo INT,
    Nome VARCHAR(50),
    PRIMARY KEY (Id_Magazzino),
    FOREIGN KEY (Id_Indirizzo) REFERENCES Indirizzi(Id_Indirizzo)
);

CREATE TABLE Contenere (
    Id_Magazzino INT NOT NULL,
    Id_Vino INT NOT NULL,
    Quantità_Rimanente INT NOT NULL,
    PRIMARY KEY (Id_Magazzino, Id_Vino),
    FOREIGN KEY (Id_Magazzino) REFERENCES Magazzini(Id_Magazzino),
    FOREIGN KEY (Id_Vino) REFERENCES Vini(Id_Vino)
);

CREATE TABLE Spedizioni (
    Id_Spedizione INT NOT NULL AUTO_INCREMENT,
    Id_Ordine INT NOT NULL,
    Id_Corriere INT NOT NULL,
    Data_Spedizione DATETIME NOT NULL,
    Data_Consegna DATETIME,
    Stato_Spedizione VARCHAR(50) NOT NULL,
    PRIMARY KEY (Id_Spedizione),
    FOREIGN KEY (Id_Ordine) REFERENCES Ordini(Id_Ordine),
    FOREIGN KEY (Id_Corriere) REFERENCES Corrieri(Id_Corriere)
);

DELIMITER //

-- Permette l'inserimento di un cliente solo se è maggiorenne.
CREATE TRIGGER VerificaMaggiorenne
BEFORE INSERT ON Clienti
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    IF TIMESTAMPDIFF(YEAR, NEW.Data_di_nascita, CURDATE()) < 18 THEN
        SET msg = CONCAT('Inserimento negato, il cliente ', NEW.Nome, ' ', NEW.Cognome, ' non è maggiorenne.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
    END IF;
END //

-- Riporta in range i voti minori di 0 o maggiori di 10
CREATE TRIGGER VerificaVoto
BEFORE INSERT ON Recensire
FOR EACH ROW
BEGIN
    IF NEW.Voto < 0 THEN 
        SET NEW.Voto = 0;
    ELSEIF NEW.Voto > 10 THEN 
        SET NEW.Voto = 10;
    END IF;
END //

-- Evita che un premio possa essere assegnato prima che il vino sia prodotto
CREATE TRIGGER VerificaDataPremio
BEFORE INSERT ON Assegnare
FOR EACH ROW
BEGIN
    DECLARE AnnoVino INT;

    SELECT Anno INTO AnnoVino
    FROM Vini
    WHERE Id_Vino = NEW.Id_Vino;

    IF YEAR(NEW.Data_Assegnazione) < AnnoVino THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "La data di assegnazione del premio non può precedere la data di produzione del vino.";
    END IF;
END //

DELIMITER ;
