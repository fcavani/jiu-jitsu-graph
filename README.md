# jiu-jitsu-graph

Jiu-jitsu positions, sequences, scores and descriptions in Neo4j graph database.

It's a simple view of a complex art by someone with a blue belt.
I'm really don't want to simplify jiu-jitsu to some computational model,
it's not possible but it's fun to document some simple aspects of it.

*This isn't a form of replacement to the normal train in a properly school
with a good master.*

## Objectives

- Find in jiu-jitsu community people with graph database knowledge and Github
experience.

- Open this database to somebody how wants to contribute with new positions and
better descriptions.

- Translate from Portuguese to English position names and descriptions.

- Improve the graph model.

## Contributions

Contributions must be made only with a Github pull request and subsequent
review.

## Install Neo4J

```console
mkdir -p ${HOME}/neo4j/data
mkdir ${HOME}/neo4j/logs
mkdir ${HOME}/neo4j/import
mkdir ${HOME}/neo4j/conf
mkdir ${HOME}/neo4j/plugins
(copy conf to conf dir)
```

```console
docker pull neo4j
cd ${HOME}/neo4j/plugins
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.4/apoc-3.5.0.4-all.jar
wget https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/3.5.4.0/graph-algorithms-algo-3.5.4.0.jar
```

## Running Neo4J

First of all install docker fallowing
[this instructions](https://neo4j.com/developer/docker-run-neo4j/).

After start the container:

```console
docker run \
    --name myneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/import \
    -v $HOME/neo4j/plugins:/plugins \
    -v $HOME/neo4j/conf:/conf \
    --env NEO4J_AUTH=neo4j/test123 \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    neo4j:latest
```

## Import graph database

Copy the cql file to the container mapped folder.

```console
cp jiujitsu.cql ${HOME}/neo4j/import/
```

Open a shell inside container:

```console
docker exec -it myneo4j bash
```

Inside of it do this for populate the database:

```console
cat /import/jiujitsu.cql | cypher-shell -u neo4j -p test123 --format verbose
```

## LICENSE

Jiu-jitsu graph (c) by Felipe Cavani <fcavani@gmail.com>

Jiu-jitsu graph is licensed under a
Creative Commons Attribution-NonCommercial 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.
