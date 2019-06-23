# jiu-jitsu-graph
Jiu-jitsu positions, sequences, punctuation and descriptions in neo4j graph database.

# Install Neo4J

mkdir -p {$HOME}/neo4j/data
mkdir {$HOME}/neo4j/logs
mkdir {$HOME}/neo4j/import
mkdir {$HOME}/neo4j/plugins
mkdir {$HOME}/neo4j/plugins/conf
(copy conf to conf dir)

docker pull neo4j:latest
cd {$HOME}/neo4j/plugins
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.4/apoc-3.5.0.4-all.jar
wget https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/3.5.4.0/graph-algorithms-algo-3.5.4.0.jar

# Running Neo4J

docker run \
    --name myneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/var/lib/neo4j/import \
    -v $HOME/neo4j/plugins:/plugins \
    -v $HOME/neo4j/conf:/var/lib/neo4j/conf \
    --env NEO4J_AUTH=neo4j/test123 \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    neo4j:latest

# Import graph db

docker exec -it myneo4j bash
cp jiujitsu.cql {$HOME}/neo4j/import/
cat import/jiu-jitsu.cql | cypher-shell -u neo4j -p test123
