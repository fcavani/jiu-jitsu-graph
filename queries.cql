// Jiu-jitsu graph (c) by Felipe Cavani <fcavani@gmail.com>
//
// Jiu-jitsu graph is licensed under a
// Creative Commons Attribution-NonCommercial 4.0 International License.
//
// You should have received a copy of the license along with this
// work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.

MATCH (n)
RETURN n;

MATCH (n:BJJ)
RETURN n;

MATCH ((s:BJJ)-[:TO]->(next)), (bjj:BJJ)-[:INFO_PT]->(info)
RETURN s, next, bjj, info;

OPTIONAL MATCH (start:BJJ { name: 'Início' }),(end:BJJ { name: 'Finalizado' }), p = shortestPath((start)-[:TO*]-(end))
RETURN p;

MATCH ((s:BJJ)-[t:TO]->(next))
RETURN s, t, next


OPTIONAL MATCH (start:BJJ { name: 'Início' }),(end:BJJ { name: 'Finalizado' }), p = shortestPath((start)-[r:TO*]-(end))
WHERE all(x IN r WHERE x.p = 'passador' OR NOT EXISTS(x.p))
RETURN p;

// Find the sub graph with passador only.

MATCH path = (to1 {name: 'Início'})-[*]->(to2:BJJ)
WITH *, relationships(path) AS TO
WHERE all(r in TO WHERE r.p = 'passador')
RETURN path

MATCH path = (to1 {name: 'Início'})-[*]->(to2:BJJ)
WITH *, relationships(path) AS TO
WHERE all(r in TO WHERE r.p = 'guardeiro')
RETURN path

// Find the longest path with more pontuation until finalized.

MATCH (start:BJJ {name: 'Início'}), (end:BJJ {name: 'Finalizado'})
CALL apoc.algo.dijkstra(start, end, 'TO', 'neg_score') YIELD path, weight
RETURN path, weight

MATCH (start:BJJ {name: 'Início'}), (end:BJJ)
CALL apoc.algo.dijkstra(start, end, 'TO', 'neg_score') YIELD path, weight
RETURN path, weight


// Fail with heap space

MATCH (start:BJJ{name:'Início'}), (end:BJJ{name:'Finalizado'})
CALL algo.shortestPath.stream(start, end, 'neg_score', {
    relationshipQuery:'MATCH(n:BJJ)-[r:TO]->(m) RETURN id(n) as source, id(m) as target, r.neg_score as weight',
    defaultValue:0.0})
YIELD nodeId, cost
RETURN algo.asNode(nodeId).name AS name, cost;

// Don't work

MATCH (start:BJJ{name:'Início'}), (end:BJJ{name:'Finalizado'})
CALL algo.shortestPath(start, end, 'score',{
nodeQuery:'MATCH(n:start) RETURN id(n) as id',
relationshipQuery:'MATCH(n:start)-[r:TO]->(m:end) RETURN id(n) as source, id(m) as target, r.score * -1 as weight',
graph:'cypher'})
YIELD writeMillis,loadMillis,nodeCount, totalCost
RETURN writeMillis,loadMillis,nodeCount,totalCost