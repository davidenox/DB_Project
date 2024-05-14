# Glossario delle entità

| Entità            | Descrizione                                       | Attributi                                                               | Relazioni coinvolte                              |
| ----------------- | ------------------------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------ |
| Cliente           | Utente che intende acquistare il prodotto         | *E-mail*, Password,  Nome, Cognome, Data di Nascita, Indirizzo          | Consegna, Esegue, Associa, Scrive                |
| Vino              | Prodotto in vendita                               | *Nome*, *Annata*, Descrizione, Tipologia, Prezzo                        | Conservato, Contenuto, Valuta, Produce, Composto |
| Carta di credito  | Metodo di pagamento                               | *Numero carta*, Circuito, CVV, Data scadenza, Nome carta, Cognome carta | Associa                                          |
| Carrello          | Resoconto dei prodotti che si vogliono acquistare | *N° Ordine*,*Prodotti*, *Quantità*                                      | Contenuto, Crea                                  |
| Spedizione        | Metodo di consegna del prodotto                   | *N° Spedizione*                                                         | Organizza, Ritiro, Consegna                      |
| Ordine            | Acquisto effettivo del prodotto                   | *N° Ordine*, Data Ordine                                                | Crea, Esegue                                     |
| Ordine Confermato | Acquisto confermato del prodotto                  | *N° Ordine*, Data Ordine                                                | Organizza                                        |
| Ordine Rifiutato  | Acquisto annullato del prodotto                   | Motivazione, *N° Ordine*, Data Ordine                                   | Rifiutato                                        |
| Recensione        | Feedback dell'utente                              | *Autore*, *Data*, *Ordine*, Stelle, Commento                            | Scrive, Valuta                                   |
| Personale         | Utente che gestisce l'azienda                     | *Ruolo*, Nome, Cognome                                                  | Rifiutato, Organizza                             |
| Trasportatore     | Azienda che gestiscele consegne                   | *NomeAzienda*, NomeCorriere, N°Telefono                                 | Ritiro, Consegna                                 |
| Magazzino         | Luogo in cui vengono gestiti i ritiri dei vini    | *Indirizzo*, Quantità, Data scadenza                                    | Ritiro, Conservato                               |
| Pagamento         | Metodo per pagare gli ordini                      | *N°Pagamento*, Data, Importo, Conferma                                  | Esegue, Associa                                  |
| Miscela           | Informazione aggiuntive del vino                  | *Uva*, *Quantità*, *Nome*, *Annata*                                     | Composto                                         |
| Cantina           | Informazione di dove è stato prodotto il vino     | *Nome cantina*, Regione                                                 | Produce                                          |

## Glossario dei Termini

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


# Glossario delle Relazioni 

| Relazione  | Descrizione                                                           | Entità                                                     |
| ---------- | --------------------------------------------------------------------- | ---------------------------------------------------------- |
| Associa    | L'associazione di una carta di credito ad un cliente per il pagamento | Carta di credito (1:1), Cliente (1:N), Pagamento (1:1)     |
| Contenuto  | Prodotti all'interno del carrello                                     | Vino (0:N), Carrello (1:N)                                 |
| Crea       | Creazione dell'ordine                                                 | Carrello (1:1), Ordine (1:1)                               |
| Organizza  | Gestione dell'ordine da parte dell'azienda per la spedizione          | Ordine confermato (1:1), Personale (o:N), Spedizione (1:1) |
| Consegna   | Operazione di consegna dell'ordine effettuato all'utente              | Corriere (1:N), Cliente (), Spedizione                     |
| Produce    | Indica dov'è stato prodotto il vino                                   | Vino (1:1), Cantina (1:N)                                  |
| Composto   | Indica cosa c'è all'interno del vino                                  | Vino (1:1), Miscela (1:1)                                  |
| Ritiro     | Ritiro dell'ordine da parte del corriere in magazzino                 | Spedizione (1:N), Corriere (1:N), Magazzino(1:1)           |
| Scrive     | Commento lasciato dal cliente                                         | Cliente (0:N), Recensione (1:1)                            |
| Esegue     | Cliente che crea l'ordine da pagare                                   | Cliente (1:N), Pagamento (1:1), Ordine (1:1)               |
| Valuta     | Modo per valutare la qualitò del vino                                 | Recensione (1:1), Vino (0:N)                               |
| Conservato | Luogo dove viene conservato il vino da vendere                        | Magazzino (0:N), Vino (0:N)                                |
| Rifiutato  | Ordine rifiutato                                                      | Ordine Rifiutato (1:1), Personale (0:N)                    |

# Schemi
## Schemi di Relazione

- Cliente (*E-mail*, Password, Nome, Cognome, Data di Nascita, Indirizzo )
- Vino (*Cantina, Annata, Nome*, Descrizione, Tipologia, Prezzo)
- Carta di Credito (*Numero di Carta*, Circuito, CVV, Data Scadenza, Nome carta, Cognome carta)
- Carrello (Prodotti, Quantità)
- Spedizione (*N° Ordine*, **E-mail**, Data di Consegna, Nome Corriere)
- Ordine (*N° Ordine*, Data Ordine)
- Ordine Confermato (*N° Ordine*, Data Ordine)
- Ordine Rifiutato (Motivo, *N° Ordine*, Data Ordine)
- Recensione (*Autore*, *Data*, *Ordine*, Stelle, Commento)
- Personale (*Ruolo, Nome, Cognome*)
- Corriere (*ID_Corriere*, Nome, N°Telefono)
- Magazzino (*Indirizzo*, Quantità, Data scadenza)
- Pagamento (*N°Pagamento*, Data, Importo, Conferma)
- Miscela (Uva, Quantità)
- Cantina (*Nome cantina*, Regione)
