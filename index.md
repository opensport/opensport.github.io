---
layout: default
title: Welcome
---

# {{ page.title }}

<div class="toc" markdown="1">
Contents:

* [What's `sport.db`?](#whatis)
* [Data Sets](#data-sets)
    * [Football (Soccer)](#football)
    * [Formula 1](#formula1)
    * [(Alpine) Ski](#ski)
    * [American Football / Nation Football League (NFL)](#american-football)
    * [(Ice) Hockey / National Hockey League (NHL)](#hockey)
* [Command Line Tool](#tools)
* [Tables, Schema](#schema)
* [About, License](#license)
* [Questions? Comments?](#questions)
</div>


## What's `sport.db`?   {#whatis}

A free open public domain sports database 'n' schema
for use in any (programming) language (e.g. uses plain text fixtures/data sets). 


## Data Sets  {#data-sets}

### Football (Soccer)   {#football}

See the [Open Football Data (`football.db`) repos](https://github.com/openfootball) for more.
Example:

~~~
Matchday 5

23.09. 13:30   Liverpool FC       1-2  Manchester United
23.09. 15:00   Newcastle United   1-0  Norwich City
23.09. 16:00   Manchester City    1-1  Arsenal FC
23.09. 16:00   Tottenham Hotspur  2-1  Queens Park Rangers
~~~

### Formula 1   {#formula1}

See the [`formula1.db` repo](https://github.com/opensport/formula1.db) for more.
Example:

~~~
############################################################
# Grand Prix Monaco 2013 - Round 6 of 19 // 26 May 2013 

# | Pos | Driver | Team | Laps | Time/Retired

1 Nico Rosberg Mercedes 78 2:17:52.056
2 Sebastian Vettel Red Bull 78 +3.8 secs
3 Mark Webber Red Bull 78 +6.3 secs
4 Lewis Hamilton Mercedes 78 +13.8 secs
5 Adrian Sutil Force India 78 +21.4 secs
6 Jenson Button McLaren 78 +23.1 secs
7 Fernando Alonso Ferrari 78 +26.7 secs
~~~

### (Alpine) Ski  {#ski}

See the [`ski.db` repo](https://github.com/opensport/ski.db) for more.


### American Football / Nation Football League (NFL) {#american-football}

See the [`american-football.db` repo](https://github.com/opensport/american-football.db) for more.


### (Ice) Hockey / National Hockey League (NHL)  {#hockey}

See the [`hockey.db` repo](https://github.com/opensport/hockey.db) for more.



Anything missing? Add your leagues, teams, fixtures and more.



## Command Line Tool  {#tools}

Use the `sportdb` command line tool to build your own `sport.db` copy.
See the [`sportdb` command line tool project](https://github.com/geraldb/sport.db.ruby) for more.



## Tables, Schema  {#schema}

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
* tracks
* races
* records


## Real World Usage

[sport.db Web Admin](https://github.com/geraldb/sport.db.admin) - `sport.db` Web Admin Tool in Ruby on Rails (version 3.2 and up).

[sport.db HTTP JSON API Web Service](https://github.com/geraldb/sport.db.ruby) -  `sport.db` Web Service / HTTP JSON API

[Sportbook](https://github.com/openbookie/sportbook) - A free, open source sports betting pool in Ruby on Rails (version 3.2 and up). 


## Alternatives

[SportsDB](http://www.sportsdb.org)  - open database schema for sports information (formerly known as XTOSS: The XML Team Open Sports Schema.)

[openLigaDB](http://www.openligadb.de) -  community-based sport results


## License   {#license}

The `sport.db` schema, data and scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


{% include questions.md %}

