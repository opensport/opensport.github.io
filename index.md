---
layout: default
title: Welcome
---

# {{ page.title }}

<div class="toc" markdown="1">
Contents:

* [What's `sport.db`?](#whatis)
* [Data Sets](#data-sets)
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


### Formula 1   {#formula1}

See the [`formula1.db` repo](https://github.com/opensport/formula1.db) for more.
Example:

~~~
##########################################################
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
Example:

~~~
#############################
# Ski Alpine 2013/14 - Men

(1)  27 Oct 2013  9:30  Sölden (AUT)       / Riesenslalom

(2)  17 Nov 2013 10:00  Levi (FIN)         / Slalom
(3)  30 Nov 2013 20:00  Lake Louise (CAN)  / Abfahrt

(4)   1 Dec 2013 19:00  Lake Louise (CAN)  / Super G
(5)   6 Dec 2013 19:00  Beaver Creek (USA) / Abfahrt
(6)   7 Dec 2013 18:45  Beaver Creek (USA) / Super G
(7)   8 Dec 2013 17:45  Beaver Creek (USA) / Riesenslalom
(8)  14 Dec 2013 10:00  Val d'Isere (FRA)  / Riesenslalom
(9)  15 Dec 2013  9:30  Val d'Isere (FRA)  / Slalom
(10) 20 Dec 2013 12:15  Val Gardena (ITA)  / Super G
(11) 21 Dec 2013 12:15  Val d'Isere (FRA)  / Abfahrt
(12) 22 Dec 2013  9:30  Alta Badia (ITA)   / Riesenslalom

~~~

### American Football / Nation Football League (NFL) {#american-football}

See the [`american-football.db` repo](https://github.com/opensport/american-football.db) for more.
Example:

~~~
###################################################
# National Football League (NFL) 2012/13 Playoffs

(19) Round 19 - Divisional Playoffs  (Knockout)

Jan/12  Baltimore Ravens   38-35  Denver Broncos        (AFC)  # Sports Authority Field
Jan/13  Houston Texans     28-41  New England Patriots  (AFC)  # Gillette Stadium

Jan/12  Green Bay Backers  31-45  San Francisco 49ers  (NFC)   # Candlestick Park
Jan/13  Seattle Seahawks   28-30  Atlanta Falcons      (NFC)   # Georgia Dome


(20) Round 20 - Conference Championships (Knockout)

Jan/20  Baltimore Ravens      28-13  New England Patriots   (AFC Championship)   # Gillette Stadium
Jan/20  San Francisco 49ers   28-24  Atlanta Falcons        (NFC Championsip)    # Georgia Dome


##########################
# Super Bowl XLVII

(21) Round 21 - Super Bowl XLVII  (Knockout)   //  February 3

Feb/3  Baltimore Ravens   34-31 (7-3, 14-3, 7-17, 6-8)  San Francisco 49ers   # Superdome  - New Orleans, Louisiana
~~~


### (Ice) Hockey / National Hockey League (NHL)  {#hockey}

See the [`hockey.db` repo](https://github.com/opensport/hockey.db) for more. Example:

~~~
######################################
# National Hockey League (NHL) Teams

njdevils,     New Jersey Devils,   East/Atlantic, NJD, us, city:newark
nyislanders,  New York Islanders,  East/Atlantic, NYI, us, city:newyork
nyrangers,    New York Rangers,    East/Atlantic, NYR, us, city:newyork
phiflyers,    Philadelphia Flyers, East/Atlantic, PHI, us, city:philadelphia
pitpenguins,  Pittsburgh Penguins, East/Atlantic, PIT, us, city:pittsburgh

bosbruis,   Boston Bruis,        East/Northeast, BOS, us, city:boston
bufabres,  Buffalo Sabres,      East/Northeast, BUF, us, city:buffalo
montreal, Montreal Canadiens,  East/Northeast, MTL, ca, city:montreal
ottawa,   Ottawa Senators,     East/Northeast, OTT, ca, city:ottawa
toronto,  Toronto Maple Leafs, East/Northeast, TOR, ca, city:toronto
...
~~~


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

