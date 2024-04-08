
# Glossario delle Entità

| Entità        | Descrizione                                                                               | Attributi                                        | Relazioni Coinvolte                        |
| ------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------------ |
| Player        | Rappresenta l'utente che intende partecipare alla competizione.                           | *ID_Player*, E-mail, Dati Anagrafici, Nickname   | Team                                       |
| Torneo        | Rappresenta il tipo di evento organizzato per il videogioco scelto.                       | *ID_Torneo*, Sport, Nome, Regolamento, Tipologia | Team, Organizzatori, Sponsor, <br>Partita, |
| Organizzatori | Rappresenta la figura che intende creare la competizione.                                 | *ID_Organizzatori*, E-mail, Dati Anagrafici      | Torneo, Notifiche                          |
| Classifica    | Rappresenta la posizione dei giocatori o delle squadre in un torneo.                      | *ID_Classifica*,  Punteggio, Anno                | Partita, Premi, Hall of Fame               |
| Hall of Fame  | Rappresenta uno storico dei migliori giocatori che hanno partecipato ad una competizione. | *ID_HoF*, ID_Player, Numero vittorie             | Classifica                                 |
| Premi         | Rappresenta il riconoscimento per la vittoria di una competizione.                        | *ID_Premio*, Valore, Numero premi                | Team, Classifica                           |
| Team          | Rappresenta un gruppo di utenti che vogliono partecipare in squadra ad una competizione.  | *ID_Team*, Nome                                  | Player, Notifiche,  Torneo, Premi          |
| Commentatori  | Commentano e fanno la telecronaca della partita                                           | *ID_Commentatori*, Dati Anagrafici               | Partita                                    |
| Notifiche     | Rappresentano la gestione delle comunicazioni agli utenti                                 | *ID_Notifiche*,                                  | Team, Organizzatori                        |
| Partita       | Rappresenta il match singolo di una competizione                                          | *ID_Partita*, Data, Ora, Luogo, Risultato        | Torneo, Arbitro, Commentatori, Classifica  |
| Arbitro       | Modera i comportamenti dei giocatori durante gli eventi.                                  | *ID_Arbitro*, Dati Anagrafici                    | Partita                                    |
| Sponsor       | Finanziano l'evento                                                                       | *ID_Sponsor*, Nome, Fondi                        | Torneo                                     |

<font color="yellow">Punti di vista:</font> 
- Non è meglio mettere ai commentatori come chiave primaria i dati anagrafici? Tanto alla fine devi sapere il cognome di chi commenta. 
- Poi l'attributo Risultato l'ho messo come attributo di partita. Va bene?  
- Anche per l'Hall of Fame invece di mettere ID_Player, dato che è chiave esterna, io metterei direttamente il Nickname 
- Per quanto riguarda lo schema il collegamento tra Player e Team, dato che è solo un torneo sportivo, non è meglio mettere un player ad una sola squadra, quindi 1:1,  e una squadra ha più player, quindi 1:N ?
- Il collegamento tra Torneo e Sponsor 0:N va bene perché zero o più tornei possono essere sponsorizzati, ma al contrario metterei che zero o più sponsor possono sponsorizzarli, quindi 0:N anche qui?
- Per quanto riguarda la Hall of Fame, la facciamo che riguarda una squadra o per ogni tipologia di sport c'è una HoF? Perché sennò tocca cambiare le associazioni. 

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