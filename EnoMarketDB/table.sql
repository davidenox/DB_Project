CREATE TABLE Magazzini(
    ID_Magazzino int not null,
    Indirizzo not null,
    PRIMARY KEY (ID_Magazzino)
);

CREATE TABLE Uve(
    Varietà_Uva varchar(50) not null,
    Provenienza varchar(50) not null,
    PRIMARY KEY (Varietà_Uva, Provenienza)
);

CREATE TABLE Miscele(
    Nome_Miscela varchar(50) not null,
    Descrizione not null,
    PRIMARY KEY (Nome_Miscela)
);

CREATE TABLE Metodo(
    Nome_Metodo varchar(50) not null,
    Descrizione not null,
    Invecchiamento not null,
    PRIMARY KEY (Nome_Metodo)
)

CREATE TABLE Premio(
    Nome_Premio varchar(50) not null,
    Associazione not null,
    Tipologia not null,
    PRIMARY KEY (Nome_Premio)
);

CREATE TABLE Clienti(
    Email varchar(50) not null,
    Nome_cliente not null,
    Cognome_cliente not null,
    Password not null,
    Data_Nascita date not null,
    Indirizzo not null,
    PRIMARY KEY (Email)
);

CREATE TABLE Cantine(
    P_Iva_Cantine int not null,
    Intestazione not null,
    Regione not null, 
    Storia not null,
    PRIMARY KEY (P_Iva_Cantine)
);

CREATE TABLE Personale(
    ID_Personale int not null,
    Ruolo not null,
    Nome_Personale not null,
    Cognome_Personale not null,
    PRIMARY KEY (ID_Personale)
);

CREATE TABLE Corrieri(
    P_IVA_Corriere int not null,
    Intestazione not null,
    PRIMARY KEY (P_IVA_Corriere)
);

-- Qui finiscono le tabelle di entità senza FK e iniziano le miste (PK e FK)

CREATE TABLE Vini(
    Nome_Vino varchar(50) not null,
    Annata date not null,
    Descrizione not null,
    Tipologia not null,
    Prezzo int not null,
    Storia_Vino not null,
    Nome_Metodo not null,
    Nome_Miscela not null,
    PRIMARY KEY (Nome_Vino, Annata),
    FOREIGN KEY (Nome_Metodo) REFERENCES Metodo(Nome_Metodo),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscele(Nome_Miscela)
);

CREATE TABLE Carta_Di_Credito(
    N_Carta int not null,
    Circuito not null,
    CVV int not null,
    Data_Scadenza date not null,
    Nome_Carta not null,
    Cognome_Carta not null,
    Email not null,
    PRIMARY KEY (N_Carta),
    FOREIGN KEY (Email) REFERENCES Clienti(Email)
);

CREATE TABLE Recensioni(
    ID_Recensione int not null,
    Data_Recensione date not null,
    Stelle int not null,
    Commento not null,
    Email not null,
    Nome_Vino not null,
    Annata date not null,
    PRIMARY KEY (ID_Recensione),
    FOREIGN KEY (Email) REFERENCES Clienti(Email),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
);

CREATE TABLE Ordini(
    N_Ordine int not null,
    Data_Ordine date not null,
    Stato_Ordine not null,
    Indirizzo not null,
    Email not null,
    ID_Personale int not null,
    PRIMARY KEY (N_Ordine),
    FOREIGN KEY (Email) REFERENCES Clienti(Email),
    FOREIGN KEY (ID_Personale) REFERENCES Personale(ID_Personale)
);

CREATE TABLE Spedizioni(
    N_Spedizione int not null,
    Data_Consegna date not null,
    Data_Ritiro date not null,
    Stato not null,
    N_Ordine int not null,
    P_IVA_Corriere int not null,
    PRIMARY KEY (N_Spedizione),
    FOREIGN KEY (N_Ordine) REFERENCES Ordini(N_Ordine),
    FOREIGN KEY (P_IVA_Corriere) REFERENCES Corrieri(P_IVA_Corriere)
),

-- Qui finiscono le tabelle delle entità ed iniziano le tabelle delle relazioni con attributi

CREATE TABLE Conservare(
    ID_Magazzino int not null,
    Nome_Vino not null,
    Annata date not null,
    Quantita int not null,
    FOREIGN KEY ID_Magazzino REFERENCES Magazzini(ID_Magazzino),
    FOREIGN KEY (Nome_Vino, Annata) REFERENCES Vini(Nome_Vino, Annata)
)

CREATE TABLE Creare(
    Varietà_Uva not null,
    Provenienza not null,
    Nome_Miscela not null,
    Percentuale int not null,
    FOREIGN KEY (Varietà_Uva, Provenienza) REFERENCES Uve(Varietà_Uva, Provenienza),
    FOREIGN KEY (Nome_Miscela) REFERENCES Miscela(Nome_Miscela)
);

CREATE TABLE Usare(
    Nome_Metodo not null,
    P_Iva_Cantine int not null,
    FOREIGN KEY (Nome_Metodo) REFERENCES Metodo(Nome_Metodo),
    FOREIGN KEY (P_Iva_Cantine) REFERENCES Cantine(P_Iva_Cantine)
);

CREATE TABLE Ricevere(
    Annata not null,
    Nome_Vino not null,
    Nome_Premio not null,
    FOREIGN KEY (Annata, Nome_Vino) REFERENCES Vini(Annata, Nome_Vino),
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio)
);

CREATE TABLE Contenere(
    N_Ordine int not null,
    Annata not null,
    Nome_Vino not null,
    N_Prodotti int not null,
    FOREIGN KEY (N_Ordine) REFERENCES Ordini(N_Ordine),
    FOREIGN KEY (Annata, Nome_Vino) REFERENCES Vini(Annata, Nome_Vino)
)

CREATE TABLE Assegnare(
    Nome_Premio not null,
    P_Iva_Cantine not null,
    FOREIGN KEY (Nome_Premio) REFERENCES Premio(Nome_Premio),
    FOREIGN KEY (P_Iva_Cantine) REFERENCES Cantine(P_Iva_Cantine)
);