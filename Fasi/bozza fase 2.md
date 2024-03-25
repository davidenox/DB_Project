
# Glossario delle Entità

| Entità               | Descrizione                                                                               | Attributi                                                                | Relazioni Coinvolte                                     |
| -------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------- |
| Giocatore            | Rappresenta l'utente che intende partecipare alla competizione.                           | *ID_utente*, email, dati anagrafici, nickname                            | Team                                                    |
| Competizione         | Rappresenta il tipo di evento organizzato per il videogioco scelto.                       | *ID_torneo*, tipologia, nome_torneo, regolamento, data inizio/fine       | Team, Organizzatori, Sponsor, Partita, Prenotazione     |
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

# Glossario delle relazioni

| Relazioni | Descrizione | Entità |     |
| --------- | ----------- | ------ | --- |
|           |             |        |     |
