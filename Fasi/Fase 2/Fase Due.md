***Progetto*** **EnoMarket**
***Autori:*** **La Rovere Andrea, Noce Davide, Zheng Simone**
***Corso di laurea:*** **Informatica**
***Data:*** **26/05/2024**
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

| Entità           | Descrizione                    | Sinonimi      |
| ---------------- | ------------------------------ | ------------- |
| Clienti          | Comprano il prodotto           | Compratori    |
| Vini             | Prodotti in vendita            | Prodotti      |
| Carte di Credito | Metodo di pagamento            | Carte         |
| Spedizioni       | Consegna dei prodotti          | Invio         |
| Ordini           | Acquisto dei prodotti          | Richieste     |
| Recensioni       | Feedback dell'utente           | Feedback      |
| Personale        | Gestore degli acquisti         | Dipendenti    |
| Corrieri         | Gestore consegne               | Trasportatori |
| Magazzini        | Depositi dei vini              | Riserve       |
| Miscele          | Informazioni del vino          | Composti      |
| Cantine          | Produzione del vino            | Bottiglierie  |
| Uve              | Ingrediente per i vini         | Materie Prime |
| Procedimento     | Procedimento per produrre vini | Metodo        |
| Premio           | Nome premio vinto              | Trofeo        |

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

![[Pasted image 20240502150142.png]]
Le entità principali del sistema sono le seguenti:
- Cliente
- Vino
- Azienda
Le relazioni presenti permettono di affermare che un _Cliente_ può comprare un _Vino_ che viene venduto dall'_Azienda_. 
### Raffinamenti 
1. Raffinazione *Clienti*:

![[Pasted image 20240526150730.png|center|100]]

Qui si raffina l'entità _Cliente_:
- Ad ogni _Cliente_ è associata una o più _Carte di Credito_ che gli permetterà di acquistare i prodotti;
- Il *Cliente*, al termine dell'acquisto e della consegna, può lasciare una *Recensione* riguardo il servizio di consegna e riguardo la qualità del prodotto acquistato.
 
----

2. Raffinazione *Vini*:

![[Pasted image 20240526151600.png|center|200]]

Qui si raffina l'entità *Vini*:
- I *Vini* saranno composti da *Miscele* create dalle diverse varietà di *Uve*;
- Essi verranno prodotti in delle *Cantine* e conservate in dei *Magazzini* in attesa di un ordine e di una seguente spedizione.

----

3. Raffinazione *Ordini*:

![[Pasted image 20240526152640.png|center|500]]

Qui si raffina l'entità *Ordini*:
- Il *Personale* si occuperà della preparazione degli *Ordini*;
- Gli *Ordini* verranno inviati tramite delle *Spedizioni*;
- *Spedizioni* che verranno effettuate dai *Corrieri*.

# Parte Quarta: Progettazione Logica

## Schema Logico
![[Logico_Definitivo.drawio.png|center|750]]


Le chiavi primarie sono identificate in **grassetto**, mentre le chiavi secondarie in _corsivo_
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
- Cantine (**P.Iva_Cantina**, Intestazione, Regione, Storia)
- Conservare (_ID_Magazzino_, _Nome_Vino_, _Annata_, Quantità)
- Magazzini (**ID_Magazzino**, Indirizzo)
- Uve (**Varietà Uva**, **Provenienza**)
- Creare (**Varietà Uva**, **Provenienza**, Percentuale)
- Miscela (**Nome_Miscela**, Descrizione)
- Premio (**Nome_Premio**, Associazione, Tipologia)
- Assegnare (_Nome_Premio_, _P.IVA_cantine_)
- Ricevere (_Nome_Vino_, _Annata_, _Nome_Premio_)
- Usare (_Nome_Metodo_, _P.IVA_Cantine_)


### Normalizzazione

1. Le tuple del diagramma possiedono solo attributi semplici $\implies$ 1NF è soddisfatta.
2. Gli attributi non primi delle nostre entità dipendono unicamente dalla chiave primaria completa $\implies$ 2NF è soddisfatta.
3. Gli attributi non primi delle nostre entità dipendono in maniera non transitiva dalla chiave primaria completa $\implies$ 3NF è soddisfatta.
4. Le entità sono state decomposte in maniera da ottenere il massimo numero possibile di BCNF.

----







## Schema E-R concettuale ristrutturato

![[ER_Definitivo.drawio.pdf]]



## Dizionario Entità e Relazioni
### Glossario delle Entità
| Entità           | Descrizione                                                       | Attributi                                                                   | Relazioni coinvolte                                            |
| ---------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------- |
| Clienti          | Utente che intende acquistare il prodotto                         | *E-mail*, Password,  Nome_Cliente, Cognome_Cliente, Data_Nascita, Indirizzo | Preferire, Eseguire, Associare, Scrivere                       |
| Vini             | Prodotto in vendita                                               | *Nome_Vino*, *Annata*, Descrizione, Tipologia, Prezzo                       | Preferire, Conservare, Contenere, Comporre, Produrre, Valutare |
| Carte di credito | Metodo di pagamento                                               | *N° Carta*, Circuito, CVV, Data_Scadenza, Nome_Carta, Cognome_Carta         | Associare                                                      |
| Spedizioni       | Metodo di consegna del prodotto                                   | *N° Spedizione*, Data_Consegna, Data_Ritiro, Stato                          | Effettuare, Inviare                                            |
| Ordini           | Acquisto effettivo del prodotto                                   | *N° Ordine*, Data_Ordine, Stato_Ordine, Indirizzo_Ordine                    | Eseguire, Inviare, Preparare, Contenere                        |
| Recensioni       | Feedback dell'utente                                              | *ID_Recensione*, Data_Recensione, Stelle, Commento                          | Scrivere, Valutare                                             |
| Personale        | Utente che gestisce l'azienda                                     | *ID_Personale*, Ruolo, Nome_Personale, Cognome_Personale                    | Preparare                                                      |
| Corrieri         | Azienda esterna che gestisce le consegne                          | *P.IVA_Corriere*, Intestazione                                              | Effettuare                                                     |
| Magazzini        | Luogo in cui vengono gestiti i ritiri e la conservazione dei vini | *ID_Magazzino*, Indirizzo                                                   | Conservare                                                     |
| Miscele          | Informazioni aggiuntive del vino in base alle uve utilizzate      | *Nome_Miscela*, Descrizione                                                 | Comporre, Creare                                               |
| Cantine          | Informazione di dove è stato prodotto il vino                     | *P.IVA_Cantine*, Intestazione, Regione, Storia                              | Usare, Ricevere                                                |
| Uve              | Ingredienti per la produzione dei vini                            | *Varietà*, *Provenienza*                                                    | Creare                                                         |
| Procedimento     | Passi per produrre il vino                                        | *Nome_Metodo*, Descrizione, Invecchiamento                                  | Produrre, Usare                                                |
| Premio           | Nome del premio che il vino e cantina hanno vinto                 | *Nome_Premio*, Associazione                                                 |                                                                |

### Glossario delle Relazioni

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
| Usare      | Indica come viene utilizzata la cantina                               | Cantine(1:N), Procedimento(0:N)       |
| Ricevere   | Ricevere il premio vinto alla cantina                                 | Cantine(0:N), Premio Cantina(0:N)     |
| Assegnare  | Assegnare il premio al vino                                           | Premio Vino(0:N), Vino(0:N)           |
