
****Progetto*** **EnoMarket**
***Autori:*** **La Rovere Andrea, Noce Davide, Zheng Simone
***Corso di laurea:*** **Informatica**

***Data:*** **14/05/2024**

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
## Elenco dei requisiti
    
## Glossario dei termini

| Entità            | Descrizione                | Sinonimi             |
| ----------------- | -------------------------- | -------------------- |
| Cliente           | Compra il prodotto         | Compratore           |
| Vino              | Prodotto in vendita        | Prodotto             |
| Carta di Credito  | Metodo di pagamento        | Carta                |
| Carrello          | Anteprima dell'ordine      | Checkout             |
| Spedizione        | Consegna del prodotto      | Invio                |
| Ordine            | Acquisto del prodotto      | Richiesta            |
| Ordine Confermato | Conferma di acquisto       | Richiesta confermata |
| Ordine Rifiutato  | Annullamento dell'acquisto | Richiesta rifiutata  |
| Recensione        | Feedback dell'utente       | Feedback             |
| Personale         | Gestore degli acquisti     | Dipendenti           |
| Trasportatore     | Gestore consegne           | Corriere             |
| Magazzino         | Deposito dei vini          | Riserva              |
| Pagamento         | Metodo di pagamento        | Versamento           |
| Miscela           | Informazioni del vino      | Composto             |
| Cantina           | Produzione del vino        | Bottiglieria         |

## Specifiche, assunzioni e vincoli d’integrità
    

# Parte Terza: Progettazione concettuale
    
## Diagramma E-R
        

- Schema scheletro
    
- Raffinamenti sucessivi
    

## Dizionario dei Dati
    

# Parte Quarta: Progettazione Logica

1. ## Schema E-R concettuale ristrutturato
    
2. ## Schema E-R logico
    
3. ## Dizionario entità e relazioni
    

Descrizione delle varie componenti

## Indici di prestazione e carico applicativo
    

- **Costo delle operazioni**
    
- **Occupazione di memoria**
    

Per fare questa analisi è necessario conoscere:

- **Volume dei dati** (occorrenze, dimensioni degli attributi)‏
    
- **Caratteristiche delle operazioni** (tipo, frequenza, dati coinvolti)‏
    

  

# Parte Quinta: Progettazione Fisica
1. ## Schema fisico con indici