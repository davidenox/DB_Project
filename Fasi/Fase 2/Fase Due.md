# Glossario delle entità

| Entità            | Descrizione                                       | Attributi                                                               | Relazioni coinvolte |
| ----------------- | ------------------------------------------------- | ----------------------------------------------------------------------- | ------------------- |
| Cliente           | Utente che intende acquistare il prodotto         | *E-mail*, Password,  Nome, Cognome, Data di Nascita                     |                     |
| Azienda           | Entità che rappresenta il venditore               | Intestazione, P.IVA, Sede                                               |                     |
| Vino              | Prodotto in vendita                               | Gradazione, Tipologia, Annata, Nome, Descrizione, Provenienza, Costo    |                     |
| Carta di credito  | Metodo di pagamento                               | *Numero carta*, Circuito, CVV, Data scadenza, Nome carta, Cognome carta |                     |
| Carrello          | Resoconto dei prodotti che si vogliono acquistare | N° Prodotti, Prodotti, Saldo Totale                                     |                     |
| Spedizione        | Metodo di consegna del prodotto                   | *N° Ordine*, **E-mail**,  Data di Consegna, Nome Corriere,              |                     |
| Cantina           | Luogo dove vengono conservati i prodotti          | Macchinari, Indirizzo, Intestazione, Ettari, Specie, Operai             |                     |
| Ordine            | Acquisto effettivo del prodotto                   | *N° Ordine*, Data Ordine, Prodotti, Quantità                            |                     |
| Ordine Confermato | Acquisto confermato del prodotto                  | *N° Ordine*, Data Ordine, Prodotti, Quantità                            |                     |
| Ordine Rifiutato  | Acquisto annullato del prodotto                   | Motivazione, *N° Ordine*, Data Ordine, Prodotti, Quantità               |                     |
| Recensione        | Feedback dell'utente                              | *Autore*, *Data*, *Ordine*, Stelle, Commento                            |                     |
| Personale         | Utente che gestisce l'azienda                     | *Ruolo*, Nome, Cognome                                                  |                     |

