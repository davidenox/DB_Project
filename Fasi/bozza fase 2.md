# Glossario delle Entità

| Entità              | Descrizione                                                                 | Attributi                                                                                     | Relazioni coinvolte |
| ------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | ------------------- |
| Persone             | Rappresentano un qualsiasi utente ed il suo ruolo annesso                   | Nome, Cognome, Data di nascita, *N. Tesserino*,  E-mail                                       |                     |
| Giocatore           | Rappresenta l'utente che farà parte di un team                              | Nome, Cognome, Data di nascita, *N. Tesserino*, E-mail, Numero, Ruolo, Capitano, Nome Squadra |                     |
| Allenatore          | Rappresenta l'utente che dirigerà un team                                   | Nome, Cognome, Data di Nascita, *N. Tesserino*, Nome Squadra                                  |                     |
| Arbitro             | Rappresenta l'utente che dirigerà le partite                                | Nome, Cognome, Data di Nascita, *N. Tesserino*                                                |                     |
| Telecronista        | Rappresenta l'utente che commenterà le partite                              | Nome, Cognome, Anno di nascita, *N. Tesserino*                                                |                     |
| Team                | Rappresenta l'insieme di giocatori che partecipano in squadra al torneo     | *Nome Squadra*, Città, Stadio, Nome Torneo                                                    |                     |
| Partita             | Rappresenta il singolo match del torneo                                     | *Data, Luogo, Team casa, Team ospite*                                                         |                     |
| Torneo              | Rappresenta la competizione organizzata                                     | *Nome Torneo*, *Data*, Tipologia, Nome Premio, Team                                           |                     |
| Partita non giocata | Rappresenta una partita annullata o sospesa per una motivazione specifica.  | Data, Luogo, Team casa, Team ospite, Motivazione                                              |                     |
| Partita giocata     | Rappresenta una partita giocata regolarmente                                | Team casa, Team ospite, Gol casa, Gol Ospite, Risultato                                       |                     |
| Classifica          | Rappresenta la posizione delle squadre in un torneo.                        | *Nome Torneo*, Punti, Posizione, Team, Vittorie, Pareggi, Sconfitte, Gol fatti, Gol subiti    |                     |
| Premi               | Rappresentano il compenso assegnato a team e giocatori                      | *Nome Premio*, Compenso, Posizione                                                            |                     |
| Statistiche         | Rappresentano le statistiche delle partite                                  | Possesso palla, Cartellini gialli, Cartellini rossi, Gol team,  Tiri                          |                     |
| Organizzatori       | Rappresentano gli organizzatori della competizione                          | *Intestazione*, Rappresentante, E-mail, N° di telefono.                                       |                     |
| Sponsor             | Rappresentano i finanziatori della competizione                             | Intestazione, *P. IVA*, E-mail, N° Telefono, Somma                                            |                     |
| Notifiche           | Rappresentano gli avvisi per i partecipanti o per chi segue la competizione | *Data*, Tipologia Avviso, Testo, *Mittente*, *Destinatario*                                   |                     |

- [ ] Chiedere Entità *Statistica*
- [ ] Entità classifica figlia di entità torneo?

# Glossario dei termini
| Entità              | Descrizione                                                            | Sinonimi        |
| ------------------- | ---------------------------------------------------------------------- | --------------- |
| Persone             | Utente che interagisce con il DB                                       | Utenti          |
| Giocatore           | Utente che partecipa al torneo con il rispettivo team                  | Calciatore      |
| Allenatore          | Utente che gestisce il team che partecipa al torneo                    | Mister          |
| Arbitro             | Utente che gestisce e regolamenta le partite                           | Giudice di gara |
| Telecronista        | Utente che commenta le partite                                         | Commentatore    |
| Torneo              | Evento sportivo                                                        | Competizione    |
| Team                | Insieme di giocatori che partecipano al torneo sotto la stessa squadra | Squadra         |
| Partita             | Competizione singola del torneo                                        | Match           |
| Partita Giocata     | Competizione finita regolarmente                                       | Match concluso  |
| Partita non giocata | Competizione compromessa per una motivazione                           | Match sospeso   |
| Classifica          | Elenco dei risultati delle squadre e le rispettive statistiche         | Graduatoria     |
| Premi               | Compensi che spettano alla squadra vincitrice                          | Onorificenze    |
| Statistiche         | Avvenimenti salienti all'interno della partita                         | Percentuali     |
| Organizzatori       | Utenti che creano e gestiscono il torneo                               | Manager         |
| Sponsor             | Contenuto pubblicitario volto al finanziamento del torneo              | Finanziatore    |
| Notifiche           | Avvisi di diversa importanza diretti ai team                           | Comunicazioni   |
# Glossario delle relazioni

| Relazioni | Descrizione                                                                 | Entità |
| --------- | --------------------------------------------------------------------------- | ------ |
| MembroDi  | Relazione che indica un team per ogni giocatore e allenatore                |        |
| Dirige    | Relazione che assegna un arbitro ad una partita                             |        |
| Narrano   | Relazione che indica il commento di una partita da parte di un commentatore |        |
DA FINIRE
# Schemi 
## Schema scheletro
![[Pasted image 20240328153745.png]]
## Schemi di relazione

Le chiavi primarie sono identificate in **grassetto** , mentre le chiavi secondarie sono <font color="red"> storte</font>.
- Player (**ID_Player**, Dati Anagrafici, Email, Nickname)
- Team (**ID_Team** , _ID_Utente_, Nome )
- Torneo (**ID_Torneo**, _ID_Team_, _ID_Organizzatori_, _ID_Sponsor_, Tipologia, Nome, Regolamento, Sport)
- Organizzatori (**ID_Organizzatori**, Email, Dati Anagrafici)
- Notifiche (**ID_Notifiche**, _ID_Organizzatori_)
- Sponsor (**ID_Sponsor**, Nome, Fondi)
- Arbitro (**ID_Arbitro**, Dati Anagrafici)
- Partita (**ID_Partita**, _ID_Torneo_, _ID_Arbitro_, _ID_Commentatori_, Data, Ora, Luogo, Punteggio)
- Commentatori (**ID_Commentatori**, Dati Anagrafici)
- Premi (**ID_Premi**, _ID_Team_, _ID_Classifica_, Valore, Numero Premi)
- Classifica (**ID_Classifica**, _ID_Partita_, Punteggio, Anno)
- Hall of Fame (**ID_HoF** , _ID_Classifica_ , Numero Vittorie)