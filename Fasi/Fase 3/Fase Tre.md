***Progetto*** **EnoMarket**
***Autori:*** **La Rovere Andrea, Noce Davide, Zheng Simone**
***Corso di laurea:*** **Informatica**
***Data:*** **10/07/2024**
# Parte Prima: Generalità

## Descrizione generale del prodotto

Il progetto mira alla creazione di un database per la gestione di un sito e-commerce dedicato alla vendita di vini. Questo database sarà il nucleo centrale del sistema informativo, supportando le operazioni quotidiane dell'e-commerce, dall'ordine da parte degli utenti alla spedizione del prodotto stesso. Il database si occuperà della gestione degli ordini, delle specifiche dei vini, della consegna dei prodotti e della raccolta delle recensioni da parte dei clienti riguardo la consegna e la qualità dei prodotti.
## Obiettivi del Progetto:

1. **Organizzazione Efficiente dell'Inventario**:
    - Archiviazione dettagliata delle informazioni sui prodotti, inclusi nomi, descrizioni, varietà di uve, annate, regioni di produzione, cantine, e immagini.
2. **Gestione degli Utenti**:
    - Registrazione degli utenti con dati personali, credenziali di accesso e preferenze.
    - Registrazione dei metodi di pagamento dei clienti
    - Storico degli acquisti e tracciamento degli ordini.
3. **Processamento degli Ordini**:
    - Sistema per la creazione, la modifica e la cancellazione degli ordini.
    - Tracciabilità degli ordini dal momento della creazione fino alla consegna.
    - Gestione dei pagamenti e delle transazioni finanziarie.
4. **Integrazione con Sistemi Esterni**:
    - Integrazione con corrieri per la gestione delle spedizioni.
5. **Analisi e Reportistica**:
    - Generazione di recensioni sulle vendite e sulle performance dei prodotti.
    - Analisi dei comportamenti degli utenti per migliorare l'esperienza di acquisto e le strategie di marketing.

## Utenti

Gli utenti principali del DB sono i seguenti:
- *Clienti*;
- *Personale*;
- *Corrieri*.
### Clienti

**Profilo**: I clienti sono gli utenti finali che visitano il sito per acquistare vini. Possono essere appassionati di vini, collezionisti, ristoratori o semplici consumatori occasionali.

**Obiettivi/Bisogni**:

- **Ricerca e Scoperta**: Accesso facile e intuitivo per esplorare i prodotti disponibili, con filtri per regione, varietà di uva, annata, prezzo, ecc.
- **Acquisto Semplice e Sicuro**: Processo di acquisto fluido, supporto per vari metodi di pagamento, e sicurezza nelle transazioni.
- **Informazioni Dettagliate**: Descrizioni complete dei prodotti, recensioni, e consigli sull'abbinamento cibo-vino.
- **Gestione degli Ordini**: Visualizzazione dello stato degli ordini, storico degli acquisti, e aggiornamenti sulle spedizioni.
- **Personalizzazione**: Raccomandazioni personalizzate basate sui precedenti acquisti e preferenze.

### Personale

**Profilo**: Il personale gestisce l'inventario fisico, preparando gli ordini per la spedizione e monitorando le scorte.

**Obiettivi/Bisogni**:

- **Gestione delle Scorte**: Monitoraggio accurato delle quantità in magazzino e notifica automatica per il riordino dei prodotti.
- **Processo degli Ordini**: Accesso agli ordini in tempo reale per preparare le spedizioni e aggiornare lo stato degli ordini.
- **Logistica e Spedizioni**: Coordinamento con i corrieri e generazione di etichette di spedizione.

### Corrieri
**Profilo**: I corrieri sono i partner logistici responsabili della consegna dei prodotti acquistati dai clienti sul sito e-commerce. Possono essere aziende di spedizioni esterne contrattate per gestire le consegne.

**Obiettivi/Bisogni**:

- **Accesso agli Ordini di Spedizione**: Visualizzazione e gestione degli ordini pronti per la spedizione, con dettagli sui pacchi da consegnare.
- **Aggiornamento dello Stato di Spedizione**: Capacità di aggiornare in tempo reale lo stato della spedizione, inclusi i passaggi intermedi (in transito, consegnato, ritardo).
- **Generazione di Etichette di Spedizione**: Strumenti per generare e stampare etichette di spedizione con tutte le informazioni necessarie (indirizzo di destinazione, numero di tracciamento, codice a barre).
- **Tracciabilità delle Spedizioni**: Sistema di tracciamento per monitorare il percorso delle spedizioni e fornire aggiornamenti ai clienti e agli operatori del magazzino.

# Parte seconda: Raccolta e analisi dei Requisiti
## Glossario dei termini

| Entità           | Descrizione            | Sinonimi       |
| ---------------- | ---------------------- | -------------- |
| Clienti          | Comprano il prodotto   | Compratori     |
| Vini             | Prodotti in vendita    | Prodotti       |
| Carte di Credito | Metodo di pagamento    | Carte          |
| Spedizioni       | Consegna dei prodotti  | Invio          |
| Ordini           | Acquisto dei prodotti  | Richieste      |
| Recensioni       | Feedback dell'utente   | Feedback       |
| Indirizzi        | Indirizzi fisici       | Recapiti       |
| Corrieri         | Gestore consegne       | Trasportatori  |
| Magazzini        | Depositi dei vini      | Riserve        |
| Tipi di Vini     | Varianti del vino      | Tipologie      |
| Uve              | Ingrediente per i vini | Materie Prime  |
| Produttori       | Produttori dei vini    | Realizzatori   |
| Premi            | Nome premio vinto      | Riconoscimenti |

## Specifiche, assunzioni e vincoli d’integrità
#### Vincoli
- L'ordine parte solo dopo il pagamento.
- Tutto il vino viene da un solo fornitore.
- Pagamento diretto, non a rate.
- Ogni ordine è gestito da un solo dipendente dell'enoteca.
- Si ipotizzano più magazzini.
- Il cliente può scrivere al più una recensione per vino.
# Parte Terza: Progettazione concettuale
## Diagramma E-R
### Schema scheletro

![[scheletro.jpg]]

Le entità principali del sistema sono le seguenti:
- Cliente
- Vino
- Corriere
Le relazioni presenti permettono di affermare che un _Cliente_ può comprare un _Vino_ che viene spedito dal _Corriere_. 
### Raffinamenti 
1. Raffinazione *Clienti*:
   ![[Pasted image 20240708155053.png]]

Qui si raffina l'entità _Cliente_:
- Ad ogni _Cliente_ è associata una o più _Carte di Credito_ che gli permetterà di acquistare i prodotti;
- Il *Cliente*, al termine dell'acquisto e della consegna, può lasciare una *Recensione* riguardo il servizio di consegna e riguardo la qualità del prodotto acquistato.
 
----

2. Raffinazione *Vini*:
   
![[raffinazione2.jpg]]

Qui si raffina l'entità *Vini*:
- I *Vini* saranno composti da *Miscele* create dalle diverse varietà di *Uve*;
- Essi verranno prodotti in delle *Cantine* e conservate in dei *Magazzini* in attesa di un ordine e di una seguente spedizione.

----

3. Raffinazione *Ordini*:

![[Pasted image 20240708155019.png]]

Qui si raffina l'entità *Ordini*:
- Il *Personale* si occuperà della preparazione degli *Ordini*;
- Gli *Ordini* verranno inviati tramite delle *Spedizioni*;
- *Spedizioni* che verranno effettuate dai *Corrieri*.

# Parte Quarta: Progettazione Logica
DA RIVEDERE
## Schema Logico
![[Logico_Definitivo2.drawio.png]]

Le chiavi primarie sono identificate in **grassetto**, mentre le chiavi secondarie in _corsivo_
- Clienti (**ID_Cliente**, Nome, Cognome, Data_Nascita)
- Carta di Credito (**ID_Carta**, Numero_Carta, CVV, Scadenza, Nome_Carta, Cognome_Carta, _E-mail_)
- Personale (**ID_Personale**, Ruolo, Nome_Personale, Cognome_Personale)
- Ordini (**N° Ordine**, Data Ordine, Stato Ordine, Indirizzo, _ID_Personale_, _E-mail_ )
- Corrieri (**P.Iva_Corriere**, Intestazione)
- Spedizioni (**N° Spedizione**, Data Consegna, Data Ritiro, Stato, _P.Iva_Corriere_, _N° Ordine_)
- Recensioni (**ID_Recensioni**, Data_Recensioni, Stelle, Commento, _E-mail_, _Nome_Vino_, _Annata_) 
- Miscela (**Nome_Miscela**, Descrizione)
- Vini (**Nome_Vino**, **Annata**, Descrizione, Tipologia, Prezzo, _Nome_Miscela_)
- Contenere (_N° Ordine_, _Nome_Vino_, _Annata_, N°Prodotti)
- Cantine (**P.Iva_Cantina**, Intestazione, Regione, Storia)
- Produrre (_Annata_, _Nome_Vino_, _P.Iva_Cantina_, Num_Bottiglie)
- Magazzini (**ID_Magazzino**, Indirizzo)
- Conservare (_ID_Magazzino_, _Nome_Vino_, _Annata_, Quantità)
- Uve (**Varietà Uva**, **Provenienza**)
- Creare (**Varietà Uva**, **Provenienza**, Percentuale, _Nome_Miscela_)
- Premio (**Nome_Premio**, Associazione, Tipologia)
- Assegnare (_Nome_Premio_, _P.IVA_cantine_, Data_Assegnazione)
- Ricevere (_Nome_Vino_, _Annata_, _Nome_Premio_, Data_Ricezione)
- Metodo (**Nome_Metodo**, Descrizione, Invecchiamento)
- Usare (_Nome_Metodo_, _P.IVA_Cantine_)


### Normalizzazione

1. Le tuple del diagramma possiedono solo attributi semplici $\implies$ 1NF è soddisfatta.
2. Gli attributi non primi delle nostre entità dipendono unicamente dalla chiave primaria completa $\implies$ 2NF è soddisfatta.
3. Gli attributi non primi delle nostre entità dipendono in maniera non transitiva dalla chiave primaria completa $\implies$ 3NF è soddisfatta.
4. Le entità sono state decomposte in maniera da ottenere il massimo numero possibile di BCNF.

----







## Schema E-R concettuale ristrutturato
DA FARE
## Dizionario Entità e Relazioni
### Glossario delle Entità
| Entità           | Descrizione                                          | Attributi                                                                       | Relazioni coinvolte                                                               |
| ---------------- | ---------------------------------------------------- | ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| Clienti          | Utente che intende acquistare il prodotto            | *ID_Cliente*,  Nome, Cognome, Data_Nascita                                      | Risiedere, Effettuare, Collegare, Scrivere, Preferire                             |
| Vini             | Prodotto in vendita                                  | *ID_Vino*, Anno, Nome,  Biologico, Gradazione, Prezzo, Solfiti                  | Contenere, Produrre, Valutare, Elenca, Appartenere, Assegnare, Preferire, Compone |
| Carte di credito | Metodo di pagamento                                  | *ID_Carta*, CVV, Scadenza, Nome_Carta, Cognome_Carta,  Tipo_Carta, Numero_Carta | Collegare, Pagamenti                                                              |
| Spedizioni       | Metodo di consegna del prodotto                      | *ID_Spedizione*, Data_Spedizione, Data_Consegna, Stato_Spedizione               | Organizzare, Formare                                                              |
| Ordini           | Acquisto effettivo del prodotto                      | *ID_Ordine*, Data_Ordine, Stato                                                 | Formare, Effettuare, Pagamenti, Associare, Descrizione                            |
| Recensioni       | Feedback dell'utente                                 | *ID_Recensione*, Data_Recensione, Voto, Commento                                | Scrivere, Valutare                                                                |
| Produttori       | Colui che produce il vino                            | *ID_Produttore*, Nome,  Partita_IVA                                             | Produrre, Sede, Ricevere                                                          |
| Corrieri         | Azienda esterna che gestisce le consegne             | *ID_Corriere*, Nome                                                             | Organizzare                                                                       |
| Magazzini        | Luogo in cui viene gestita la conservazione dei vini | *ID_Magazzino*, Nome                                                            | Contenere                                                                         |
| Tipi di Vino     | Informazioni aggiuntive del vino in base al tipo     | *Nome*                                                                          | Appartenere                                                                       |
| Lista Prodotti   | Informazione dei prodotti                            | *ID_Lista*, Quantità                                                            | Associare, Elenca                                                                 |
| Uve              | Ingredienti per la produzione dei vini               | *ID_Uva*, Nome, Descrizione                                                     | Comporre                                                                          |
| Premi            | Premio assegnati                                     | *ID_Premio*, Nome, Descrizione                                                  | Assegnare, Ricevere                                                               |
| Indirizzi        | Indirizzo della sede e del cliente                   | *ID_Indirizzo*, Via, Civico, CAP, Città, Provincia, Nazione                     | Risiedere, Sede, Destinazione                                                     |


### Glossario delle Relazioni

| Relazione    | Descrizione                                           | Entità                              |
| ------------ | ----------------------------------------------------- | ----------------------------------- |
| Associare    | L'associazione di una lista dei prodotti ad un ordine | Ordini (1:1), Lista_Prodotti(1:N),  |
| Effettuare   | Effettuare l'ordine da parte dei clienti              | Ordini (1:1),  Clienti(0:N)         |
| Produrre     | Indica chi ha prodotto il vino                        | Vini (1:1), Produttori (0:N)        |
| Compone      | Indica cosa c'è all'interno del vino                  | Vini (1:N), Uve (0:N)               |
| Scrivere     | Commento lasciato dal cliente                         | Clienti (0:N), Recensione (1:1)     |
| Valutare     | Modo per valutare la qualitò del vino                 | Recensione (1:1), Vini (0:N)        |
| Contenere    | Luogo dove viene conservato il vino                   | Magazzini (0:N), Vini (1:N)         |
| Formare      | Preparare l'ordine da spedire                         | Spedizioni(1:N), Ordini(1:1)        |
| Preferire    | Indica la preferenza dei clienti sui vini             | Clienti(0:N), Vini(0:N)             |
| Assegnare    | Assegnare il premio vinto al vino                     | Vini(0:N), Premi(1:N)               |
| Ricevere     | Ricevere il premio al produttore                      | Premio(1:N), Produttori(0:N)        |
| Sede         | Luogo dove si trova la sede                           | Produttori(1:1), Indirizzi(1:1)     |
| Elenca       | Elenca i vini presenti nella lista                    | Lista_Prodotti(1:N), Vini(0:N)      |
| Destinazione | Luogo di consegna dell'ordine                         | Ordini(1:1), Indirizzi(0:N)         |
| Organizzare  | Corriere organizza la spedizione                      | Corrieri(0:N), Spedizioni(0:N)      |
| Pagamenti    | Pagamento degli ordini tramite carta                  | Carta di Credito(1:N), Ordini(0:N)  |
| Collegare    | Carta collegata ad un cliente                         | Carta di Credito(1:1), Clienti(1:N) |
| Appartenere  | Un vino appartiene ad un tipo                         | Vini(1:1), Tipi di Vino(1:N)        |
| Risiedere    | Luogo in cui un cliente abita                         | Clienti(1:1), Indirizzi(1:N)        |

## Carico Applicativo
### Tabella dei Volumi 

| Concetto         | Costrutto | Volume |
| ---------------- | --------- | ------ |
| Clienti          | E         |        |
| Vini             | E         |        |
| Carte di credito | E         |        |
| Spedizioni       | E         |        |
| Ordini           | E         |        |
| Recensioni       | E         |        |
| Personale        | E         |        |
| Corrieri         | E         |        |
| Magazzini        | E         |        |
| Miscele          | E         |        |
| Cantine          | E         |        |
| Uve              | E         |        |
| Procedimento     | E         |        |
| Premio Vino      | E         |        |
| Premio Cantina   | E         |        |
### Volume dei dati


| Concetto         | Dimensione Record | Volume |
| ---------------- | ----------------- | ------ |
| Clienti          |                   |        |
| Vini             |                   |        |
| Carte di credito |                   |        |
| Spedizioni       |                   |        |
| Ordini           |                   |        |
| Recensioni       |                   |        |
| Personale        |                   |        |
| Corrieri         |                   |        |
| Magazzini        |                   |        |
| Miscele          |                   |        |
| Cantine          |                   |        |
| Uve              |                   |        |
| Procedimento     |                   |        |
| Premio Vino      |                   |        |
| Premio Cantina   |                   |        |

### Tabella delle Operazioni
-----


## Schema Fisico
----

## Implementazione Database - MySQL

### Creazione delle Tabelle

```MySQL
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
```

### Triggers 
I trigger fanno parte del DDL (Data Definition Manipulation), essi seguono il principio ECA, ovvero Event-Condition-Action. Solitamente, un trigger si può attivare prima o dopo un inserimento e hanno 2 livelli di granularità:
1. Attivarsi per ogni tupla
2. Ativarsi per ogni istruzione DML
Nello specifico in MySQL i trigger operano a livello di riga e si ammette un solo trigger per tabella. Osserviamo inoltre che questi vengono usati per mantenere constraint di ogni tipo, in primis il vincolo di integrità referenziale. Quelli di seguito sono una serie di trigger di esempio necessari per mantenere una serie di vincoli nel nostro database. 

---

## Inserimenti 
Di seguito vengono riportati alcuni estratti di query per l'inserimento, presi dallo script di creazione automatica delle query

### Clienti  

```MySQL
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
```
---
### Vini   

```MySQL
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
```
---
### Carte di Credito

```MySQL
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
```
---
### Spedizioni  

```MySQL
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
```
---
### Ordini  

```MySQL
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
```
---
### Recensioni

```MySQL
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
```
---
### Personale  

```MySQL
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
```
---
### Corrieri  

```MySQL
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
```
---
### Magazzini 

```MySQL
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
```
---
### Miscela

```MySQL
INSERT INTO Miscela (Nome_Miscela, Descrizione) VALUES 
('Blend_001', 'Una miscela toscana di Sangiovese e Merlot con note fruttate e speziate.'),
('Cuvee_Rosso', 'Un cuvée piemontese di Nebbiolo e Barbera con un carattere complesso e raffinato.'),
('Super_Tuscan', 'Un Super Tuscan che combina Cabernet Sauvignon, Sangiovese e Merlot per un vino robusto e corposo.'),
('Nobile_Rosso', 'Un nobile rosso veneto con Corvina, Rondinella e Molinara, perfetto per occasioni speciali.'),
('Blend_002', 'Una miscela unica con varietà segrete, dal gusto sorprendente e raffinato.'),
('Cuvee_Bianco', 'Un cuvée bianco aromatico e fresco, ideale per cene estive.'),
('Riserva_Speciale', 'Una riserva speciale invecchiata con un gusto robusto e maturo.'),
('Passito_Dolce', 'Un passito dolce con note di miele e albicocca, perfetto per dessert.'),
('Frizzante_Vivace', 'Un vino frizzante vivace e rinfrescante, ideale per aperitivi.'),
('Novello_Giovane', 'Un vino novello giovane e fresco, perfetto per ogni occasione.');
```
---
### Cantine  

```MySQL
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
```
---
### Uve  

```MySQL
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
```
---
### Metodi

```MySQL
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
```
---
### Premio Vino  

```MySQL
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
```
---
### Premio Cantina  
---

## Query
---

## Algebra Relazionale
L’algebra relazionale è un linguaggio query procedurale in notazione algebrica. In una query, si applicano sequenzialmente le operazioni alle relazioni. Ogni operazione (unaria o binaria) riceve in input una relazione e ne produce un’altra in output.

Le operazioni primitive sono:
- Selezione (σ) 
- Proiezione ( π)
- Unione ( $\bigcup$ )
- Differenza Insiemistica ( - ) 
- Prodotto Cartesiano ( X ) 
- Ridenominazione ( $\rho$ )

Esistono altre operazioni da esse derivabili, tra cui l’intersezione insiemistica ( $\bigcap$ ). 
Di seguito troviamo alcune query sul nostro database scritte in Algebra Relazionale:
## Calcolo Relazionale
Il calcolo relazionale è un linguaggio query non procedurale ma dichiarativo. Invece dell’algebra, utilizza il calcolo dei predicati matematici del primo ordine in notazione logica. L’output di una query è una relazione che contiene solo tuple che soddisfano le formule logiche espresse. Il potere espressivo del calcolo relazionale è dunque equivalente a quello dell’algebra relazionale. Versioni:
1. Calcolo relazionale sui domini  
2. Calcolo relazionale sulle tuple con dichiarazione di range

Di seguito sono alcune query espresse tramite il calcolo relazionale sulle tuple con dichiarazione di range:

## Sicurezza
In un database aziendale devono essere presenti diverse tipologie di utenti con diversi diritti, nella nostra modellizzazione della realtà, infatti, abbiamo definito 2 classi di utenti:
- un manager che ha tutti i diritti  
- gli addetti vendite, i direttori commerciali che possono aggiungere righe e fare query

Inoltre, si è definito un terzo utente che ha accesso solamente a delle view in modalità lettura, questo perché non gli si vuole dare accesso alle tabelle originali per questioni di sicurezza. Ovviamente la creazione di questo ultimo utente ha il solo fine dimostrativo e non sarebbe effettivamente inserito in un progetto reale.

Le view sono tabelle che non memorizzano dati, esse condividono lo stesso spazio delle tabelle originali. Spesso vengono assegnate ad altri utenti con specifici campi oscurati anche se il loro utilizzo inappropriato può portare all’inconsistenza del database.

### Views
```Mysql
  

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
WHERE tipologia = "Bianco";

-- Fornisce una vista dei 10 vini più venduti
  
CREATE VIEW Vini_più_venduti AS
SELECT vini.Id_Vino,
vini.Nome,
SUM( vini.Prezzo * Lista_Prodotti.Quantità) AS Totale_Venduto
FROM vini
INNER JOIN Lista_Prodotti ON vini.Id_Vino = Lista_Prodotti.Id_Vino
INNER JOIN ordini ON Lista_Prodotti.Id_Ordine = ordini.Id_Ordine
GROUP BY vini.Id_Vino
ORDER BY Totale_Venduto DESC
LIMIT 10;
```
## Creazione Utenti

Poiché il progetto rappresenta una realtà aziendale di una società, abbiamo creato 3 classi di utenti in ordine decrescente di grado di privilegi. Un manager è colui che gestisce il database e quindi ha tutti i diritti. Il personale ha il diritto di inserire nuove tuple e di effettuare query ai fini lavorativi.  
Infine, abbiamo creato anche un generico utente autorizzato solo ad interrogare le view esistenti.

1. Manager: ha tutti i diritti
2. Personale: può fare query e inserire tuple
3. Creazione di un utente che ha solo diritto di eseguire le view sopra scritte