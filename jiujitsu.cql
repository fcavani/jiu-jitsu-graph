// Jiu-jitsu graph (c) by Felipe Cavani <fcavani@gmail.com>
//
// Jiu-jitsu graph is licensed under a
// Creative Commons Attribution-NonCommercial 4.0 International License.
//
// You should have received a copy of the license along with this
// work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.

:begin

MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n, r;

CREATE (bjj:MA {name: 'Brazilian Jiu-Jitsu'}),
(bjj)-[:TRANSLATION_EN]->({name: 'Brazilian Jiu-Jitsu'}),
(bjj)-[:TRANSLATION_PT]->({name: 'Jiu-jitsu brasileiro'});

CREATE (finalizado:FIN:BJJ {name: "Finalizado"}),
(finalizado)-[:TRANSLATION_EN]->({name: 'Submited'}),
(finalizado)-[:TRANSLATION_PT]->({name: 'Finalizado'});

CREATE (fin:FIN:BJJ {name: "Finalização"}),
(fin)-[:TRANSLATION_EN]->({name: 'Submission'}),
(fin)-[:TRANSLATION_PT]->({name: 'Finalização'});

CREATE (inicio:BJJ {name: "Início"}),
(inicio)-[:TRANSLATION_EN]->({name: 'Start'}),
(inicio)-[:TRANSLATION_PT]->({name: 'Início'});

CREATE (queda:QUEDA:BJJ {name: "Queda"}),
(queda)-[:TRANSLATION_EN]->({name: 'Takedown'}),
(queda)-[:TRANSLATION_PT]->({name: 'Queda'});

CREATE (c:CHOCK:BJJ {name: "Estrangulamento"}),
(c)-[:TRANSLATION_EN]->({name: 'Chock'}),
(c)-[:TRANSLATION_PT]->({name: 'Estrangulamento'});

CREATE (c:CHOCK:BJJ {name: "Estrangulamento respiratório"}),
(c)-[:TRANSLATION_EN]->({name: 'Chock'}),
(c)-[:TRANSLATION_PT]->({name: 'Estrangulamento respiratório'});

CREATE (c:CHOCK:BJJ {name: "Estrangulamento circulatório"}),
(c)-[:TRANSLATION_EN]->({name: 'Chock'}),
(c)-[:TRANSLATION_PT]->({name: 'Estrangulamento circulatório'});

CREATE (r:RASPAGEM:BJJ {name: "Raspagem"}),
(r)-[:TRANSLATION_EN]->({name: 'Sweep'}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem'});

CREATE (pg:PASSAGEMDEGUARDA:BJJ {name: "Passagem de guarda"}),
(pg)-[:TRANSLATION_EN]->({name: ''}),
(pg)-[:TRANSLATION_PT]->({name: 'Passagem de guarda'});

CREATE (pg:PASSAGEMDEGUARDAEMPE:BJJ {name: "Passagem de guarda em pé"}),
(pg)-[:TRANSLATION_EN]->({name: ''}),
(pg)-[:TRANSLATION_PT]->({name: 'Passagem de guarda em pé'});


CREATE (ogoshi:QUEDA:BJJ {name:"O-goshi"}),
(ogoshi)-[:TRANSLATION_EN]->({name: 'O-goshi'}),
(ogoshi)-[:TRANSLATION_PT]->({name: 'O-goshi'}),
(ogoshi)-[:SCORE]->({score: 2}),
(ogoshi)-[:INFO_PT]->({desc: 'Entrada normal, abraça a cintura.'});

CREATE (osotogari:QUEDA:BJJ {name:"Osotogari"}),
(osotogari)-[:TRANSLATION_EN]->({name: 'Osotogari'}),
(osotogari)-[:TRANSLATION_PT]->({name: 'Osotogari'}),
(osotogari)-[:SCORE]->({score: 2}),
(osotogari)-[:INFO_PT]->({desc: 'lapela esquerda dele'});

CREATE (sotoogari:QUEDA:BJJ {name:"Soto-O-Gari"}),
(sotoogari)-[:TRANSLATION_EN]->({name: 'Soto-O-Gari'}),
(sotoogari)-[:TRANSLATION_PT]->({name: 'Soto-O-Gari'}),
(sotoogari)-[:SCORE]->({score: 2}),
(sotoogari)-[:INFO_PT]->({desc: 'lapela direita dele'});

CREATE (seoinage:QUEDA:BJJ {name:"Seoinage"}),
(seoinage)-[:TRANSLATION_EN]->({name: 'Seoinage'}),
(seoinage)-[:TRANSLATION_PT]->({name: 'Seoinage'}),
(seoinage)-[:SCORE]->({score: 2}),
(seoinage)-[:INFO_PT]->({desc: 'Entrada normal com cotovelo debaixo do braço direito dele. Mão na lapela esquerda dele.'});

CREATE (ippon:QUEDA:BJJ {name:"Ippon Seoinage"}),
(ippon)-[:TRANSLATION_EN]->({name: 'Ippon Seoinage'}),
(ippon)-[:TRANSLATION_PT]->({name: 'Ippon Seoinage'}),
(ippon)-[:SCORE]->({score: 2}),
(ippon)-[:INFO_PT]->({desc: 'Entra com o braço de baixo do suvaco dele.'});

CREATE (koshi:QUEDA:BJJ {name:"Koshi Goruma"}),
(koshi)-[:TRANSLATION_EN]->({name: 'Koshi Goruma'}),
(koshi)-[:TRANSLATION_PT]->({name: 'Koshi Goruma'}),
(koshi)-[:SCORE]->({score: 2}),
(koshi)-[:INFO_PT]->({desc: 'Entrada normal, abraça o pescoço.'});

CREATE (singleleg:QUEDA:BJJ {name:"Single leg"}),
(singleleg)-[:TRANSLATION_EN]->({name: 'Single leg'}),
(singleleg)-[:TRANSLATION_PT]->({name: 'Single leg'}),
(singleleg)-[:SCORE]->({score: 2}),
(singleleg)-[:INFO_PT]->({desc: ''});

CREATE (dl:QUEDA:BJJ {name:"Baiana"}),
(dl)-[:TRANSLATION_EN]->({name: 'Double leg'}),
(dl)-[:TRANSLATION_PT]->({name: 'Baiana'}),
(dl)-[:SCORE]->({score: 2}),
(dl)-[:INFO_PT]->({desc: ''});

CREATE (b:QUEDA:BJJ {name:"Balão"}),
(b)-[:TRANSLATION_EN]->({name: 'Balão'}),
(b)-[:TRANSLATION_PT]->({name: 'Balão'}),
(b)-[:SCORE]->({score: 2}),
(b)-[:INFO_PT]->({desc: ''});

CREATE (marote:QUEDA:BJJ {name:"Marote seionage"}),
(marote)-[:TRANSLATION_EN]->({name: 'Marote seionage'}),
(marote)-[:TRANSLATION_PT]->({name: 'Marote seionage'}),
(marote)-[:SCORE]->({score: 2}),
(marote)-[:INFO_PT]->({desc: 'Mesma entrada, entra com o cotovelo direito de baixo do braço, agaixa e projeta.'});

CREATE (m:MONTADA:BJJ {name:"Montada"}),
(m)-[:TRANSLATION_EN]->({name: ''}),
(m)-[:TRANSLATION_PT]->({name: 'Montada'}),
(m)-[:SCORE]->({score: 4}),
(m)-[:INFO_PT]->({desc: ''});

CREATE (c:CONTROLELATERAL:BJJ {name:"Controle lateral"}),
(c)-[:TRANSLATION_EN]->({name: 'Side control'}),
(c)-[:TRANSLATION_PT]->({name: 'Controle Lateral'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:CONTROLELATERAL:BJJ {name:"100kg"}),
(c)-[:TRANSLATION_EN]->({name: '100kg'}),
(c)-[:TRANSLATION_PT]->({name: '100kg'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:CONTROLELATERAL:BJJ {name:"Hon kesa gatame"}),
(c)-[:TRANSLATION_EN]->({name: 'Hon kesa gatame'}),
(c)-[:TRANSLATION_PT]->({name: 'Hon kesa gatame'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});


CREATE (c:JB:BJJ {name:"Joelho na barriga"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Joelho na barriga'}),
(c)-[:SCORE]->({score: 2}),
(c)-[:INFO_PT]->({desc: 'Joelho posicionado logo abaixo do plexo, outra perna esticada, longe do alcance do openente.'});

CREATE (c:FIN:BJJ {name:"Arm-lock"}),
(c)-[:TRANSLATION_EN]->({name: 'Arm-lock'}),
(c)-[:TRANSLATION_PT]->({name: 'Arm-lock'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Arm-lock reto"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Arm-lock reto'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Relóginho"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Relóginho'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Kimura"}),
(c)-[:TRANSLATION_EN]->({name: 'Kimura'}),
(c)-[:TRANSLATION_PT]->({name: 'Kimura'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Americana"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Americana'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Mata leão"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Mata leão'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da montada 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem da montada 1'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: 'Domina braço e perna de um lado, dá uma barrigada para este lado. Cai na guarda. Faz passagem.'});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da montada 2"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem da montada 2'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: 'Dá uma barrigada para frente, afunda, domina as pernas do oponente com os dois braços e gira ele. Depois faz a passagem para o 100kg.'});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da montada supinando"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem da montada supinando'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: 'Barrigada, mãos no quadril do oponente, supina ele, pé de baixo da coxa (?), empura para frente. Cai na guarda borboleta.'});

CREATE (r:PASSAGEMDEGUARDA:BJJ {name:"Passagem de guarda 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Passagem de guarda 1'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'Joelho no cox, estica perna...'});

CREATE (r:PASSAGEMDEGUARDA:BJJ {name:"Passagem da guarda andando para trás"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Passagem da guarda andando para trás'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'Gruda o quadril no chão com as duas mão e espeta os cotovelos nas cochas, da uma passo para trás e passa sem tirar as mãos.'});

CREATE (r:PASSAGEMDEGUARDAEMPE:BJJ {name:"Break"}),
(r)-[:TRANSLATION_EN]->({name: 'Break'}),
(r)-[:TRANSLATION_PT]->({name: 'Break'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'Domina pé com mão oposta e a outra mão dimina o braço do oponente, gira o oponente.'});

CREATE (r:PASSAGEMDEGUARDAEMPE:BJJ {name:"Espetando o joelho"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Espetando o joelho'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'Domina pernas, gruda um lado no chão, pões o joelho oposto por cima da perna e escorrega.'});

CREATE (r:PASSAGEMDEGUARDAEMPE:BJJ {name:"Emborcando"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Emborcando'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: '?????'});

CREATE (r:GUARDA:BJJ {name:"Guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: 'Faz guarda com as pernas.'});

CREATE (r:GUARDA:BJJ {name:"Puxa na guarda fechada"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Puxa na guarda fechada'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Guarda aberta"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda aberta'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Guarda fechada"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda fechada'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Meia guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Meia guarda'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem 1'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem 100kg 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem 100kg 1'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Repor guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Repor guarda'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem 1 da meia guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem 1 da meia guarda'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: 'Desce o máximo que puder, apoiando um hombro no chão e o outro no peito do oponente. Pega o pé do lado direito e entrega para sua mão esquerda que virá pela lateral dele. Apóa a mão direita e levanta.'});

OPTIONAL MATCH (bjj:MA {name: "Brazilian Jiu-Jitsu"}), (inicio:BJJ {name: "Início"})
CREATE ((bjj)-[:TO {p: 'passador'}]->(inicio));

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"O-goshi"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Osotogari"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Soto-O-Gari"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Seoinage"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Ippon Seoinage"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Koshi Goruma"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Single leg"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Baiana"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Balão"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Marote seionage"})
CREATE (inicio)-[to:TO {score: 2, p: 'passador'}]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"O-goshi"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Osotogari"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Soto-O-Gari"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Seoinage"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Ippon Seoinage"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Koshi Goruma"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Single leg"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Baiana"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Balão"})
CREATE (q)-[:IS]->(queda);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Marote seionage"})
CREATE (q)-[:IS]->(queda);




OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (q:QUEDA {name:"Balão"})
CREATE (q)-[to:TO {score: 4, p: 'passador'}]->(m);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (jb:JB {name:"Joelho na barriga"})
CREATE (jb)-[to:TO {score: 4, p: 'passador'}]->(m);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"100kg"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"100kg"}), (q:QUEDA {name:"Baiana"})
CREATE (q)-[to:TO {score: 5, p: 'passador', info_pt: 'Abraça as pernas e sobe fazendo peso até chegar no 100kg'}]->(c);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"100kg"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (q)-[to:TO {score: 5, p: 'passador', info_pt: ''}]->(c);

OPTIONAL MATCH (c:FIN {name:"Arm-lock reto"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (q)-[to:TO {p: 'passador'}]->(c);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (alr:FIN {name:"Arm-lock reto"})
CREATE (f)-[:IS]->(alr);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (alr:FIN {name:"Arm-lock reto"})
CREATE (alr)-[:TO {p: 'passador'}]->(f);


OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (q:QUEDA {name:"O-goshi"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (q:QUEDA {name:"Osotogari"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (q:QUEDA {name:"Soto-O-Gari"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (q:QUEDA {name:"Seoinage"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (q:QUEDA {name:"Ippon Seoinage"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (alr:FIN {name:"Arm-lock reto"}), (jb:JB {name:"Joelho na barriga"})
CREATE (jb)-[:TO {p: 'passador'}]->(alr);


OPTIONAL MATCH (a:FIN {name:"Arm-lock"}), (q:QUEDA {name:"O-goshi"})
CREATE (q)-[:TO {p: 'passador'}]->(a);

OPTIONAL MATCH (a:FIN {name:"Arm-lock"}), (q:QUEDA {name:"Koshi Goruma"})
CREATE (q)-[:TO {p: 'passador'}]->(a);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (al:FIN {name:"Arm-lock"})
CREATE (f)-[:IS]->(al);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (al:FIN {name:"Arm-lock"})
CREATE (al)-[:TO {p: 'passador'}]->(f);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (al:FIN {name:"Arm-lock"})
CREATE (m)-[:TO {p: 'passador'}]->(al);


OPTIONAL MATCH (f:FIN {name:"Finalização"}), (r:FIN {name:"Relóginho"})
CREATE (f)-[:IS]->(r);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (r:FIN {name:"Relóginho"})
CREATE (r)-[:TO {p: 'passador'}]->(f);

OPTIONAL MATCH (r:FIN {name:"Relóginho"}), (k:CONTROLELATERAL {name:"100kg"})
CREATE (k)-[:TO {p: 'passador'}]->(r);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (k:FIN {name:"Kimura"})
CREATE (f)-[:IS]->(k);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (k:FIN {name:"Kimura"})
CREATE (k)-[:TO {p: 'passador'}]->(f);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (k:FIN {name:"Kimura"})
CREATE (k)-[:TO {p: 'guardeiro'}]->(f);

OPTIONAL MATCH (k:FIN {name:"Kimura"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (kg)-[:TO {p: 'passador'}]->(k);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (a:FIN {name:"Americana"})
CREATE (f)-[:IS]->(a);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (a:FIN {name:"Americana"})
CREATE (a)-[:TO {p: 'passador'}]->(f);

OPTIONAL MATCH (a:FIN {name:"Americana"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (kg)-[:TO {p: 'passador'}]->(a);

OPTIONAL MATCH (c:CHOCK {name:"Estrangulamento"}), (cc:CHOCK {name:"Estrangulamento circulatório"})
CREATE (cc)-[:IS]->(c);

OPTIONAL MATCH (c:CHOCK {name:"Estrangulamento"}), (cr:CHOCK {name:"Estrangulamento respiratório"})
CREATE (cr)-[:IS]->(c);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (ml:FIN {name:"Mata leão"})
CREATE (f)-[:IS]->(ml);

OPTIONAL MATCH (f:FIN {name:"Finalizado"}), (ml:FIN {name:"Mata leão"})
CREATE (ml)-[:TO {p: 'passador'}]->(f);

OPTIONAL MATCH (cc:CHOCK {name:"Estrangulamento circulatório"}), (ml:FIN {name:"Mata leão"})
CREATE (ml)-[:IS]->(cc);

OPTIONAL MATCH (rasp:RASPAGEM {name:"Raspagem"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
CREATE (r)-[:IS]->(rasp);

OPTIONAL MATCH (rasp:RASPAGEM {name:"Raspagem"}), (r:RASPAGEM {name:"Raspagem da montada 2"})
CREATE (r)-[:IS]->(rasp);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
CREATE (m)-[to:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada 2"})
CREATE (m)-[to:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada supinando"})
CREATE (m)-[to:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da montada 2"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (r)-[:TO {p: 'guardeiro'}]->(kg);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"})
CREATE (pg)-[:IS]->(pass);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (pg)-[:TO {score: 3, p: 'passador'}]->(kg);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
CREATE (r)-[:TO {p: 'passador'}]->(pg);

OPTIONAL MATCH (k:FIN {name:"Kimura"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
CREATE (r)-[:TO {p: 'guardeiro'}]->(k);


OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"})
CREATE (pg)-[:IS]->(pass);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (pg)-[:TO {score: 3, p: 'passador'}]->(kg);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
CREATE (r)-[:TO {p: 'passador'}]->(pg);

OPTIONAL MATCH (b:PASSAGEMDEGUARDAEMPE {name:"Break"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (b)-[:IS]->(pe);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (b:PASSAGEMDEGUARDAEMPE {name:"Break"})
CREATE (inicio)-[:TO {score: 3, p: 'passador'}]->(b);

OPTIONAL MATCH (b:PASSAGEMDEGUARDAEMPE {name:"Break"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (b)-[:TO {p: 'passador'}]->(kg);

OPTIONAL MATCH (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (ej)-[:IS]->(pe);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"})
CREATE (inicio)-[:TO {score: 3, p: 'passador'}]->(ej);

OPTIONAL MATCH (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (ej)-[:TO {p: 'passador'}]->(kg);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (e)-[:IS]->(pe);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"})
CREATE (inicio)-[:TO {score: 3, p: 'passador'}]->(e);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (e)-[:TO {p: 'passador'}]->(kg);



OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (gf)-[:IS]->(g);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"Guarda aberta"})
CREATE (ga)-[:IS]->(g);

OPTIONAL MATCH (gf:GUARDA {name:"Guarda fechada"}), (pg:GUARDA {name:"Puxa na guarda fechada"})
CREATE (pg)-[:IS]->(gf);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (pg:GUARDA {name:"Puxa na guarda fechada"})
CREATE (inicio)-[:TO {score: 0, p: 'guardeiro'}]->(pg);

OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (k:FIN {name:"Kimura"})
CREATE (pg)-[:TO {score: 0, p: 'guardeiro'}]->(k);

OPTIONAL MATCH (rasp:RASPAGEM {name:"Raspagem"}), (r:RASPAGEM {name:"Raspagem 1"})
CREATE (r)-[:IS]->(rasp);

OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (r:GUARDA {name:"Guarda fechada"})
CREATE (pg)-[:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 1"}), (m:MONTADA {name:"Montada"})
CREATE (r)-[:TO {score: 4, p: 'guardeiro'}]->(m);

OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (pga:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"})
CREATE (pg)-[:TO {p: 'passador'}]->(pga);

OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (pg1:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"})
CREATE (pg)-[:TO {p: 'passador'}]->(pg1);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 100kg 1"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (kg)-[:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 100kg 1"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (r)-[:TO {p: 'passador'}]->(kg);

OPTIONAL MATCH (kg:CONTROLELATERAL {name:"100kg"}), (r:GUARDA {name:"Repor guarda"})
CREATE (kg)-[:TO {p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:GUARDA {name:"Repor guarda"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (r)-[:TO {p: 'guardeiro'}]->(gf);

OPTIONAL MATCH (k:FIN {name:"Kimura"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (gf)-[:TO {p: 'guardeiro'}]->(k);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 1"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (gf)-[:TO {p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:GUARDA {name:"Repor guarda"}), (mg:GUARDA {name:"Meia guarda"})
CREATE (r)-[:TO {p: 'guardeiro'}]->(mg);

OPTIONAL MATCH (mg:GUARDA {name:"Meia guarda"}), (r:RASPAGEM {name:"Raspagem 1 da meia guarda"})
CREATE (mg)-[:TO {score: 2, p: 'guardeiro'}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 1 da meia guarda"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (r)-[:TO {p: 'passador'}]->(kg);

:commit

:begin
MATCH ()-[t:TO]->()
SET t.score = t.score;

OPTIONAL MATCH (start:BJJ { name: 'Início' }),(end:BJJ { name: 'Finalizado' }), p = shortestPath((start)-[:TO*]-(end))
RETURN p;

MATCH (start:BJJ {name: 'Início'}), (end:BJJ {name: 'Finalizado'})
CALL apoc.algo.dijkstra(start, end, 'TO', 'score') YIELD path, weight
RETURN path, weight

:commit