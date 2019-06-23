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

MATCH ((s:BJJ)-[:TO]->(next))
RETURN s, next

MATCH (start:BJJ {name: 'Início'}), (end:BJJ {name: 'Finalizado'})
CALL apoc.algo.dijkstra(start, end, 'TO', 'score') YIELD path, weight
RETURN path, weight

OPTIONAL MATCH (start:BJJ { name: 'Início' }),(end:BJJ { name: 'Finalizado' }), p = shortestPath((start)-[r:TO*]-(end))
WHERE all(x IN r WHERE x.p = 'passador' OR NOT EXISTS(x.p))
RETURN p;

MATCH (start:BJJ{name:'Início'}), (end:BJJ{name:'Finalizado'})
CALL algo.shortestPath.stream(start, end, 'score', {
    relationshipQuery:'MATCH(n:BJJ)-[r:TO]->(m) RETURN id(n) as source, id(m) as target, r.score as weight',
    defaultValue:0.0})
YIELD nodeId, cost
RETURN algo.asNode(nodeId).name AS name, cost;

MATCH (start:BJJ{name:'Início'}), (end:BJJ{name:'Finalizado'})
CALL algo.shortestPath(start, end, 'score',{
nodeQuery:'MATCH(n:start) RETURN id(n) as id',
relationshipQuery:'MATCH(n:start)-[r:TO]->(m:end) RETURN id(n) as source, id(m) as target, r.score * -1 as weight',
graph:'cypher'})
YIELD writeMillis,loadMillis,nodeCount, totalCost
RETURN writeMillis,loadMillis,nodeCount,totalCost