# Glossario delle Entità

| Entità              | Descrizione                                                                 | Attributi                                                                   | Relazioni coinvolte |
| ------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------------- |
| Persone             | Rappresentano un qualsiasi utente ed il suo ruolo annesso                   | Nome, Cognome, Data di nascita, CF, E-mail                                  |                     |
| Giocatore           | Rappresenta l'utente che farà parte di un team                              | Nome, Cognome, Data di nascita, CF, E-mail, *Numero*, Ruolo, Capitano       |                     |
| Allenatore          | Rappresenta l'utente che dirigerà un team                                   | Nome, Cognome, Data di Nascita, CF, Nazionalità, Team                       |                     |
| Arbitro             | Rappresenta l'utente che dirigerà le partite                                | Nome, Cognome, Anno di nascita, CF, Luogo di nascita                        |                     |
| Telecronista        | Rappresenta l'utente che commenterà le partite                              | Nome, Cognome, Anno di nascita, CF                                          |                     |
| Team                | Rappresenta l'insieme di giocatori che partecipano in squadra al torneo     | *Nome*, Città                                                               |                     |
| Partita             | Rappresenta il singolo match del torneo                                     | Data, Luogo, Team casa, Team ospite                                         |                     |
| Torneo              | Rappresenta la competizione organizzata                                     | *Nome*, *Data*, Tipologia, Premi, Team                                      |                     |
| Partita non giocata | Rappresenta una partita annullata o sospesa per una motivazione specifica.  | Ora, Data, Luogo, Team casa, Team ospite, Motivazione                       |                     |
| Partita giocata     | Rappresenta una partita giocata regolarmente                                | Team casa, Team ospite, Gol casa, Gol fuori casa, Risultato                 |                     |
| Classifica          | Rappresenta la posizione delle squadre in un torneo.                        | Punti, Posizione, Team, Vittorie, Pareggi, Sconfitte, Gol fatti, Gol subiti |                     |
| Premi               | Rappresentano il compenso assegnato a team e giocatori                      | Compenso, Posizione                                                         |                     |
| Statistiche         | Rappresentano le statistiche delle partite                                  | Possesso palla, Cartellini gialli, Cartellini rossi, Gol team,  Tiri        |                     |
| Organizzatori       | Rappresentano gli organizzatori della competizione                          | *Intestazione*, Rappresentante, E-mail, N° di telefono.                     |                     |
| Sponsor             | Rappresentano i finanziatori della competizione                             | Intestazione, *P. IVA*, E-mail, N° Telefono, Somma                          |                     |
| Notifiche           | Rappresentano gli avvisi per i partecipanti o per chi segue la competizione | *Data*, Tipologia Avviso, Testo, *Mittente*, *Destinatario*                 |                     |

# Glossario dei termini
| Entità        | Descrizione                                                                         | Sinonimi     |
| ------------- | ----------------------------------------------------------------------------------- | ------------ |
| Player        | Persona che fa parte di un team                                                     | Giocatore    |
| Team          | Gruppo di giocatori che formano una squadra                                         | Squadra      |
| Torneo        | Tipo di torneo organizzato                                                          | Competizione |
| Organizzatori | Membri che organizzano i tornei                                                     | Coordinatori |
| Classifica    | Tabella che indica la posizione del team nel torneo                                 | Graduatoria  |
| Hall of Fame  | Tabella che indica quale team ha fatto più vittorie in una determinata competizione | HoF          |
| Premi         | Premio che viene assegnato al vincitore                                             | Trofeo       |
| Commentatori  | Persone che commentano una partita                                                  | Telecronisti |
| Notifiche     | Aggiornamenti delle competizioni o info lasciate dagli organizzatori                | Avvisi       |
| Partita       | Singola partita presente in una competizione                                        | Match        |
| Arbitro       | Persone che controllano i comportamenti dei giocatori                               | Giudice      |
| Sponsor       | Finanziatore della competizione                                                     | Ente         |
# Glossario delle relazioni

| Relazioni  | Descrizione                                                                     | Entità                              |
| ---------- | ------------------------------------------------------------------------------- | ----------------------------------- |
| MembroDi   | Relazione che indica una team per un giocatore                                  | Giocatore (1,N), Team (1,N)         |
| Riceve     | Relazione che inidica un premio da assegnare ad un team                         | Premi (1,N), Team (1,N)             |
| Partecipa  | Relazione che indica la partecipazione di un team ad una competizione           | Team (0,N), Torneo(1,N)             |
| Organizza  | Relazione che indica l'organizzazione di un torneo da parte degli organizzatori | Organizzatori (1,N), Torneo (1,N)   |
| Inviano    | Relazione che indica l'invio di una notifica da parte degli organizzatori       | Organizzatori (1,N), Notifiche(1,N) |
| Finanziano | Relazione che indica che gli sponsor possono finanziare una competizione        | Sponsor (1,N), Competizione (0,N)   |
| Giocano    | Relazione che indica una partita assegnata ad un team                           | Torneo (1,N), Partita(1,N)          |
| Dirige     | Relazione che assegna un arbitro ad una partita                                 | Arbitro(1,N), Partita(1,N)          |
| Narrano    | Relazione che indica il commento di una partita da parte di un commentatore     | Commentatori (1,N), Partita (1,1)   |
| Decide     | Relazione che indica la classifica in base alle partite                         | Partita (1,N), Classifica (1,1)     |
| Aggiudica  | Relazione che indica il vincitore del premio                                    | Classifica(1,1), Premi(1,N)         |
| Assegna    | Relazione che indica la Hall of Fame                                            | Classifica(1,1), Hall of Fame (1,1) |

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