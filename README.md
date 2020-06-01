# The Jiu-jitsu graph database

![Graph - 2020-06-01](https://raw.githubusercontent.com/fcavani/jiu-jitsu-graph/master/dgraph.png)

Jiu-jitsu positions, sequences, scores and descriptions graph database.

It's a simple way to view and understand some aspects of a complex art by someone with a blue belt. I'm really don't want to simplify Jiu-jitsu to a computational model, it's not possible, but it's fun to document it.

**This isn't a form of replacement to the normal train in a properly school with a good master.**

## Dgraph

I'm migrating it from neo4j to [Dgraph](https://dgraph.io) (simple licensing, fast, easy to use and good query language). I will need a new model, a better one to describe the data (I work on it in the develop branch). Expect a lot of changes before I reach a stable model and start to fill in the data from the [old model](https://github.com/fcavani/jiu-jitsu-graph/tree/neo4j-final).

## How to test it

Install [docker](https://www.docker.com/) and [docker compose](https://docs.docker.com/compose/).

Just run it:

``` bash
docker-compose up
pip install -r requirements.txt
python3 bootstrap_database.py
```

Now point your browser to http://localhost:8000.

In the console, query tab enter the query and hit run.
There are some queries in the file [queries.dgraph](https://github.com/fcavani/jiu-jitsu-graph/blob/master/queries.dgraph).

``` graphql
{
  jiu_from_begin(func: eq(name@en, "start")) @recurse(depth: 50, loop: true) {
    uid
    name@pt
    begin @facets
    fall @facets
    guard @facets
    pass @facets
    sweep @facets
    side_control @facets
    back @facets
    mount @facets
    submission @facets
    transition @facets
  }
}
```

If you don't know nothing about graphs. I recommend
that you take a look in
[the dgraph web site](https://dgraph.io/).

## Contributions

Contributions must be made only with a pull request. It will be a review before I merge it.

## Contact the developer

- By email: fcavani@gmail.com
- Twitter: @fcavani

## LICENSE

Jiu-jitsu graph (c) by Felipe Cavani \<fcavani@gmail.com\>

Jiu-jitsu graph is licensed under a
Creative Commons Attribution-NonCommercial 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.
