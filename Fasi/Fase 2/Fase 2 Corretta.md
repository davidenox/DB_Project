***Progetto*** **EnoMarket**
***Autori:*** **La Rovere Andrea, Noce Davide, Zheng Simone
***Corso di laurea:*** **Informatica**
# Parte Prima: Generalità
## Descrizione generale del prodotto

Il progetto mira alla creazione di un database per la gestione di un sito e-commerce dedicato alla vendita di vini. Questo database sarà il nucleo centrale del sistema informativo, supportando le operazioni quotidiane dell'e-commerce, dall'ordine da parte degli utenti alla spedizione del prodotto stesso. Il database si occuperà della gestione degli ordini, delle specifiche dei vini, della consegna dei prodotti e della raccolta delle recensioni da parte dei clienti riguardo la consegna e la qualità dei prodotti.
## Obiettivi del Progetto:

Specificare sinteticamente, per punti, gli obiettivi del prodotto (sia quelli generali che quelli più specifici), separando quelli principali da quelli secondari. Indicare anche le priorità dei vari obiettivi.

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
## Specifiche, assunzioni e vincoli d’integrità
### Vincoli
- L'ordine parte solo dopo il pagamento.
- Tutto il vino viene da un solo fornitore.
- Pagamento diretto, non a rate.
- Ogni ordine è gestito da un solo dipendente dell'enoteca.
- Si ipotizzano più magazzini.
- Il cliente può scrivere al più una recensione per vino.
# Parte Terza: Progettazione concettuale

## Diagramma E-R

### Schema scheletro

![[Pasted image 20240502150142.png]]
Le entità principali del sistema sono le seguenti:
- Cliente
- Vino
- Azinda
- Le relazioni presenti permettono di affermare che un _Cliente_ può comprare un _Vino_ che viene venduto dall'_Azienda_. 

### Raffinamenti 
![[Pasted image 20240502151541.png]]

Qui stiamo raffinando l'entità _Cliente_.
Ad ogni _Cliente_ è associata una o più _Carte di Credito_ che gli permetterà di acquistare i prodotti. 


## Dizionario dei Dati


# Parte Quarta: Progettazione Logica
## Schema Logico
![[Logico_Finalee.drawio.pdf]]

Le chiavi primarie sono identificate in **grassetto**, mentre le chiavi secondarie _così_
- Clienti (**E-mail**, Nome_Cliente, Cognome_Cliente, Password, Data_Nascita, Indirizzo)
- Carta di Credito (**N°Carta**, Circuito, CVV, Data_Scadenza, Nome_Carta, Cognome_Carta, _E-mail_)
- Personale (**ID_Personale**, Ruolo, Nome_Personale, Cognome_Personale)
- Ordini (**N° Ordine**, Data Ordine, Stato Ordine, Indirizzo, _ID_Personale_, _E-mail_ )
- Spedizioni (**N° Spedizione**, Data Consegna, Data Ritiro, Stato, _P.Iva_Corriere_, _N° Ordine_)
- Corrieri (**P.Iva_Corriere**, Intestazione)
- Recensioni (**ID_Recensioni**, Data_Recensioni, Stelle, Commento, _E-mail_, _Nome_Vino_, _Annata_) 
- Vini (**Nome_Vino**, **Annata**, Descrizione, Tipologia, Prezzo, _Nome_Miscela_)
- Contenere (_N° Ordine_, _Nome_Vino_, _Annata_, N°Prodotti)
- Produrre (_Annata_, _Nome_Vino_, _P.Iva_Cantina_)
- Cantine (**P.Iva_Cantina**, Intestazione, Regione)
- Conservare (_ID_Magazzino_, _Nome_Vino_, _Annata_, Quantità)
- Magazzini (**ID_Magazzino**, Indirizzo)
- Uve (**Varietà Uva**, **Provenienza**)
- Creare (**Varietà Uva**, **Provenienza**, Percentuale)
- Miscela (**Nome_Miscela**, Descrizione)

### Normalizzazione
1. Le tuple del nostro schema possiedono solo attributi semplici $\implies$ 1NF è soddisfatta.
2. Gli attributi non primi delle nostre entità dipendono unicamente dalla chiave primaria completa $\implies$ 2NF è soddisfatta.
3. Gli attributi non primi delle nostre entità dipendono in maniera non transitiva dalla chiave primaria completa $\implies$ 3NF è soddisfatta.
4. Le entità sono state decomposte in maniera da ottenere il massimo numero possibile di BCNF.
## Schema E-R concettuale ristrutturato
![[Progetto_DB_Finale.drawio-1.pdf]]

## Glossario delle Entità
| Entità           | Descrizione                                    | Attributi                                                                   | Relazioni coinvolte                                            |
| ---------------- | ---------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------- |
| Clienti          | Utente che intende acquistare il prodotto      | *E-mail*, Password,  Nome_Cliente, Cognome_Cliente, Data_Nascita, Indirizzo | Preferire, Eseguire, Associare, Scrivere                       |
| Vini             | Prodotto in vendita                            | *Nome_Vino*, *Annata*, Descrizione, Tipologia, Prezzo                       | Preferire, Conservare, Contenere, Comporre, Produrre, Valutare |
| Carte di credito | Metodo di pagamento                            | *N° Carta*, Circuito, CVV, Data_Scadenza, Nome_Carta, Cognome_Carta         | Associare                                                      |
| Spedizioni       | Metodo di consegna del prodotto                | *N° Spedizione*, Data_Consegna, Data_Ritiro, Stato                          | Effettuare, Inviare                                            |
| Ordini           | Acquisto effettivo del prodotto                | *N° Ordine*, Data_Ordine, Stato_Ordine, Indirizzo_Ordine                    | Eseguire, Inviare, Preparare, Contenere                        |
| Recensioni       | Feedback dell'utente                           | *ID_Recensione*, Data_Recensione, Stelle, Commento                          | Scrivere, Valutare                                             |
| Personale        | Utente che gestisce l'azienda                  | *ID_Personale*, Ruolo, Nome_Personale, Cognome_Personale                    | Preparare                                                      |
| Corrieri         | Azienda che gestiscele consegne                | *P.IVA_Corriere*, Intestazione                                              | Effettuare                                                     |
| Magazzini        | Luogo in cui vengono gestiti i ritiri dei vini | *ID_Magazzino*, Indirizzo                                                   | Conservare                                                     |
| Miscele          | Informazione aggiuntive del vino               | *Nome_Miscela*, Descrizione                                                 | Comporre, Creare                                               |
| Cantine          | Informazione di dove è stato prodotto il vino  | *P.IVA_Cantina*, Intestazione, Regione                                      | Produrre                                                       |
| Uve              | Ingredienti per la produzione dei vini         | *Varietà*, *Provenienza*                                                    | Creare                                                         |

## Glossario dei termini
| Entità           | Descrizione            | Sinonimi      |
| ---------------- | ---------------------- | ------------- |
| Clienti          | Comprano il prodotto   | Compratori    |
| Vini             | Prodotti in vendita    | Prodotti      |
| Carte di Credito | Metodo di pagamento    | Carte         |
| Spedizioni       | Consegna dei prodotti  | Invio         |
| Ordini           | Acquisto dei prodotti  | Richieste     |
| Recensioni       | Feedback dell'utente   | Feedback      |
| Personale        | Gestore degli acquisti | Dipendenti    |
| Corrieri         | Gestore consegne       | Trasportatori |
| Magazzini        | Depositi dei vini      | Riserve       |
| Miscele          | Informazioni del vino  | Composti      |
| Cantine          | Produzione del vino    | Bottiglierie  |
| Uve              | Ingrediente per i vini | Materie Prime |

## Glossario delle Relazioni

| Relazione  | Descrizione                                                           | Entità                                |
| ---------- | --------------------------------------------------------------------- | ------------------------------------- |
| Associare  | L'associazione di una carta di credito ad un cliente per il pagamento | Carte di credito (1:1), Clienti(1:N), |
| Creare     | Creazione dei prodotti                                                | Uve (1:N), Miscele (1:N)              |
| Preparare  | Gestione dell'ordine da parte del personale                           | Ordini  (1:1), Personale (o:N)        |
| Effettuare | Operazione di consegna dell'ordine effettuato all'utente              | Corrieri (1:N),  Spedizioni(1:1)      |
| Produrre   | Indica dov'è stato prodotto il vino                                   | Vini (1:N), Cantina (1:N)             |
| Comporre   | Indica cosa c'è all'interno del vino                                  | Vino (1:1), Miscela (1:N)             |
| Scrivere   | Commento lasciato dal cliente                                         | Clienti (0:N), Recensione (1:1)       |
| Eseguire   | Cliente che crea l'ordine da pagare                                   | Clienti (1:N), Ordini(1:1)            |
| Valutare   | Modo per valutare la qualitò del vino                                 | Recensione (1:1), Vini (1:N)          |
| Conservare | Luogo dove viene conservato il vino da vendere                        | Magazzini (1:N), Vini (1:N)           |
| Inviare    | Inviare l'ordine al cliente                                           | Spedizioni(1:1), Ordini(1:1)          |
| Preferire  | Indica la preferenza dei clienti sui vini                             | Clienti(0:N), Vini(0:N)               |
| Contenere  | Vini presenti in un ordine                                            | Vini(0:N), Ordine(1:N)                |

## Indici di prestazione e carico applicativo
    

- **Costo delle operazioni**
    
- **Occupazione di memoria**
    

Per fare questa analisi è necessario conoscere:

- **Volume dei dati** (occorrenze, dimensioni degli attributi)‏
    
- **Caratteristiche delle operazioni** (tipo, frequenza, dati coinvolti)‏
    

  

# Parte Quinta: Progettazione Fisica
1. ## Schema fisico con indici