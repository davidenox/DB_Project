
CREATE TABLE Clienti (
    Email VARCHAR(50) NOT NULL,
    Nome_Cliente VARCHAR(50) NOT NULL,
    Cognome_Cliente VARCHAR(50) NOT NULL,
    Data_Nascita DATE NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    PRIMARY KEY (Email)
);

CREATE TABLE Personale (
    ID_Personale VARCHAR(50) NOT NULL,
    Ruolo VARCHAR(50),
    Nome_Personale VARCHAR(50) NOT NULL,
    Cognome_Personale VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Personale)
);

CREATE TABLE Corrieri (
    P_Iva_Corriere INT NOT NULL,
    Intestazione VARCHAR(50),
    PRIMARY KEY (P_Iva_Corriere)
);

CREATE TABLE Miscela (
    Nome_Miscela VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200),
    PRIMARY KEY (Nome_Miscela)
);

CREATE TABLE Cantine (
    P_IVA_Cantina INT NOT NULL,
    Intestazione VARCHAR(50) NOT NULL,
    Regione VARCHAR(50),
    Storia VARCHAR(200),
    PRIMARY KEY (P_IVA_Cantina)
);

CREATE TABLE Magazzini (
    ID_Magazzino VARCHAR(100) NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Magazzino)
);

CREATE TABLE Uve (
    Varieta_Uva VARCHAR(50),
    Provenienza VARCHAR(50),
    PRIMARY KEY (Varieta_Uva, Provenienza)
);

CREATE TABLE Premio (
    Nome_Premio VARCHAR(50) NOT NULL,
    Associazione VARCHAR(50),
    Tipologia VARCHAR(50),
    PRIMARY KEY (Nome_Premio)
);

CREATE TABLE Metodi (
    Nome_Metodo VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200),
    Invecchiamento VARCHAR(200),
    PRIMARY KEY (Nome_Metodo)
);

-- Iniziano primary e foreign

CREATE TABLE Carta_di_Credito (
    Num_Carta VARCHAR(16) NOT NULL,
    Circuito VARCHAR(25) NOT NULL,
    CVV INT NOT NULL,
    Data_Scadenza VARCHAR(50) NOT NULL,
    Nome_Carta VARCHAR(50) NOT NULL,
    Cognome_Carta VARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    PRIMARY KEY (Num_Carta),
    FOREIGN KEY (Email) REFERENCES Clienti(Email)
);

CREATE TABLE Ordini (
    Num_Ordine VARCHAR(100) NOT NULL,
    Data_Ordine VARCHAR(50) NOT NULL,
    Stato_Ordine VARCHAR(50) NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    ID_Personale VARCHAR(50),
    Email VARCHAR(50),
    PRIMARY KEY (Num_Ordine),
    FOREIGN KEY (ID_Personale) REFERENCES Personale(ID_Personale),
    FOREIGN KEY (Email) REFERENCES Clienti(Email)
);

CREATE TABLE Spedizioni (
    Num_Spedizione VARCHAR(50) NOT NULL,
    Data_Consegna DATE NOT NULL,
    Data_Ritiro DATE NOT NULL,
    Stato VARCHAR(50) NOT NULL,
    P_Iva_Corriere INT,
    Num_Ordine VARCHAR(100),
    PRIMARY KEY (Num_Spedizione),
    FOREIGN KEY (P_Iva_Corriere) REFERENCES Corrieri(P_Iva_Corriere),
    FOREIGN KEY (Num_Ordine) REFERENCES Ordini(Num_Ordine)
);

CREATE TABLE Vini (
    Nome_Vino VARCHAR(50) NOT NULL,
    Annata INT NOT NULL,
    Descrizione VARCHAR(200),
    Tipologia VARCHAR(50),
    Prezzo DECIMAL (10,2) NOT NULL,
    Nome_Miscela VARCHAR(50),
    PRIMARY KEY (Nome_Vino, Annata),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscela(Nome_Miscela)
);

CREATE TABLE Recensioni (
    ID_Recensione INT NOT NULL,
    Data_Recensione DATE NOT NULL,
    Stelle INT NOT NULL,
    Commento VARCHAR(200),
    Email VARCHAR(50),
    Nome_Vino VARCHAR(50),
    Annata INT,
    PRIMARY KEY (ID_Recensione),
    FOREIGN KEY (Email) REFERENCES Clienti(Email),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
);

CREATE TABLE Contenere (
    Num_Prodotti INT NOT NULL,
    Num_Ordine Varchar(100),
    Nome_Vino VARCHAR(50),
    Annata INT,
    FOREIGN KEY (Num_Ordine) REFERENCES Ordini(Num_Ordine),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
);

CREATE TABLE Produrre (
    Num_Bottiglie INT NOT NULL,
    Nome_Vino VARCHAR(50),
    Annata INT,
    P_IVA_Cantina INT,
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata),
    FOREIGN KEY (P_IVA_Cantina) REFERENCES Cantine(P_IVA_Cantina)
);

CREATE TABLE Conservare (
    Quantita INT NOT NULL,
    ID_Magazzino Varchar(100),
    Nome_Vino VARCHAR(50),
    Annata INT,
    FOREIGN KEY (ID_Magazzino) REFERENCES Magazzini(ID_Magazzino),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini (Nome_Vino, Annata)
);

CREATE TABLE Creare (
    Percentuale INT NOT NULL,
    Varieta_Uva VARCHAR(50),
    Nome_Miscela VARCHAR(50),
    Provenienza VARCHAR(50),
    FOREIGN KEY (Varieta_Uva, Provenienza) REFERENCES Uve(Varieta_Uva, Provenienza),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscela(Nome_Miscela)
);

CREATE TABLE Assegnare (
    Data_Assegnazione VARCHAR(50) NOT NULL,
    Nome_Premio VARCHAR(50),
    P_IVA_Cantina INT,
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio),
    FOREIGN KEY (P_IVA_Cantina) REFERENCES Cantine(P_IVA_Cantina)
);

CREATE TABLE Ricevere (
    Data_Ricezione DATE NOT NULL,
    Nome_Vino VARCHAR(50),
    Annata INT,
    Nome_Premio VARCHAR(50),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata),
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio)
);

CREATE TABLE Usare (
    Nome_Metodo VARCHAR(50),
    P_IVA_Cantina INT,
    FOREIGN KEY (Nome_Metodo) REFERENCES Metodi(Nome_Metodo),
    FOREIGN KEY (P_IVA_Cantina) REFERENCES Cantine(P_IVA_Cantina)
);

CREATE TABLE Preferiti (
    Email VARCHAR(50),
    Nome_Vino VARCHAR(50),
    Annata INT,
    FOREIGN KEY (Email) REFERENCES Clienti(Email),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
);