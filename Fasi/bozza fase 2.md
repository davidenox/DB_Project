
# Glossario delle Entità

| Entità               | Descrizione                                                                               | Attributi                                                                | Relazioni Coinvolte                                     |
| -------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------- |
| Giocatore            | Rappresenta l'utente che intende partecipare alla competizione.                           | *ID_utente*, email, dati anagrafici, nickname                            | Team                                                    |
| Torneo               | Rappresenta il tipo di evento organizzato per il videogioco scelto.                       | *ID_torneo*, tipologia, nome_torneo, regolamento, data inizio/fine       | Team, Organizzatori, Sponsor, Partita, Prenotazione     |
| Videogioco           | Rappresenta gioco utilizzato nella competizione.                                          | *ID_gioco*, nome, genere                                                 |                                                         |
| Piattaforma          | Rappresenta la postazione di gioco per gli utenti.                                        | *ID_piattaforma*, tipo di piattaforma                                    |                                                         |
| Organizzatori        | Rappresenta la figura che intende creare la competizione.                                 | *ID_organizzatori*, email, dati anagrafici                               | Competizione, Notifiche                                 |
| Classifica           | Rappresenta la posizione dei giocatori o delle squadre in un torneo.                      | *ID_classifica*, ID_torneo, ID_utente, ID_team, punteggio                | Partita, Premi, Hall of Fame                            |
| Hall of Fame         | Rappresenta uno storico dei migliori giocatori che hanno partecipato ad una competizione. | *ID_hof*, ID_utente, nickname, numero di vittorie                        | Classifica                                              |
| Prenotazione         | Rappresenta l'iscrizione ad un torneo.                                                    | *ID_prenotazione*, ID_utente, ID_competizione, data/ora                  | Team, Sistemi di pagamento                              |
| Premio               | Rappresenta il riconoscimento per la vittoria di una competizione.                        | *ID_premio*, valore, numero_premi                                        | Team, Sistema di pagamento, Classifica                  |
| Team                 | Rappresenta un gruppo di utenti che vogliono partecipare in squadra ad una competizione.  | *ID_team*                                                                | Giocatore, Notifiche, Prenotazione, Premi, Competizione |
| Commentatori         | Commentano e fanno la telecronaca della partita                                           | *Dati anagrafici*                                                        | Partita                                                 |
| Notifiche            | Rappresentano la gestione delle comunicazioni agli utenti                                 | *ID_notifiche*, ID_utente, ID_team, ID_organizzatori                     | Team, Organizzatori                                     |
| Sistema di pagamento | Metodo di pagamento per le iscrizioni al torneo e l'erogazione dei premi                  | *ID_pagamento*, ID_prenotazione, numero carta, circuito di pagamento     | Prenotazione, Premi                                     |
| Partita              | Rappresenta il match singolo di una competizione                                          | *ID_partita*, ID_giocatore, ID_torneo, ID_team, ID_classifica, risultato | Competizione, Commentatori, Arbitro, Classifica         |
| Arbitri              | Moderano i comportamenti dei giocatori durante gli eventi.                                | *Dati anagrafici*, ID_torneo, ID_partita                                 | Partita                                                 |
| Sponsor              | Finanziano l'evento                                                                       | *ID_sponsor*                                                             | Competizione                                            |
# Glossario dei termini
| Entità               | Descrizione                                                                         | Sinonimi                 |
| -------------------- | ----------------------------------------------------------------------------------- | ------------------------ |
| Giocatore            | Persona che fa parte di un team                                                     | Player                   |
| Team                 | Gruppo di giocatori che formano un team                                             | Squadra                  |
| Torneo               | Tipo di torneo organizzato                                                          | Competizione             |
| Organizzatori        | Membri che organizzano i tornei                                                     |                          |
| Classifica           | Tabella che indica la posizione del team nel torneo                                 |                          |
| Hall of Fame         | Tabella che indica quale team ha fatto più vittorie in una determinata competizione | HoF                      |
| Prenotazione         | Prenotazione effettuate da un team ad una specifica competizione                    | Richiesta Prenotazione   |
| Premio               | Premio che viene assegnato al vincitore                                             | Trofeo                   |
| Commentatori         | Persone che commentano una partita                                                  | Telecronisti             |
| Notifiche            | Aggiornamenti delle competizioni lasciate dagli organizzatori                       | Messaggi ( controllare ) |
| Sistema di pagamento | Metodo desiderato per pagare                                                        |                          |
| Partita              | Singola partita presente in una competizione                                        | Match                    |
| Arbitri              | Persone che controllano il comportamento dei giocatori                              | Controllore              |
| Sponsor              | Finanziatore della competizione                                                     | Ente                     |
# Glossario delle relazioni

| Relazioni  | Descrizione                                                                     | Entità                                  |     |
| ---------- | ------------------------------------------------------------------------------- | --------------------------------------- | --- |
| Èmembrodi  | Relazione che indica una team per un giocatore                                  | Giocatore (1,N), Team (1,N)             |     |
| Iscrive    | Relazione che indica che un team può iscriversi ad una competizione             | Team (1,1), Prenotazione (1,1)          |     |
| Riceve     | Relazione che inidica un premio da assegnare ad un team                         | Premi (1,1), Team (1,N)                 |     |
| Partecipa  | Relazione che indica la partecipazione di un team ad una competizione           | Team (0,N), Competizione(1,N)           |     |
| Organizza  | Relazione che indica l'organizzazione di un torneo da parte degli organizzatori | Organizzatori (1,N), Competizione (1,N) |     |
| Inviano    | Relazione che indica l'invio di una notifica da parte degli organizzatori       | Organizzatori (1,N), Notifiche(1,N)     |     |
| Finanziano | Relazione che indica che gli sponsor possono finanziare una competizione        | Sponsor (1,N), Competizione (0,N)       |     |
| Giocano    | Relazione che indica <font color="red"> non so come specificare</font>          | Competizione (1,N), Partita(1,N)        |     |
| Dirige     | Relazione che assegna un arbitro ad una partita                                 | Arbitro(0,1), Partita(1,?)              |     |
| Narrano    | Relazione che indica il commento di una partita da parte di un commentatore     | Commentatori (1,N), Partita (1,1)       |     |
| Decide     | Relazione che indica la classifica in base alle partite                         | Partita (1,N), Classifica (1,1)         |     |
| Aggiudica  | Relazione che indica il vincitore del premio                                    | Classifica(1,1), Premi(1,N?)            |     |
| Assegna    | Relazione che indica la Hall of Fame                                            | Classifica(1,1), Hall of Fame (1,1)     |     |

# Schemi 
## Schemi di relazione

Le chiavi primarie sono identificate in **grassetto** , mentre le chiavi secondarie sono <font color="red"> storte</font>.
- Giocatori (**ID_Utente**, Dati Anagrafici, Email, Alias)
- Team (**ID_Team** , _ID_Utente_ )
- Competizione (**ID_Toreno**, _ID_Team_, Data, Ora, Gioco, Piattaforma, Tipologia, Nome, Regolamento)
- Organizzatori (**ID_Organizzatori**, Email, Dati Anagrafici)
- Notifiche (**ID_Notifiche**, _ID_Organizzatori_)
- Sponsor (**ID_Sponsor**, Denaro????)
- Arbitro (**ID_Arbitro**, _ID_Partita_, _ID_Torneo_)
- Partita (**ID_Partita**, _ID_Torneo_, _ID_Arbitro_, <font color="red"> controllare</font>)
- Commentatori (**ID_Commentatori**, Dati Anagrafici)
- Prenotazione (**ID_Prenotazione**, _ID_Team_, _ID_Torneo_, Data, Ora)
- Sistema di pagamento (**ID_Pagamento**, _ID_Prenotazione_, _ID_Premi_)
- Premi (**ID_Premi**, Valore, Numero Premi, _ID_Classifica_)
- Classifica (**ID_Classifica**, _ID_Partita_, Punteggio)
- Hall of Fame (**ID_HoF** , _ID_Utente_ , Num_vittorie)