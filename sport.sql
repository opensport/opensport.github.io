
CREATE TABLE teams ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    title      VARCHAR( 255 )  NOT NULL,
    title2     VARCHAR( 255 ),
    [key]      VARCHAR( 255 )  NOT NULL,
    tag        VARCHAR( 255 ),
    created_at DATETIME        NOT NULL,
    updated_at DATETIME        NOT NULL 
);


CREATE TABLE games ( 
    id           INTEGER         PRIMARY KEY AUTOINCREMENT
                                 NOT NULL,
    round_id     INTEGER         NOT NULL,
    pos          INTEGER         NOT NULL,
    group_id     INTEGER,
    team1_id     INTEGER         NOT NULL,
    team2_id     INTEGER         NOT NULL,
    play_at      DATETIME        NOT NULL,
    knockout     BOOLEAN         DEFAULT 'f'
                                 NOT NULL,
    home         BOOLEAN         DEFAULT 't'
                                 NOT NULL,
    score1       INTEGER,
    score2       INTEGER,
    score3       INTEGER,
    score4       INTEGER,
    score5       INTEGER,
    score6       INTEGER,
    next_game_id INTEGER,
    prev_game_id INTEGER,
    toto12x      VARCHAR( 255 ),
    [key]        VARCHAR( 255 ),
    created_at   DATETIME        NOT NULL,
    updated_at   DATETIME        NOT NULL 
);


CREATE TABLE events ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    title      VARCHAR( 255 )  NOT NULL,
    [key]      VARCHAR( 255 )  NOT NULL,
    start_at   DATETIME        NOT NULL,
    created_at DATETIME        NOT NULL,
    updated_at DATETIME        NOT NULL 
);


CREATE TABLE events_teams ( 
    id         INTEGER  PRIMARY KEY AUTOINCREMENT
                        NOT NULL,
    event_id   INTEGER  NOT NULL,
    team_id    INTEGER  NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL 
);


CREATE TABLE groups ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    event_id   INTEGER         NOT NULL,
    title      VARCHAR( 255 )  NOT NULL,
    pos        INTEGER         NOT NULL,
    created_at DATETIME        NOT NULL,
    updated_at DATETIME        NOT NULL 
);


CREATE TABLE groups_teams ( 
    id         INTEGER  PRIMARY KEY AUTOINCREMENT
                        NOT NULL,
    group_id   INTEGER  NOT NULL,
    team_id    INTEGER  NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL 
);


CREATE TABLE rounds ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    event_id   INTEGER         NOT NULL,
    title      VARCHAR( 255 )  NOT NULL,
    title2     VARCHAR( 255 ),
    pos        INTEGER         NOT NULL,
    playoff    BOOLEAN         DEFAULT 'f'
                               NOT NULL,
    created_at DATETIME        NOT NULL,
    updated_at DATETIME        NOT NULL 
);


CREATE TABLE props ( 
    id         INTEGER         PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    [key]      VARCHAR( 255 )  NOT NULL,
    value      VARCHAR( 255 )  NOT NULL,
    created_at DATETIME        NOT NULL,
    updated_at DATETIME        NOT NULL 
);


