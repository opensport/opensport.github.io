# Welcome to `sport.db`

A free open public domain sports database & schema
for use in any (programming) language
(e.g. uses plain text fixtures/data sets). Example:


```
Matchday 5

23.09. 13:30   Liverpool FC       1-2  Manchester United
23.09. 15:00   Newcastle United   1-0  Norwich City
23.09. 16:00   Manchester City    1-1  Arsenal FC
23.09. 16:00   Tottenham Hotspur  2-1  Queens Park Rangers
```

## Data Sets

### Football (Soccer)

See the [`football.db` project](https://github.com/openfootball) for more.

### Formula 1

See the [`formula1.db` project](https://github.com/geraldb/formula1.db) for more.

### (Alpine) Ski 

See the [`ski.db` project](https://github.com/geraldb/ski.db) for more.

### (Ice) Hockey

* [National Hockey League (NHL)](https://github.com/geraldb/sport.db/tree/master/nhl)

### American Football

* [Nation Football League (NFL)](https://github.com/geraldb/sport.db/tree/master/nfl)


Anything missing? Add your leagues, teams, fixtures and more.



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


## Command Line Tool

Use the `sportdb` command line tool to build your own `sport.db` copy.
See the [`sportdb` command line tool project](https://github.com/geraldb/sport.db.ruby) for more.



## Tables, Schema

The `sport.db` includes the following tables:

* teams
* games
* leagues
* seasons
* events
  * events_teams (join table)
* rounds
* groups
  * groups_teams (join table)



## Real World Usage

[sport.db Web Admin](https://github.com/geraldb/sport.db.admin) - `sport.db` Web Admin Tool in Ruby on Rails (version 3.2 and up).

[sport.db HTTP JSON API Web Service](https://github.com/geraldb/sport.db.ruby) -  `sport.db` Web Service / HTTP JSON API

[Sportbook](https://github.com/openbookie/sportbook) - A free, open source sports betting pool in Ruby on Rails (version 3.2 and up). 


## Alternatives

[SportsDB](http://www.sportsdb.org)  - open database schema for sports information (formerly known as XTOSS: The XML Team Open Sports Schema.)

[openLigaDB](http://www.openligadb.de) -  community-based sport results


## License

The `sport.db` schema, data and scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [Open Sports Database & Friends Forum/Mailing List](http://groups.google.com/group/opensport).
Thanks!
