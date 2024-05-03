# Glossario delle entità

| Entità            | Descrizione                                       | Attributi                                                                 | Relazioni coinvolte |
| ----------------- | ------------------------------------------------- | ------------------------------------------------------------------------- | ------------------- |
| Cliente           | Utente che intende acquistare il prodotto         | *E-mail*, Password,  Nome, Cognome, Data di Nascita                       |                     |
| Azienda           | Entità che rappresenta il venditore               | Intestazione, P.IVA, Sede                                                 |                     |
| Vino              | Prodotto in vendita                               | Gradazione, Tipologia, Annata, Nome, Descrizione, Provenienza             |                     |
| Carta di credito  | Metodo di pagamento                               | *Numero carta*, Circuito, CVV, Data scadenza, Nome carta, Cognome carta   |                     |
| Carrello          | Resoconto dei prodotti che si vogliono acquistare | N° Prodotti, Prodotti                                                     |                     |
| Spedizione        | Metodo di consegna del prodotto                   |  N° Ordine                                                                |                     |
| Cantina           | Luogo dove vengono conservati i prodotti          | Macchinari, Indirizzo, Intestazione, Ettari, Specie, Operai               |                     |
| Ordine            | Acquisto effettivo del prodotto                   | *N° Ordine*, Data Ordine, Prodotti, Quantità                              |                     |
| Ordine Confermato | Acquisto confermato del prodotto                  |                                                                           |                     |
| Ordine Rifiutato  | Acquisto annullato del prodotto                   | Motivazione                                                               |                     |
| Recensione        | Feedback dell'utente                              | *Autore*, *Data*, *Ordine*, Stelle, Commento                              |                     |
| Personale         | Utente che gestisce l'azienda                     | *Ruolo*, Nome, Cognome,                                                   |                     |

