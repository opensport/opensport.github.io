Welcome to `sport.db`
=====================

A Free Open Sports Database & Schema

## Usage

Get a copy of the `sport.db` file. That's it.

### Events include

National football teams (e.g. Austria, England, etc.)

* [World Cup Quali 2012/13](https://github.com/geraldb/sport.db/tree/master/db/world)
* [UEFA European Football Championship (Euro) 2012](https://github.com/geraldb/sport.db/tree/master/db/euro)

Football club teams (e.g. FC Barcelona, Manchester Utd, etc.) / International

* [UEFA Champions League 2011/12, 2012/13](https://github.com/geraldb/sport.db/tree/master/db/cl)
* [UEFA Europa League 2011/12](https://github.com/geraldb/sport.db/tree/master/db/cl)

Football club teams / National

* [English Permier League 2012/13](https://github.com/geraldb/sport.db/tree/master/db/en)
* [Deutsche Bundesliga 2012/13](https://github.com/geraldb/sport.db/tree/master/db/de)
* [Österreichische Bundesliga 2011/12, 2012/13](https://github.com/geraldb/sport.db/tree/master/db/at), [ÖFB Cup 2011/12, 2012/13](https://github.com/geraldb/sport.db/tree/master/db/at)
* [Romania Liga 1 2012/13](https://github.com/geraldb/sport.db/tree/master/db/ro)
* [México Primera División Apertura 2012](https://github.com/geraldb/sport.db/tree/master/db/mx)

Hockey club teams

* [National Hockey League (NHL) 2012](https://github.com/geraldb/sport.db/tree/master/db/nhl)

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


    sportdb - sport.db command line tool
    
    Usage: sportdb [options]
      -c, --create                     Create DB Schema
          --load                       Use Loader for Builtin Sports Data
      -o, --output PATH                Output Path (default is .)
      -i, --include PATH               Data Path (default is .)
      -v, --version                    Show version
          --verbose                    Show debug trace
      -h, --help                       Show this message
    
    
    Examples:
       sportdb cl/teams cl/2012_13/cl                     # import champions league (cl)
       sportdb -c                                         # create database schema


See the [`sportdb` command line tool documentation](https://github.com/geraldb/sport.db/tree/master/script) for more.


## Build Your Own `sport.db` Version

Step 1:  Create an empty database, that is, `sport.db`. Issue the command:

    sportdb --create

Step 2:  Add your events and game fixtures of choice. For example,
let's use the Champions League 2012/13 and the World Cup 2012/13 Quali events and fixtures:

    sportdb --include <your_path_to_fixtures> cl/teams cl/2012_13/cl
    sportdb --include <your_path_to_fixtures> euro/teams world/2012_13/quali_2012_13

That's it.


## Real World Usage

[sport.db Web Admin](https://github.com/geraldb/sport.db.admin) - `sport.db` Web Admin Tool in Ruby on Rails (version 3.2 and up).

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