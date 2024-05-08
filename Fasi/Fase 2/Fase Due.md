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
| Corriere          |                                                   | Nome, N°Telefono                                                        |                     |
| Magazzino         |                                                   | *Indirizzo*, Prodotto, Quantità, Data scadenza                          |                     |
| Indirizzo         |                                                   | *Via*, *N°Civico*, *CAP*, Capoluogo, Città, Stato                       |                     |
| Pagamento         |                                                   | *N°Pagamento*, Data, Importo, Conferma                                  |                     |
| Miscela           |                                                   | Uva, Quantità                                                           |                     |
| Cantina           |                                                   | *Nome cantina*, Regione                                                 |                     |

## Glossario dei Termini

| Entità            | Descrizione                             | Sinonimi                                          |
| ----------------- | --------------------------------------- | ------------------------------------------------- |
| Cliente           | Compra il prodotto                      | Compratore                                        |
| Azienda           | Vende il prodotto                       | Venditore                                         |
| Vino              | Prodotto in vendita                     | Prodotto                                          |
| Carta di Credito  | Metodo di pagamento                     | Carta                                             |
| Carrello          | Anteprima dell'ordine                   | Checkout                                          |
| Spedizione        | Consegna del prodotto                   | Invio                                             |
| Cantina           | Produzione e conservazione del prodotto | Bottiglieria                                      |
| Ordine            | Acquisto del prodotto                   | Richiesta                                         |
| Ordine Confermato | Conferma di acquisto                    | Richiesta confermata                              |
| Ordine Rifiutato  | Annullamento dell'acquisto              | Richiesta rifiutata                               |
| Recensione        | Feedback dell'utente                    | Feedback                                          |
| Personale         | Gestore degli acquisti                  | Dipendenti                                        |


# Glossario delle Relazioni 

| Relazione | Descrizione                                              | Entità                        |
| --------- | -------------------------------------------------------- | ----------------------------- |
| Associa   | L'associazione di una carta di credito ad un cliente     | Carta di credito, Cliente     |
| Produce   | L'operazione di produzione del prodotto                  | Vino, Cantina                 |
| Sceglie   | La scelta dei prodotti da parte del cliente              | Cliente, Vino                 |
| Contenuto | Prodotti all'interno del carrello                        | Vino, Carrello                |
| Crea      | Creazione dell'ordine                                    | Carrello, Ordine              |
| Avere     | Rilascio dell'opinione sul servizio da parte dell'utente | Ordine confermato, recensione |
| Riceve    | Ricezione dell'ordine da parte dell'azienda              | Ordine confermato, Azienda    |
| Lavora    | Personale all'interno dell'azienda                       | Azienda, Personale            |
| Organizza | Gestione della spedizione                                | Personale, Spedizione         |
| Consegna  | Operazione di consegna dell'ordine effettuato all'utente | Spedizione, Cliente           |

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