# Welcome to `sport.db`

A free open public domain sports database & schema  
for use in any (programming) language
(e.g. uses plain text fixtures/data sets)


## Usage

Build yourself a copy of the `sport.db` from the plain text fixtures
in three steps.

Step 1:  Get a copy of the `world.db` fixtures

    $ git clone git://github.com/geraldb/world.db.git

Step 2:  Get a copy the `sport.db` fixtures

    $ git clone git://github.com/geraldb/sport.db.git

Step 3:  Let's build the `sport.db`

    $ sportdb setup --include ./sport.db --worldinclude ./world.db

That's it.


![](https://raw.github.com/geraldb/sport.db/master/i/sqlitestudio.png)

## Events

### Football (Soccer)

See the [football.db project](https://github.com/geraldb/football.db) for more.

### Hockey

Hockey club teams

* [National Hockey League (NHL) 2012](https://github.com/geraldb/sport.db/tree/master/nhl)

Anything missing? Add your leagues, teams, fixtures and more.

## Demo

Try the `sport.db` Web Admin demo running
on Heroku [`sportdbdemo.herokuapp.com`](http://sportdbdemo.herokuapp.com).


## Tables, Schema

The `sport.db` includes the following tables:

* teams
* games
* events
  * events_teams (join table)
* rounds
* groups
  * groups_teams (join table)


[add schema pic here]


###  `teams` Table

[tbd]

    CREATE TABLE teams ( 
        id         INTEGER         PRIMARY KEY AUTOINCREMENT NOT NULL,
        title      VARCHAR( 255 )  NOT NULL,
        title2     VARCHAR( 255 ),
        [key]      VARCHAR( 255 )  NOT NULL,
        tag        VARCHAR( 255 ),
        created_at DATETIME        NOT NULL,
        updated_at DATETIME        NOT NULL 
    );


###  `games` Table

[tbd]

    CREATE TABLE games ( 
        id           INTEGER         PRIMARY KEY AUTOINCREMENT NOT NULL,
        round_id     INTEGER         NOT NULL,
        pos          INTEGER         NOT NULL,
        group_id     INTEGER,
        team1_id     INTEGER         NOT NULL,
        team2_id     INTEGER         NOT NULL,
        play_at      DATETIME        NOT NULL,
        knockout     BOOLEAN         DEFAULT 'f'   NOT NULL,
        home         BOOLEAN         DEFAULT 't'   NOT NULL,
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


###  `events` Table

[tbd]

    CREATE TABLE events ( 
        id         INTEGER         PRIMARY KEY AUTOINCREMENT NOT NULL,
        title      VARCHAR( 255 )  NOT NULL,
        [key]      VARCHAR( 255 )  NOT NULL,
        start_at   DATETIME        NOT NULL,
        created_at DATETIME        NOT NULL,
        updated_at DATETIME        NOT NULL 
    );




## Command Line Tool

To build your own `sport.db` copy
use the `sportdb` command line tool.
See the [`sportdb` command line tool project](https://github.com/geraldb/sport.db.ruby)
for more.


## Plain Text Fixtures

The `sportdb` command line tool
lets you import fixtures in plain text. Example:

```
Spieltag 5

23.09. 13:30   Liverpool FC - Manchester United  1:2
23.09. 15:00   Newcastle United - Norwich City  1:0
23.09. 16:00   Manchester City - Arsenal FC  1:1
23.09. 16:00   Tottenham Hotspur - Queens Park Rangers  2:1
```

The plain text format skips comments (starting with `#`) and blank lines. Example:

```
###
#  Premier League
#  - more info -> http://premierleague.com (official site)
#                 http://en.wikipedia.org/wiki/Premier_League
```

### Format for Rounds

TBD

### Format for Fixtures

TBD


## Real World Usage

[sport.db Web Admin](https://github.com/geraldb/sport.db.admin) - `sport.db` Web Admin Tool in Ruby on Rails (version 3.2 and up).

[sport.db JSON API Service](https://github.com/geraldb/sport.db.api) -  `sport.db` Web Service / JSON API Service Sample

[Sportbook](http://geraldb.github.com/sportbook) - A free, open source sports betting pool
in Ruby on Rails (version 3.2 and up). 


## Alternatives

[SportsDB](http://www.sportsdb.org)  - open database schema for sports information (formerly known as XTOSS: The XML Team Open Sports Schema.)

[openLigaDB](http://www.openligadb.de) -  community-based sport results


## License

The `sport.db` schema, data and scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [Open Sports Database & Friends Forum/Mailing List](http://groups.google.com/group/opensport). Thanks!