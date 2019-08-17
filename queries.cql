// Jiu-jitsu graph (c) by Felipe Cavani <fcavani@gmail.com>
//
// Jiu-jitsu graph is licensed under a
// Creative Commons Attribution-NonCommercial 4.0 International License.
//
// You should have received a copy of the license along with this
// work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.

MATCH (s)-[t:IS]->(n)
RETURN s, t, n;

MATCH ((s:BJJ)-[t:TO]->(next))
RETURN s, t, next

MATCH ((s:BJJ {name: 'Início'})-[t:TO]->(next))
RETURN s, t, next

// Find the sub graph with passador only.

MATCH path = (to1 {name: 'Início'})-[*]->(to2:BJJ)
WITH *, relationships(path) AS TO
WHERE all(r in TO WHERE r.p = 'passador')
RETURN path

MATCH path = (to1 {name: 'Início'})-[*]->(to2:BJJ)
WITH *, relationships(path) AS TO
WHERE all(r in TO WHERE r.p = 'guardeiro')
RETURN path

// From Início to 3 relations deep with info nodes and whitout submission

MATCH p = (s:BJJ {name: 'Início'})-[t:TO]->(next)-[*1..3]->(next2)
WITH *, relationships(p) AS t2
WHERE NOT next:FIN AND NOT next2:FIN
RETURN s, t, next, t2, next2

// From Início to 3 relations deep whitout submission

MATCH p = (s:BJJ {name: 'Início'})-[t:TO]->(next)-[*1..3]->(next2)
WITH *, relationships(p) AS t2
WHERE NOT next:FIN AND NOT next2:FIN AND all(r in t2 WHERE type(r) = 'TO')
RETURN s, t, next, t2, next2

// Find the longest path with more pontuation until finalized.

MATCH (start:BJJ {name: 'Início'}), (end:BJJ {name: 'Finalizado'})
CALL apoc.algo.dijkstra(start, end, 'TO', 'neg_score') YIELD path, weight
RETURN path, weight

MATCH (start:BJJ {name: 'Início'})-[TO {p: 'passador'}]-> (end:BJJ)
CALL apoc.algo.dijkstra(start, end, 'TO', 'neg_score') YIELD path, weight
RETURN path, weight

MATCH p = (s:BJJ {name: 'Início'})-[t:TO]->(next)-[*1..3]->(next2)
WITH *, relationships(p) AS t2
WHERE NOT next:FIN AND NOT next2:FIN AND all(r in t2 WHERE type(r) = 'TO')
CALL apoc.algo.dijkstra(s, next2, 'TO', 'neg_score') YIELD path, weight
RETURN path, weight

//
// Tests
//

MATCH (n:BJJ {name: "Início"})
CALL algo.spanningTree.kmin("BJJ", "TO", "score", id(n), 1,
{write:true, writeProperty:"MINST"})
YIELD loadMillis, computeMillis, writeMillis, effectiveNodeCount
RETURN loadMillis, computeMillis, writeMillis, effectiveNodeCount;

// MINST

MATCH (n:BJJ {name: "Início"})
CALL algo.spanningTree.minimum("BJJ", "TO", "neg_score", id(n),
{write: true, writeProperty:"MINST"})
YIELD loadMillis, computeMillis, writeMillis, effectiveNodeCount
RETURN loadMillis, computeMillis, writeMillis, effectiveNodeCount;

MATCH path = (n:BJJ {name: "Início"})-[MINST *0..]->()
WITH relationships(path) AS rels
UNWIND rels AS rel
WITH DISTINCT rel AS rel
RETURN startNode(rel).name AS source, endNode(rel).name AS destination, rel.score AS cost

MATCH path = (n:BJJ {name: "Início"})-[MINST *0..]->()
WITH relationships(path) AS rels
UNWIND rels AS rel
WITH DISTINCT rel AS rel
RETURN startNode(rel) as source, endNode(rel).name as destination, rel

// MAXST

MATCH (n:BJJ {name: "Início"})
CALL algo.spanningTree.maximum("BJJ", "TO", "neg_score", id(n),
{write: true, writeProperty:"MAXST"})
YIELD loadMillis, computeMillis, writeMillis, effectiveNodeCount
RETURN loadMillis, computeMillis, writeMillis, effectiveNodeCount;

MATCH path = (n:BJJ {name: "Início"})-[MAXST *0..3]->()
WITH relationships(path) AS rels
UNWIND rels AS rel
WITH DISTINCT rel AS rel
RETURN startNode(rel).name AS source, endNode(rel).name AS destination, rel.score AS cost

MATCH path = (n:BJJ {name: "Início"})-[MAXST *0..3]->()
WITH relationships(path) AS rels
UNWIND rels AS rel
WITH DISTINCT rel AS rel
RETURN startNode(rel) as source, endNode(rel).name as destination, rel

MATCH (n)
REMOVE n:MAX
RETURN n.name, labels(n)

MATCH (start:BJJ {name: 'Início'})-[TO {p: 'passador'}]-> (end:BJJ)
CALL apoc.algo.dijkstra(start, end, 'TO', 'neg_score')
YIELD path, weight
CALL algo.spanningTree.minimum("BJJ", "TO", "neg_score", id(nodes(path)[0]),
{write: true, writeProperty:"MINST2"})
YIELD loadMillis, computeMillis, writeMillis, effectiveNodeCount
RETURN loadMillis, computeMillis, writeMillis, effectiveNodeCount;


//
// Trabalhar mais nesse
// Ajustar segundo valor da relação - NO LOOPS????
// 5 demora mas fica muito bom
//

MATCH p = (s:BJJ {name: 'Início'})-[*0..1]->(next)-[*..5]->(next2)
WITH *, relationships(p) AS t
WHERE next2:FIN AND all(r in t WHERE type(r) = 'TO')
RETURN p

// Testar sem finalização - testar maior pontuação

MATCH p = (s:BJJ {name: 'Início'})-[]->()-[]->(next2)
WITH *, relationships(p) AS t
WHERE NOT next2:FIN AND all(r in t WHERE type(r) = 'TO')
RETURN p

// Testar - maior pontuação até finalizar - o que não faz muito sentido.
// Um arm-lock ligado a fim que brota do nada...
MATCH p = (s:BJJ {name: 'Início'})-[]->()-[]->(next2)
WITH *, relationships(p) AS t
WHERE next2:FIN AND all(r in t WHERE type(r) = 'TO')
CALL apoc.algo.dijkstra(s, next2, 'TO', 'neg_score') YIELD path, weight
RETURN path

// Testar - maior pontuação até 5 arestas - aparecem FIN

MATCH p = (s:BJJ {name: 'Início'})-[]->(next)-[*..5]->(next2)
WITH *, relationships(p) AS t
WHERE NOT next:FIN AND NOT next2:FIN AND all(r in t WHERE type(r) = 'TO')
CALL apoc.algo.dijkstra(s, next2, 'TO', 'neg_score') YIELD path, weight
RETURN path



