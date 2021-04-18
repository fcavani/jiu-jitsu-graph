# The Jiu-jitsu graph database

![Graph - 2020-06-01](https://raw.githubusercontent.com/fcavani/jiu-jitsu-graph/master/dgraph.png)

Jiu-jitsu positions, sequences, scores and descriptions graph database.

It's a simple way to view and understand some aspects of this complex art by someone with a blue belt. I'm really don't want to simplify Jiu-jitsu to a computational model, it's not possible, but it's fun to document it.

**This isn't a form of replacement to the normal train in a properly school with a good master.**

## Archived

The actual state of the pandemic (2021-04-18), here at Brazil, is just absurd and ours leaders are just leaving people to death. Check the statistics there is no way to contradict this statement. My position was since the begin of the last year to stop training, because we have so low knowledge about this disease that is unsafe for me to take the chance at whatever activity (I always worked from home and I and my family just leave home only at extreme cases). I will take my vaccine but I don't trust at it and I don't believe that the virus will stop causing problems, this is just my option under no scientific consideration, I hope that I'm very wrong. I like very much to continue my jiu-jitsu training and fill this database with more knowledge, but I believe too much that this art is something to be practiced at the tatami not by reading some text and add the position here.

## Dgraph

I'm migrating it from neo4j to [Dgraph](https://dgraph.io) (simple licensing, fast, easy to use and good query language). I will need a new model, a better one to describe the data (I'm working on it on the develop branch). Expect a lot of changes before I reach a stable model and start to fill it with the data from the [old model](https://github.com/fcavani/jiu-jitsu-graph/tree/neo4j-final).

## How to test it

Install [docker](https://www.docker.com/) and [docker compose](https://docs.docker.com/compose/).

Consider using a virtual environment before install the requirements.
Do something like that:

``` bash
python3 -m venv .venv
source .venv/bin/active
```

Finally, just run it:

``` bash
docker-compose up
pip install -r requirements.txt
python3 bootstrap_database.py # All your db will be erased. Make a backup or edit the script.
```

Now point your browser to http://localhost:8000.

In the console, query tab enter the query and hit run.
There are some queries in the file [queries.dgraph](https://github.com/fcavani/jiu-jitsu-graph/blob/master/queries.dgraph).

``` graphql
{
  jiu_from_begin(func: eq(name@en, "start")) @recurse(depth: 10, loop: true) {
    name@pt
    to
    points
  }
}
```

If you don't know nothing about graphs, I recommend
that you take a look in
[the dgraph web site](https://dgraph.io/).

## Contributions

Contributions must only be made by pull request. It will be reviewed before I merge it.

## Contact the developer

- By email: fcavani@gmail.com
- Twitter: @fcavani

## LICENSE

Jiu-jitsu graph (c) by Felipe Cavani \<fcavani@gmail.com\>

Jiu-jitsu graph is licensed under a
Creative Commons Attribution-NonCommercial 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.
