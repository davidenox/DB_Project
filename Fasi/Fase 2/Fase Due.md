# Glossario delle entità

| Entità            | Descrizione                                       | Attributi                                                               | Relazioni coinvolte |
| ----------------- | ------------------------------------------------- | ----------------------------------------------------------------------- | ------------------- |
| Cliente           | Utente che intende acquistare il prodotto         | *E-mail*, Password,  Nome, Cognome, Data di Nascita                     |                     |
| Azienda           | Entità che rappresenta il venditore               | Intestazione, P.IVA, Sede                                               |                     |
| Vino              | Prodotto in vendita                               | *Nome*, *Annata*, *Cantina*, Descrizione, Tipologia, Prezzo             |                     |
| Carta di credito  | Metodo di pagamento                               | *Numero carta*, Circuito, CVV, Data scadenza, Nome carta, Cognome carta |                     |
| Carrello          | Resoconto dei prodotti che si vogliono acquistare | *Prodotti*, *Quantità*                                                  |                     |
| Spedizione        | Metodo di consegna del prodotto                   | *N° Spedizione*                                                         |                     |
| Ordine            | Acquisto effettivo del prodotto                   | *N° Ordine*, Data Ordine,                                               |                     |
| Ordine Confermato | Acquisto confermato del prodotto                  | *N° Ordine*, Data Ordine,                                               |                     |
| Ordine Rifiutato  | Acquisto annullato del prodotto                   | Motivazione, *N° Ordine*, Data Ordine,                                  |                     |
| Recensione        | Feedback dell'utente                              | *Autore*, *Data*, *Ordine*, Stelle, Commento                            |                     |
| Personale         | Utente che gestisce l'azienda                     | *Ruolo*, Nome, Cognome                                                  |                     |
| Corriere          | Azienda che gestiscele consegne                   | *ID_Corriere*, Nome, N°Telefono                                         |                     |
| Magazzino         | Luogo in cui vengono gestiti i ritiri dei vini    | *Indirizzo*, Prodotto, Quantità, Data scadenza                          |                     |
| Indirizzo         |                                                   | *Via*, *N°Civico*, *CAP*, Capoluogo, Città, Stato                       |                     |
| Pagamento         | Metodo per pagare gli ordini                      | *N°Pagamento*, Data, Importo, Conferma                                  |                     |
| Miscela           | Informazione aggiuntive del vino                  | Uva, Quantità                                                           |                     |
| Cantina           | Informazione di dove è stato prodotto il vino     | *Nome cantina*, Regione                                                 |                     |

## Glossario dei Termini

| Entità            | Descrizione                | Sinonimi             |
| ----------------- | -------------------------- | -------------------- |
| Cliente           | Compra il prodotto         | Compratore           |
| Azienda           | Vende il prodotto          | Venditore            |
| Vino              | Prodotto in vendita        | Prodotto             |
| Carta di Credito  | Metodo di pagamento        | Carta                |
| Carrello          | Anteprima dell'ordine      | Checkout             |
| Spedizione        | Consegna del prodotto      | Invio                |
| Ordine            | Acquisto del prodotto      | Richiesta            |
| Ordine Confermato | Conferma di acquisto       | Richiesta confermata |
| Ordine Rifiutato  | Annullamento dell'acquisto | Richiesta rifiutata  |
| Recensione        | Feedback dell'utente       | Feedback             |
| Personale         | Gestore degli acquisti     | Dipendenti           |
| Corriere          | Gestore consegne           | Servizio postale     |
| Magazzino         | Deposito dei vini          | Riserva              |
| Indirizzo         |                            |                      |
| Pagamento         | Metodo di pagamento        | Versamento           |
| Miscela           | Informazioni del vino      | Composto             |
| Cantina           | Produzione del vino        | Bottiglieria         |


# Glossario delle Relazioni 

| Relazione   | Descrizione                                                           | Entità                               |
| ----------- | --------------------------------------------------------------------- | ------------------------------------ |
| Associa     | L'associazione di una carta di credito ad un cliente per il pagamento | Carta di credito, Cliente, Pagamento |
| Contenuto   | Prodotti all'interno del carrello                                     | Vino, Carrello                       |
| Crea        | Creazione dell'ordine                                                 | Carrello, Ordine                     |
| Riceve      | Ricezione dell'ordine da parte dell'azienda                           | Ordine confermato, Personale         |
| Organizza   | Gestione della spedizione                                             | Personale, Spedizione                |
| Consegna    | Operazione di consegna dell'ordine effettuato all'utente              | Corriere, Cliente                    |
| Prodotto da | Indica dov'è stato prodotto il vino                                   | Vino, Cantina                        |
| Composto    | Indica cosa c'è all'interno del vino                                  | Vino, Miscela                        |
| Ritiro      | Ritiro dell'ordine da parte del corriere in magazzino                 | Spedizione, Corriere, Magazzino      |
| Possiede    | Luogo dove si trova il cliente                                        | Cliente, Indirizzo                   |
| Scrive      | Commento lasciato dal cliente                                         | Cliente, Recensione                  |
| Esegue      | Cliente che crea l'ordine da pagare                                   | Cliente, Pagamento, Ordine           |

# Schemi di Relazione

- Cliente (*E-mail*, Password, Nome, Cognome, Data di Nascita )
- Azienda (Intestazione, P.IVA, Sede)
- Vino (Gradazione, Tipologia, Annata, Nome, Descrizione, Provenienza, Costo)
- Carta di Credito (*Numero di Carta*, Circuito, CVV, Data Scadenza, Nome carta, Cognome carta)
- Carrello (N° Prodotti, Prodotti, Saldo Totale)
- Spedizione (*N° Ordine*, **E-mail**, Data di Consegna, Nome Corriere)
- Cantina (Macchinari, Indirizzo, Intestazione, Ettari, Specie, Operai)
- Ordine (*N° Ordine*, Data Ordine, Prodotti, Quantità)
- Ordine Confermato (*N° Ordine*, Data Ordine, Prodotti, Quantità)
- Ordine Rifiutato (Motivo, *N° Ordine*, Data Ordine, Prodotti, Quantità)
- Recensione (*Autore*, *Data*, *Ordine*, Stelle, Commento)
- Personale (*Ruolo*, Nome, Cognome)
- Corriere (*ID_Corriere*, Nome, N°Telefono)
- Magazzino (*Indirizzo*, Prodotto, Quantità, Data scadenza)
- Indirizzo(*Via*, *N°Civico*, *CAP*, Capoluogo, Città, Stato)
- Pagamento (*N°Pagamento*, Data, Importo, Conferma)
- Miscela (Uva, Quantità)
- Cantina (*Nome cantina*, Regione)