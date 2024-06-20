``` SQL
CREATE DATABASE EnomarketDB;

CREATE TABLE Clienti (
    E-mail VARCHAR(50) NOT NULL,
    Nome_Cliente VARCHAR(50) NOT NULL,
    Cognome_Cliente VARCHAR(50) NOT NULL,
    Data_Nascita DATE NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    PRIMARY KEY (E-mail)
);

CREATE TABLE Carta_di_Credito (
    Num_Carta INT NOT NULL,
    Circuito VARCHAR(15) NOT NULL,
    CVV INT NOT NULL,
    Data_Scadenza DATE NOT NULL,
    Nome_Carta VARCHAR(50) NOT NULL,
    Cognome_Carta VARCHAR(50) NOT NULL,
    PRIMARY KEY (Num_Carta),
    FOREIGN KEY (E-mail) REFERENCES Clienti(E-mail)
);

CREATE TABLE Personale (
    ID_Personale VARCHAR(50) NOT NULL,
    Ruolo VARCHAR(50),
    Nome_Personale VARCHAR(50) NOT NULL,
    Cognome_Personale VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Personale)
);

CREATE TABLE Ordini (
    Num_Ordine INT NOT NULL,
    Data_Ordine DATE NOT NULL,
    Stato_Ordine VARCHAR(50) NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    PRIMARY KEY (Num_Ordine),
    FOREIGN KEY (ID_Personale) REFERENCES Personale(ID_Personale),
    FOREIGN KEY (E-mail) REFERENCES Clienti(E-mail)
);

CREATE TABLE Corrieri (
    P.Iva_Corriere INT NOT NULL,
    Intestazione VARCHAR(50),
    PRIMARY KEY (P.Iva_Corriere)
);

CREATE TABLE Spedizioni (
    Num_Spedizione INT NOT NULL,
    Data_Consegna DATE NOT NULL,
    Data_Ritiro DATE NOT NULL,
    Stato VARCHAR(50) NOT NULL,
    PRIMARY KEY (Num_Spedizione),
    FOREIGN KEY (P.Iva_Corriere) REFERENCES Corrieri(P.Iva_Corriere),
    FOREIGN KEY (Num_Ordine) REFERENCES (Ordini)
);

CREATE TABLE Miscela (
    Nome_Miscela VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200),
    PRIMARY KEY (Nome_Miscela)
);

CREATE TABLE Vini (
    Nome_Vino VARCHAR(50) NOT NULL,
    Annata DATE NOT NULL,
    Descrizione VARCHAR(200),
    Tipologia VARCHAR(50),
    Prezzo DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (Nome_Vino, Annata),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscela(Nome_Miscela)
);

CREATE TABLE Recensioni (
    ID_Recensione INT NOT NULL,
    Data_Recensione DATE NOT NULL,
    Stelle INT NOT NULL,
    Commento VARCHAR(200),
    PRIMARY KEY (ID_Recensioni),
    FOREIGN KEY (E-mail) REFERENCES Clienti(E-mail),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
);

CREATE TABLE Contenere (
    Num_Prodotti INT NOT NULL,
    FOREIGN KEY (Num_Ordine) REFERENCES Ordini(Num_Ordine),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata),
);

CREATE TABLE Cantine (
    P.IVA_Cantina INT NOT NULL,
    Intestazione VARCHAR(50) NOT NULL,
    Regione VARCHAR(50),
    Storia VARCHAR(200),
    PRIMARY KEY (P.IVA_Cantina)
);

CREATE TABLE Produrre (
    Num_Bottiglie INT NOT NULL,
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata),
    FOREIGN KEY (P.IVA_Cantina) REFERENCES Cantine(P.IVA_Cantina)
);

CREATE TABLE Magazzini (
    ID_Magazzino INT NOT NULL,
    Indirizzo VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Magazzino)
);

CREATE TABLE Conservare (
    Quantità INT NOT NULL,
    FOREIGN KEY (ID_Magazzino) REFERENCES Magazzini(ID_Magazzino),
    FOREIGN KEY (Vini) REFERENCES Vini (Nome_Vino, Annata)
);

CREATE TABLE Uve (
    Varietà_Uva VARCHAR(50),
    Provenienza VARCHAR(50),
    PRIMARY KEY (Varietà_Uva, Provenienza)
);

CREATE TABLE Creare (
    Percentuale INT NOT NULL,
    FOREIGN KEY (Varietà_Uva, Provenienza) REFERENCES Uve(Varietà_Uva, Provenienza),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscela(Nome_Miscela)
);

CREATE TABLE Premio (
    Nome_Premio VARCHAR(50) NOT NULL,
    Associazione VARCHAR(50),
    Tipologia VARCHAR(50)
    PRIMARY KEY (Nome_Premio)
);

CREATE TABLE Assegnare (
    Data_Assegnazione DATA NOT NULL,
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio),
    FOREIGN KEY (P.IVA_Cantina) REFERENCES Cantine(P.IVA_Cantina)
);

CREATE TABLE Ricevere (
    Data_Ricezione DATA NOT NULL,
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata),
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio)
);

CREATE TABLE Metodi (
    Nome_Metodo VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200),
    Invecchiamento VARCHAR(200)
    PRIMARY KEY (Nome_Metodo)
);

CREATE TABLE Usare (
    FOREIGN KEY (Nome_Metodo) REFERENCES Metodi(Nome_Metodo),
    FOREIGN KEY (P.IVA_Cantina_) REFERENCES Cantine(P.IVA_Cantina)
);

```