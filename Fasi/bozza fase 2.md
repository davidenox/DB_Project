
# Entità

| Entità               | Descrizione                                                                               | Attributi                                                                | Relazioni Coinvolte |
| -------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ------------------- |
| Giocatore            | Rappresenta l'utente che intende partecipare alla competizione.                           | *ID_utente*, email, dati anagrafici, nickname                            |                     |
| Competizione         | Rappresenta il tipo di evento organizzato per il videogioco scelto.                       | *ID_torneo*, tipologia, nome_torneo, regolamento, data inizio/fine       |                     |
| Videogioco           | Rappresenta gioco utilizzato nella competizione.                                          | *ID_gioco*, nome, genere                                                 |                     |
| Piattaforma          | Rappresenta la postazione di gioco per gli utenti.                                        | *ID_piattaforma*, tipo di piattaforma                                    |                     |
| Organizzatori        | Rappresenta la figura che intende creare la competizione.                                 | *ID_organizzatori*, email, dati anagrafici                               |                     |
| Classifica           | Rappresenta la posizione dei giocatori o delle squadre in un torneo.                      | *ID_classifica*, ID_torneo, ID_giocatore, ID_squadra, punteggio          |                     |
| Hall of Fame         | Rappresenta uno storico dei migliori giocatori che hanno partecipato ad una competizione. | *ID_hof*, ID_giocatore, nickname, numero di vittorie                     |                     |
| Prenotazione         | Rappresenta l'iscrizione ad un torneo.                                                    | *ID_prenotazione*, ID_giocatore, ID_competizione, data/ora               |                     |
| Premio               | Rappresenta il riconoscimento per la vittoria di una competizione.                        | *ID_premio*, ID_giocatore, valore, ID_torneo                             |                     |
| Team                 | Rappresenta un gruppo di utenti che vogliono partecipare in squadra ad una competizione.  | *ID_team*, ID_giocatore, ID_torneo                                       |                     |
| Commentatori         | Commentano e fanno la telecronaca della partita                                           | *Dati anagrafici*, ID_torneo                                             |                     |
| Notifiche            | Rappresentano la gestione delle comunicazioni agli utenti                                 | *ID_notifiche*, ID_giocatore, ID_team, ID_organizzatori                  |                     |
| Sistema di pagamento | Metodo di pagamento per le iscrizioni al torneo e l'erogazione dei premi                  | *ID_pagamento*, ID_prenotazione, numero carta, circuito di pagamento     |                     |
| Partita              | Rappresenta il match singolo di una competizione                                          | *ID_partita*, ID_giocatore, ID_torneo, ID_team, ID_classifica, risultato |                     |
| Arbitri              | Moderano i comportamenti dei giocatori durante gli eventi.                                | *Dati anagrafici*, ID_torneo, ID_partita                                 |                     |
| Sponsor              | Finanziano l'evento                                                                       | *ID_sponsor*                                                             |                     |
