// Jiu-jitsu graph (c) by Felipe Cavani <fcavani@gmail.com>
//
// Jiu-jitsu graph is licensed under a
// Creative Commons Attribution-NonCommercial 4.0 International License.
//
// You should have received a copy of the license along with this
// work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.

// Observações:
//
// Isto é apenas um curiosidade, uma visão de um iniciante na arte,
// logo falha e incompleta.
// Isto não substitui a prática de Jiu-jitsu em uma academia adequada.


// Todo:
// - Passador de costas na meia guarda, guardeiro pega as costas...
// - Pontuação aonde colocar? Qual aresta?

// Clean up data base

:begin

// MATCH (n)
MATCH (n)-[r]->()
DELETE n, r;

:commit

:begin

// Create

CREATE (ma:MA {name: "Artes Marciais"}),
(ma)-[:TRANSLATION_EN]->({name: ''}),
(ma)-[:TRANSLATION_PT]->({name: "Artes Marciais"});

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
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Estrangulamento respiratório'});

CREATE (c:CHOCK:BJJ {name: "Estrangulamento circulatório"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
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

CREATE (singleleg:QUEDA:BJJ {name:"Single leg pegando alto a perna"}),
(singleleg)-[:TRANSLATION_EN]->({name: ''}),
(singleleg)-[:TRANSLATION_PT]->({name: 'Single leg pegando alto a perna'}),
(singleleg)-[:SCORE]->({score: 2}),
(singleleg)-[:INFO_PT]->({desc: 'puxa, pega a perna que está adiante, coloca ela no meio das suas pernas ou de baixo do braço, apoia mão atrás do joelho e gira para o outro lado'});

CREATE (singleleg:QUEDA:BJJ {name:"Single leg pegando a perna em baixo"}),
(singleleg)-[:TRANSLATION_EN]->({name: ''}),
(singleleg)-[:TRANSLATION_PT]->({name: 'Single leg pegando a perna em baixo'}),
(singleleg)-[:SCORE]->({score: 2}),
(singleleg)-[:INFO_PT]->({desc: 'Mão direita na gola e esquerda no outro cotovelo pegando o pano, puxa ele para frente fazendo a perna esquerda dele vir para frente, trava este pé com o seu pé esquerdo, mão direita desce pela perna esquerda para pegar bem no calcanhar, puxa a perna para o meio das suas pernas, mão esquerda vai lá no joelho, cabeça na barriga dele voltada para dentro, ajoelha empurando ele para traz.'});

CREATE (dl:QUEDA:BJJ {name:"Baiana"}),
(dl)-[:TRANSLATION_EN]->({name: 'Double leg'}),
(dl)-[:TRANSLATION_PT]->({name: 'Baiana'}),
(dl)-[:SCORE]->({score: 2}),
(dl)-[:INFO_PT]->({desc: 'entrada da baiana, abaixa, agraça as duas perna acima do joelho e rosto de lado com a orelha encostada no umbigo dele e empura.'});

CREATE (b:QUEDA:BJJ {name:"Balão"}),
(b)-[:TRANSLATION_EN]->({name: 'Balão'}),
(b)-[:TRANSLATION_PT]->({name: 'Balão'}),
(b)-[:SCORE]->({score: 2}),
(b)-[:INFO_PT]->({desc: 'pegada no pano do pulso, um pé na virilha, puxa, deita, outro pé na virilha...'});

CREATE (marote:QUEDA:BJJ {name:"Marote seionage"}),
(marote)-[:TRANSLATION_EN]->({name: 'Marote seionage'}),
(marote)-[:TRANSLATION_PT]->({name: 'Marote seionage'}),
(marote)-[:SCORE]->({score: 2}),
(marote)-[:INFO_PT]->({desc: 'Mesma entrada, entra com o cotovelo direito de baixo do braço, agaixa e projeta.'});

CREATE (m:MONTADA:BJJ {name:"Montada"}),
(m)-[:TRANSLATION_EN]->({name: ''}),
(m)-[:TRANSLATION_PT]->({name: 'Montada'}),
(m)-[:SCORE]->({score: 4}),
(m)-[:INFO_PT]->({desc: 'monta em cima da barriga dele com as suas pernas em cada lateral, avança até chegar perto do pescoço e os braços dele ficarem esticados na sua frente.'});

CREATE (c:CONTROLELATERAL:BJJ {name:"Controle lateral"}),
(c)-[:TRANSLATION_EN]->({name: 'Side control'}),
(c)-[:TRANSLATION_PT]->({name: 'Controle Lateral'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:CONTROLELATERAL:BJJ {name:"100kg"}),
(c)-[:TRANSLATION_EN]->({name: '100kg'}),
(c)-[:TRANSLATION_PT]->({name: '100kg'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: 'mão esquerda por baixo do pescoço, direita segurando na calça para não fugir, perna direita com o joelho grudado nele e esquerda esticada'});

CREATE (c:CONTROLELATERAL:BJJ {name:"Hon kesa gatame"}),
(c)-[:TRANSLATION_EN]->({name: 'Hon kesa gatame'}),
(c)-[:TRANSLATION_PT]->({name: 'Hon kesa gatame'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: 'perna direita para frente, esquerda esticada para trás para ele não fugir, braço esquerdo segurando o braço direito dele e o esquerdo segurando para não subir'});

CREATE (c:CONTROLELATERAL:BJJ {name:"Hon kesa gatame para atrás"}),
(c)-[:TRANSLATION_EN]->({name: 'Hon kesa gatame para atrás'}),
(c)-[:TRANSLATION_PT]->({name: 'Hon kesa gatame para atrás'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:CONTROLELATERAL:BJJ {name:"Norte-sul"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Norte-sul'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: 'cabeça por cima da cabeça dele, encostando no plexo, braços enpurando o braço dele para cima dele e bem junto ao corpo dele, minha perna esticada ou encolhida.'});

CREATE (c:JB:BJJ {name:"Joelho na barriga"}),
(c)-[:TRANSLATION_EN]->({name: 'Knee on belly'}),
(c)-[:TRANSLATION_PT]->({name: 'Joelho na barriga'}),
(c)-[:SCORE]->({score: 2}),
(c)-[:INFO_PT]->({desc: 'Joelho posicionado logo abaixo do plexo, outra perna esticada ou com o pé inteiro no chão, longe do alcance do openente.'});

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
(c)-[:SCORE]->({score: 2}),
(c)-[:INFO_PT]->({desc: ['Oponente no 4 apoios. Entra com o braço direito por baixo do braço esquerdo dele e pega na gola dele. Sei peito sobre as costas dele mais para o lado do pescoço. Põe a testa no chão deixando o quadri paralelo ao chão. Se não pegar gira como o ponteiro de um relógio.', '100kg ???']});

CREATE (c:FIN:BJJ {name:"Kimura"}),
(c)-[:TRANSLATION_EN]->({name: 'Kimura'}),
(c)-[:TRANSLATION_PT]->({name: 'Kimura'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (c:FIN:BJJ {name:"Americana"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Americana'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: 'Sua mão esquerda pega no pulso do braço esquerdo dele, coloca o seu cotovelo na orelha dele. Seu braço direito vem por baixo do braço esquerdo dele e pega no seu braço esquerdo. Traz o seu braço esquerdo para cima. ???'});

CREATE (c:FIN:BJJ {name:"Mata leão"}),
(c)-[:TRANSLATION_EN]->({name: ''}),
(c)-[:TRANSLATION_PT]->({name: 'Mata leão'}),
(c)-[:SCORE]->({score: 0}),
(c)-[:INFO_PT]->({desc: ''});

CREATE (r:FIN:BJJ {name:"Godoi Chock"}),
(r)-[:TRANSLATION_EN]->({name: 'Godoi Chock'}),
(r)-[:TRANSLATION_PT]->({name: 'Godoi Chock'}),
(r)-[:AUTHOR]->({name: 'Roberto Godoi'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ['Oponente no 4 apoios, você no norte-sul. Mão direita entra junto ao pescoço e pega na gola direita dele com 4 dedos para dentro. Põem a cabeça entre a perna e o braço dele no lado direito dele. Empurra e agara a perda direita dele. Vira colocando-o de barriga para cima. Se não pegou, puxa a gola (ou mexe o pulso???).']});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da montada"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem da montada'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 2}),
(r)-[:INFO_PT]->({desc: ['Domina braço e perna de um lado, dá uma barrigada para este lado. Cai na guarda. Faz passagem.', 'Dá uma barrigada para frente, afunda, domina as pernas do oponente com os dois braços e gira ele. Depois faz a passagem para o 100kg.']});

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
(r)-[:INFO_PT]->({desc: 'Domina pernas, gruda um lado no chão, pões o joelho oposto depois da perna no chão e panturilha na perna e escorrega.'});

CREATE (r:PASSAGEMDEGUARDAEMPE:BJJ {name:"Emborcando"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Emborcando'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'TODO'});

CREATE (r:PASSAGEMDEGUARDAEMPE:BJJ {name:"Passagem de guarda Godoi"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'assagem de guarda Godoi'}),
(r)-[:AUTHOR]->({name: 'Roberto Godoi'}),
(r)-[:SCORE]->({score: 3}),
(r)-[:INFO_PT]->({desc: 'Livra uma das pernas do gancho, domina gola direita dele com a mão direita sua, coloca o joelho sobre a barriga do adversário, escorrega o joelho para o chão e deixa o pé prendendo a perna dele.'});

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

CREATE (r:GUARDA:BJJ {name:"Guarda arranha"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda arranha'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Guarda borboleta"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda borboleta'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"De La Riva"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'De La Riva'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:GUARDA:BJJ {name:"Guarda X"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Guarda X'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem 1'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: 'Mão direita segura pelo pano a mão esquerda dele, mão esquerda(?) pega na gola, abre guarda, fuga de quadril, perna direita rente a cintura dele, perna esquerda calçando na lateral, "chuta" com a direita e monta'});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem 100kg 1"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Raspagem 100kg 1'}),
(r)-[:SCORE]->({score: 2}),
(r)-[:INFO_PT]->({desc: 'TODO'});

CREATE (r:GUARDA:BJJ {name:"Repor guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Repor guarda'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:INFO_PT]->({desc: ''});

CREATE (x:RASPAGEM:BJJ {name:"Raspagem da meia guarda"}),
(x)-[:TRANSLATION_EN]->({name: ''}),
(x)-[:TRANSLATION_PT]->({name: 'Raspagem da meia guarda'}),
(x)-[:SCORE]->({score: 2}),
(x)-[:VARIACOES]->({varicoes: 1}),
(x)-[:INFO_PT]->({desc: ['Desce o máximo que puder, apoiando um hombro no chão e o outro no peito do oponente. Pega o pé do lado direito e entrega para sua mão esquerda que virá pela lateral dele. Apóa a mão direita e levanta.']});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da meia guarda com lapela"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Raspagem da meia guarda com lapela"}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 2}),
(r)-[:INFO_PT]->({desc: ['Lapela direita para mão esquerda por cima, pega calça do lado direito, junta braço esquerdo travando esgrima dele, inverte guarda e raspa.', 'Mesma coisa da anterior, mas ele estica a perna direita dele, perna direita vai em gancho perto do joelho, perna esquerda protege lá perto do pé dele, raspa para a sua direita']});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da meia guarda profunda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Raspagem da meia guarda profunda"}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ['Ganha espaço para colocar a esgrima no lado esquerdo, entra com a perna colocando a parte da canela na bariga dele, perna dobrada, entra para baixo dele e abraça a coxa direita dele passando em diagonal pelo gluteo dele, empura ele para frente, empura o pé dele com a direita e pega ele com a mão esquerda, levanta com o ombro no peito dele e raspa-o para a direita, vai para o 100kg.']});

CREATE (r:RASPAGEM:BJJ {name:"Raspagem da meia guarda 1, 2 e 3"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Raspagem da meia guarda 1, 2 e 3"}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ['Passa a lapela por entre as pernas dele, manda ele para a frente, na meia guarda vira o corpo com os joelhos apontando para o lado oposto da guarda, mão direita no joelho dele e mão esquerda segurando a calça abaixo do joelho, com ajuda da perna vai com a perna dele três vezes para o lado esquerdo e com isso ele virará, sobe e faz 100kg.']});

CREATE (r:COSTAS:BJJ {name:"Ida para as costas a partir da meia guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Ida para as costas a partir da meia guarda"}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ["Meia guarda, fuga para a direita, estica os dois braços dele para atrás da sua cabeça, pega no pano dele (punho) direito, puxa este braço para direito, fuga para a esquerda, poem ganchos."]});

CREATE (r:COSTAS:BJJ {name:"Defesa ida para as costas a partir da meia guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Defesa ida para as costas a partir da meia guarda"}),
(r)-[:SCORE]->({score: 2}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ["Defende colocando o braço esquerdo para a direita. Troca pegada para a mão esquerda e abraça a perna com a direita. Raspa."]});

CREATE (r:PASSAGEMDEGUARDA:BJJ {name:"Passagem da meia guarda"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: "Passagem da meia guarda"}),
(r)-[:SCORE]->({score: 3}),
(r)-[:VARIACOES]->({variacoes: 3}),
(r)-[:INFO_PT]->({desc: ["Colocando a cabeça oposta a esgrima, planta da perna na guarda, levanta o quadril, se não tirar ajudar com o outro pé"]});

// Guarda????? Guarda tartaruga????
// Como eu chego aqui?????
CREATE (r:COSTAS:BJJ:QUATROAPOIOS {name:"Quatro apoios"}),
(r)-[:ALT_NOME]->({nome: ["guarda tartaruga"]}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Quatro apoios'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ['ajoelhado e com os cotovelos no chão']});

CREATE (r:BJJ:COSTAS {name:"Costas"}),
(r)-[:TRANSLATION_EN]->({name: ''}),
(r)-[:TRANSLATION_PT]->({name: 'Costas'}),
(r)-[:SCORE]->({score: 0}),
(r)-[:VARIACOES]->({variacoes: 1}),
(r)-[:INFO_PT]->({desc: ['Oponente de costas para você e ganchos colocados. Não cruzar pernas.']});



// Relations

// IS

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (m:MA {name:"Artes Marciais"})
CREATE (m)-[:IS]->(ma);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (q:QUEDA {name:"Queda"})
CREATE (ma)-[:IS]->(q);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (c:CONTROLELATERAL {name:"Controle lateral"})
CREATE (ma)-[:IS]->(c);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (f:FIN {name:"Finalização"})
CREATE (ma)-[:IS]->(f);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (rasp:RASPAGEM {name:"Raspagem"})
CREATE (ma)-[:IS]->(rasp);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"})
CREATE (ma)-[:IS]->(pass);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (g:GUARDA {name:"Guarda"})
CREATE (ma)-[:IS]->(g);

OPTIONAL MATCH (ma:MA {name:'Brazilian Jiu-Jitsu'}), (c:COSTAS {name:"Costas"})
CREATE (ma)-[:IS]->(c);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"O-goshi"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Osotogari"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Soto-O-Gari"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Seoinage"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Ippon Seoinage"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Koshi Goruma"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Single leg pegando alto a perna"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Single leg pegando a perna em baixo"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Baiana"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Balão"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (queda:QUEDA {name:"Queda"}), (q:QUEDA {name:"Marote seionage"})
CREATE (queda)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"100kg"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"Hon kesa gatame para atrás"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Controle lateral"}), (q:CONTROLELATERAL {name:"Norte-sul"})
CREATE (c)-[:IS]->(q);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (alr:FIN {name:"Arm-lock reto"})
CREATE (f)-[:IS]->(alr);


OPTIONAL MATCH (f:FIN {name:"Finalização"}), (al:FIN {name:"Arm-lock"})
CREATE (f)-[:IS]->(al);

OPTIONAL MATCH (c:CHOCK {name:"Estrangulamento"}), (f:FIN {name:"Finalização"})
CREATE (f)-[:IS]->(c);

OPTIONAL MATCH (c:CHOCK {name:"Estrangulamento"}), (cc:CHOCK {name:"Estrangulamento circulatório"})
CREATE (c)-[:IS]->(cc);

OPTIONAL MATCH (c:CHOCK {name:"Estrangulamento"}), (cr:CHOCK {name:"Estrangulamento respiratório"})
CREATE (c)-[:IS]->(cr);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (ml:FIN {name:"Mata leão"})
CREATE (f)-[:IS]->(ml);

OPTIONAL MATCH (ml:FIN {name:"Mata leão"}), (cc:CHOCK {name:"Estrangulamento circulatório"})
CREATE (cc)-[:IS]->(ml);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (r:FIN {name:"Relóginho"})
CREATE (f)-[:IS]->(r);

// Tipo de estrangulamento????
OPTIONAL MATCH (ml:FIN {name:"Relóginho"}), (cc:CHOCK {name:"Estrangulamento respiratório"})
CREATE (cc)-[:IS]->(ml);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (r:FIN {name:"Godoi Chock"})
CREATE (f)-[:IS]->(r);

// Tipo de estrangulamento????
OPTIONAL MATCH (ml:FIN {name:"Godoi Chock"}), (cc:CHOCK {name:"Estrangulamento respiratório"})
CREATE (cc)-[:IS]->(ml);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (a:FIN {name:"Americana"})
CREATE (f)-[:IS]->(a);

OPTIONAL MATCH (f:FIN {name:"Finalização"}), (k:FIN {name:"Kimura"})
CREATE (f)-[:IS]->(k);


OPTIONAL MATCH (rasp:RASPAGEM {name:"Raspagem"}), (r:RASPAGEM {name:"Raspagem da montada"})
CREATE (rasp)-[:IS]->(r);

OPTIONAL MATCH (rasp:RASPAGEM {name:"Raspagem"}), (r:RASPAGEM {name:"Raspagem 1"})
CREATE (rasp)-[:IS]->(r);

// OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"})
// CREATE (pg)-[:IS]->(pass);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"})
CREATE (pass)-[:IS]->(pg);

OPTIONAL MATCH (pass:PASSAGEMDEGUARDA {name:"Passagem de guarda"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (pass)-[:IS]->(pe);

OPTIONAL MATCH (b:PASSAGEMDEGUARDAEMPE {name:"Break"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (pe)-[:IS]->(b);

OPTIONAL MATCH (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (pe)-[:IS]->(ej);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (pe)-[:IS]->(e);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda Godoi"}), (pe:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda em pé"})
CREATE (pe)-[:IS]->(e);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (g)-[:IS]->(gf);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"Guarda aberta"})
CREATE (g)-[:IS]->(ga);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"Guarda borboleta"})
CREATE (g)-[:IS]->(ga);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"Guarda X"})
CREATE (g)-[:IS]->(ga);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"Guarda arranha"})
CREATE (g)-[:IS]->(ga);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (ga:GUARDA {name:"De La Riva"})
CREATE (g)-[:IS]->(ga);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (mg:GUARDA {name:"Meia guarda"})
CREATE (g)-[:IS]->(mg);

OPTIONAL MATCH (g:GUARDA {name:"Guarda"}), (qa:COSTAS {name:"Quatro apoios"})
CREATE (g)-[:IS]->(qa);

OPTIONAL MATCH (c:COSTAS {name:"Costas"}), (qa:COSTAS {name:"Quatro apoios"})
CREATE (c)-[:IS]->(qa);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda"})
CREATE (mg)-[:IS]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda com lapela"})
CREATE (mg)-[:IS]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda 1, 2 e 3"})
CREATE (mg)-[:IS]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda profunda"})
CREATE (mg)-[:IS]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:COSTAS {name: "Ida para as costas a partir da meia guarda"})
CREATE (mg)-[:IS]->(r);

OPTIONAL MATCH (cl:CONTROLELATERAL {name:"Controle lateral"}), (jb:JB {name:"Joelho na barriga"})
CREATE (cl)-[:IS]->(jb);


// Start

OPTIONAL MATCH (bjj:MA {name: "Brazilian Jiu-Jitsu"}), (inicio:BJJ {name: "Início"})
CREATE ((bjj)-[:TO {score: 0, p: 'passador', info_pt: ['']}]->(inicio));

// Falls

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"O-goshi"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'abraça cintura'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Osotogari"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Soto-O-Gari"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Seoinage"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'cotovelo de baixo da axila'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Ippon Seoinage"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Koshi Goruma"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Single leg pegando alto a perna"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Single leg pegando a perna em baixo"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Baiana"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: 'cabeça no umbigo'}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Balão"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (q:QUEDA {name:"Marote seionage"})
CREATE (inicio)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

// Movimentação

OPTIONAL MATCH (k:QUATROAPOIOS {name:"Quatro apoios"}), (c:COSTAS {name:"Costas"})
CREATE (k)-[:TO {score: 0, p: 'passador', info_pt: 'colocar os ganchos e virar'}]->(c);

// Transition from fall to stable control.

OPTIONAL MATCH (q:QUEDA {name:"Balão"}), (m:MONTADA {name:"Montada"})
CREATE (q)-[to:TO {score: 2, p: 'passador', info_pt: 'faz o balão e vem junto com ele para cair já montado'}]->(m);

OPTIONAL MATCH (q:QUEDA {name:"Baiana"}), (c:CONTROLELATERAL {name:"100kg"})
CREATE (q)-[to:TO {score: 2, p: 'passador', info_pt: 'Abraça as pernas e sobe fazendo peso até chegar no 100kg'}]->(c);

OPTIONAL MATCH (q:QUEDA {name:"O-goshi"}), (jb:JB {name:"Joelho na barriga"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (q:QUEDA {name:"Osotogari"}), (jb:JB {name:"Joelho na barriga"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (q:QUEDA {name:"Soto-O-Gari"}), (jb:JB {name:"Joelho na barriga"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (q:QUEDA {name:"Seoinage"}), (jb:JB {name:"Joelho na barriga"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (q:QUEDA {name:"Ippon Seoinage"}), (jb:JB {name:"Joelho na barriga"})
CREATE (q)-[:TO {score: 2}]->(jb);

OPTIONAL MATCH (q:QUEDA {name:"Single leg pegando a perna em baixo"}), (c:CONTROLELATERAL {name:"100kg"})
CREATE (q)-[:TO {score: 2}]->(c);

// Fall to finalization

OPTIONAL MATCH (q:QUEDA {name:"O-goshi"}), (a:FIN {name:"Arm-lock"})
CREATE (q)-[:TO {score: 2, p: 'passador'}]->(a);

OPTIONAL MATCH (q:QUEDA {name:"Koshi Goruma"}), (a:FIN {name:"Arm-lock"})
CREATE (q)-[:TO {score: 2, p: 'passador'}]->(a);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (al:FIN {name:"Arm-lock"})
CREATE (m)-[:TO {score: 4, p: 'passador', info_pt: 'TODO'}]->(al);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (al:FIN {name:"Americana"})
CREATE (m)-[:TO {score: 4, p: 'passador', info_pt: 'TODO'}]->(al);

// Side control

// Movimentação controle lateral

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Hon kesa gatame para atrás"}), (q:CONTROLELATERAL {name:"100kg"})
CREATE (c)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"100kg"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (c)-[to:TO {score: 0, p: 'passador', info_pt: 'inverte base, joelho em baixo do ombro dele'}]->(q);

OPTIONAL MATCH (q:CONTROLELATERAL {name:"Hon kesa gatame"}), (c:CONTROLELATERAL {name:"Norte-sul"})
CREATE (q)-[to:TO {score: 0, p: 'passador', info_pt: 'tira o braço do caminho'}]->(c);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"Norte-sul"}), (q:CONTROLELATERAL {name:"Hon kesa gatame"})
CREATE (c)-[to:TO {score: 0, p: 'passador', info_pt: 'TODO: Como?'}]->(q);

OPTIONAL MATCH (q:CONTROLELATERAL {name:"Hon kesa gatame"}), (c:CONTROLELATERAL {name:"100kg"})
CREATE (q)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(c);

OPTIONAL MATCH (c:CONTROLELATERAL {name:"100kg"}), (q:CONTROLELATERAL {name:"Hon kesa gatame para atrás"})
CREATE (c)-[to:TO {score: 0, p: 'passador', info_pt: ['']}]->(q);

// Side control finalizations

// Arm-lock

OPTIONAL MATCH (q:CONTROLELATERAL {name:"Hon kesa gatame"}), (c:FIN {name:"Arm-lock"})
CREATE (q)-[to:TO {score: 0, p: 'passador', info_pt: 'passa perna esqueda pela cabeça dele'}]->(c);

OPTIONAL MATCH (q:CONTROLELATERAL {name:"Hon kesa gatame"}), (c:FIN {name:"Arm-lock reto"})
CREATE (q)-[to:TO {score: 0, p: 'passador', info_pt: 'no braço direito quando este está no seu ombro direito'}]->(c);

OPTIONAL MATCH (alr:FIN {name:"Arm-lock reto"}), (f:FIN {name:"Finalizado"})
CREATE (alr)-[:TO {score: 0, p: 'passador'}]->(f);

OPTIONAL MATCH (al:FIN {name:"Arm-lock"}), (f:FIN {name:"Finalizado"})
CREATE (al)-[:TO {score: 0, p: 'passador'}]->(f);

// Relóginho

OPTIONAL MATCH (r:FIN {name:"Relóginho"}), (f:FIN {name:"Finalizado"})
CREATE (r)-[:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(f);

OPTIONAL MATCH (k:CONTROLELATERAL {name:"100kg"}), (r:FIN {name:"Relóginho"})
CREATE (k)-[:TO {score: 0, p: 'passador', info_pt: 'TODO'}]->(r);

OPTIONAL MATCH (k:QUATROAPOIOS {name:"Quatro apoios"}), (r:FIN {name:"Relóginho"})
CREATE (k)-[:TO {score: 0, p: 'passador', info_pt: ['']}]->(r);

// OPTIONAL MATCH (kg:CONTROLELATERAL {name:"100kg"}), (k:FIN {name:"Kimura"})
// CREATE (kg)-[:TO {score: 0, p: 'passador', info_pt: 'avançar corpo sobre o peito dele'}]->(k);

// Americana

OPTIONAL MATCH (a:FIN {name:"Americana"}), (f:FIN {name:"Finalizado"})
CREATE (a)-[:TO {score: 0, p: 'passador'}]->(f);

OPTIONAL MATCH (kg:CONTROLELATERAL {name:"100kg"}), (a:FIN {name:"Americana"})
CREATE (kg)-[:TO {score: 0, p: 'passador', info_pt: 'Hum??? TODO'}]->(a);

// Knee on belly

OPTIONAL MATCH (kg:CONTROLELATERAL {name:"100kg"}), (jb:JB {name:"Joelho na barriga"})
CREATE (kg)-[:TO {score: 2, p: 'passador', variacoes: 0, situacao: '', info_pt: ['']}]->(jb);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (alr:FIN {name:"Arm-lock reto"})
CREATE (jb)-[:TO {score: 0, p: 'passador', info_pt: 'mão esquerda dele no seu ombro direito, faz mão passar a altura do seu pescoço gira/empurra? cotovelo dele'}]->(alr);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (al:FIN {name:"Arm-lock"})
CREATE (jb)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: 'joelho na barriga com defesa', info_pt: ['Quando openente defende com as duas mão no seu joelho, entrar com a mão direita entre o braço e o corpo dele, perto da axila, passar perna esquerda pela cabeça dele, ir levantando-o com a mão direita, fazer giro e colocar perna esquerda com o joelho nas costas e a direita com a panturilha no rosto dele, com a mão que esta puxando o braço pegar a sua gola, perna esquerda sobe com a canela sobre a lateral do corpo dele, sentar, fexar as pernas sobre o braço deles, levantar a barriga e se ele mesmo assim não bater colocar o braço para uma das laterais do seu corpo.']}]->(al);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (m:MONTADA {name:"Montada"})
CREATE (jb)-[to:TO {score:4, p: 'passador', info_pt: 'segurando com o braço esquerdo o direito dele, faz o joelho na barriga'}]->(m);

OPTIONAL MATCH (jb:JB {name:"Joelho na barriga"}), (c:COSTAS {name:"Costas"})
CREATE (jb)-[:TO {score: 4, p: 'passador', variacoes: 1, situacao: 'joelho na barriga com defesa', info_pt: ['No 100kg pegar a lapela direita dele e passar por baixo do pescoço dele, fazer joelho na barriga (plantar os pés com a sola no chão fazendo uma base bem estável), pegar a manga direita dele com a sua mão direita, passar perna que está com o joelho na barriga para o meio das pernas dele e colocar todo o pé no chão, levantar ele puxando pela lapela e pela manga, cair para o lado da perna que já está com o gancho, esticar ele e colocar o outro gancho.']}]->(c);

// Kimura

OPTIONAL MATCH (k:FIN {name:"Kimura"}), (f:FIN {name:"Finalizado"})
CREATE (k)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['TODO']}]->(f);

OPTIONAL MATCH (k:FIN {name:"Kimura"}), (f:FIN {name:"Finalizado"})
CREATE (k)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['TODO, kimura,  guardeiro???']}]->(f);


// Chock

OPTIONAL MATCH (c:COSTAS {name:"Costas"}), (f:FIN {name:"Mata leão"})
CREATE (c)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(f);

OPTIONAL MATCH (ml:FIN {name:"Mata leão"}), (f:FIN {name:"Finalizado"})
CREATE (ml)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['mão esquerda com a palma para']}]->(f);

OPTIONAL MATCH (qa:QUATROAPOIOS {name:"Quatro apoios"}), (gc:FIN {name:"Godoi Chock"})
CREATE (qa)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(gc);

OPTIONAL MATCH (gc:FIN {name:"Godoi Chock"}), (f:FIN {name:"Finalizado"})
CREATE (gc)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(f);

// Mount sweep

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada"})
CREATE (m)-[to:TO {score: 4, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: 'pé esquerdo trava perna direita dele, segurar mão esquerda dele perto de você, sobre o peito, dar barrigada para esquerda'}]->(r);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada"})
CREATE (m)-[to:TO {score: 4, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: 'não solta pernas'}]->(r);

OPTIONAL MATCH (m:MONTADA {name:"Montada"}), (r:RASPAGEM {name:"Raspagem da montada supinando"})
CREATE (m)-[to:TO {score: 4, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['TODO']}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da montada"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (r)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da montada supinando"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (r)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);


// Passagem de guarda

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (pg)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

// TODO
// OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
// CREATE (r)-[:TO {p: 'passador'}]->(pg); monta -> raspagem da montada 1 -> guarda -> (passador ele) -> raspagem 1

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (pg)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

// OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
// CREATE (r)-[:TO {p: 'passador'}]->(pg);


OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (b:PASSAGEMDEGUARDAEMPE {name:"Break"})
CREATE (inicio)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(b);

OPTIONAL MATCH (b:PASSAGEMDEGUARDAEMPE {name:"Break"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (b)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"})
CREATE (inicio)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(ej);

OPTIONAL MATCH (ej:PASSAGEMDEGUARDAEMPE {name:"Espetando o joelho"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (ej)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"})
CREATE (inicio)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(e);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Emborcando"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (e)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (e:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda Godoi"})
CREATE (inicio)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(e);

OPTIONAL MATCH (e:PASSAGEMDEGUARDAEMPE {name:"Passagem de guarda Godoi"}), (kg:CONTROLELATERAL {name:"100kg"})
CREATE (e)-[:TO {score: 3, p: 'passador', variacoes: 1, situacao: '', info_pt: ['TODO: algo além do 100kg???']}]->(kg);


// Sweep

// TODO: To falando besteira, não cai na montada???
OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da montada"}), (gf:GUARDA:BJJ {name:"Guarda fechada"})
CREATE (r)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(gf);

// TODO: To falando besteira, não cai na montada???
OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da montada"}), (mg:GUARDA:BJJ {name:"Meia guarda"})
CREATE (r)-[:TO {score: 2, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(mg);

// OPTIONAL MATCH (k:FIN {name:"Kimura"}), (r:RASPAGEM {name:"Raspagem da montada 1"})
// CREATE (r)-[:TO {p: 'guardeiro'}]->(k);

// Guarda - as pernas :) - e raspagens

// OPTIONAL MATCH (gf:GUARDA {name:"Guarda fechada"}), (pg:GUARDA {name:"Puxa na guarda fechada"})
// CREATE (pg)-[:IS]->(gf);

OPTIONAL MATCH (inicio:BJJ {name: "Início"}), (pg:GUARDA {name:"Puxa na guarda fechada"})
CREATE (inicio)-[:TO {score: 0, p: 'guardeiro'}]->(pg);

// OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (k:FIN {name:"Kimura"})
// CREATE (pg)-[:TO {score: 0, p: 'guardeiro'}]->(k);

OPTIONAL MATCH (pg:GUARDA {name:"Puxa na guarda fechada"}), (r:GUARDA {name:"Guarda fechada"})
CREATE (pg)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(r); //TODO: 2 pontos ou 0, pg:GUARDA ou pg:QUEDA?

OPTIONAL MATCH (gf:GUARDA {name:"Guarda fechada"}), (r:RASPAGEM {name:"Raspagem 1"})
CREATE (gf)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['trazer ele bem colado a você']}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 1"}), (m:MONTADA {name:"Montada"})
CREATE (r)-[:TO {score: 2, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(m);

OPTIONAL MATCH (pg:GUARDA {name:"Guarda fechada"}), (pga:PASSAGEMDEGUARDA {name:"Passagem da guarda andando para trás"})
CREATE (pg)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(pga);

OPTIONAL MATCH (pg:GUARDA {name:"Guarda fechada"}), (pg1:PASSAGEMDEGUARDA {name:"Passagem de guarda 1"})
CREATE (pg)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(pg1);

// OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 100kg 1"}), (kg:CONTROLELATERAL {name:"100kg"})
// CREATE (kg)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['TODO']}]->(r);

// OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem 100kg 1"}), (kg:CONTROLELATERAL {name:"100kg"})
// CREATE (r)-[:TO {score: 2, p: 'passador', variacoes: 1, situacao: '', info_pt: ['TODO']}]->(kg);

OPTIONAL MATCH (kg:CONTROLELATERAL {name:"100kg"}), (r:GUARDA {name:"Repor guarda"})
CREATE (kg)-[:TO {score: 0, p: 'guardeiro', variacoes: 2, situacao: '', info_pt: ['Antebraço esquerdo encomodando o pescoço e mão direita no ombro dele, fuga de quadril para a esquerda, canela esquerda no peito dele e perna direita sobre as costas dele, então repõem a guarda fechada.',
"Igual a anterior mas vai para a meia guarda"]}]->(r);

OPTIONAL MATCH (r:GUARDA {name:"Repor guarda"}), (gf:GUARDA {name:"Guarda fechada"})
CREATE (r)-[:TO {score: 3, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(gf);

OPTIONAL MATCH (r:GUARDA {name:"Repor guarda"}), (mg:GUARDA {name:"Meia guarda"})
CREATE (r)-[:TO {score: 3, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(mg);

OPTIONAL MATCH (gf:GUARDA {name:"Guarda fechada"}), (k:FIN {name:"Kimura"})
CREATE (gf)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, info_pt: ['leva para as costas o braço dele, braço apontando para baixo']}]->(k);

// OPTIONAL MATCH (mg:GUARDA {name:"Meia guarda"}), (r:RASPAGEM {name:"Raspagem da meia guarda"})
// CREATE (mg)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da meia guarda"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (r)-[:TO {score: 2, p: 'passador', variacoes: 1, situacao: '', info_pt: ['pesando!!!']}]->(kg);

// 100kg

// OPTIONAL MATCH (kg:CONTROLELATERAL {name: "100kg"}), (f:FIN {name:""})
// CREATE (gf)-[:TO {score: 0, p: 'passador', info_pt: ['']}]->(f);

OPTIONAL MATCH (h:CONTROLELATERAL {name: "Hon kesa gatame para atrás"}), (f:FIN {name:"Arm-lock"})
CREATE (h)-[:TO {score: 0, p: 'passador', variacoes: 1, info_pt: ['Enquanto ele faz fuga de quadril, senta no ombro dele, pesca a mão com a perna direita, faz triângulo no braço dele, abaixa o braço para dar o arm-lock']}]->(f);

// Meia-guarda

// OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda"})
// CREATE (mg)-[:TO {score: 0, p: "guardeiro", variacoes: 1, info_pt:[""]}]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda com lapela"})
CREATE (mg)-[:TO {score: 0, p: "guardeiro", variacoes: 1, situacao: '', info_pt:["Pega lapela com a mão deita passa por cima das costas dele e entrega para a mão esquerda, fecha o cotovelo segurando o braço dele, inverte guarda e raspa para a esquerda."]}]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda com lapela"})
CREATE (mg)-[:TO {score: 0, p: "guardeiro", variacoes: 2, situacao: 'Oponente estica perna esquerda.', info_pt:["Se oponente estica perna esquerda. Coloca gancho na perna esquerda dele acima do joelho e joga ele para a direita sua."]}]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda 1, 2 e 3"})
CREATE (mg)-[:TO {score: 0, p: "guardeiro", variacoes: 1, situacao: ['']}]->(r);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (r:RASPAGEM {name: "Raspagem da meia guarda profunda"})
CREATE (mg)-[:TO {score: 0, p: "guardeiro", variacoes: 1, situacao: ''}]->(r);

OPTIONAL MATCH (r:RASPAGEM {name: "Raspagem da meia guarda com lapela"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (r)-[:TO {score: 2, p: 'passador', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (gf:GUARDA {name:"Meia guarda"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (gf)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: 'empurando com o pé'}]->(kg);

// OPTIONAL MATCH (gf:GUARDA {name:"Meia guarda"}), (kg:CONTROLELATERAL {name: "100kg"})
// CREATE (gf)-[:TO {score: 0, p: 'passador', variacoes: 1, situacao: '', info_pt: 'tirando o joelho fazendo 1, 2 com o pé'}]->(kg);

OPTIONAL MATCH (r:RASPAGEM {name:"Raspagem da meia guarda profunda"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (r)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

OPTIONAL MATCH (r:RASPAGEM {name: "Raspagem da meia guarda 1, 2 e 3"}), (kg:CONTROLELATERAL {name: "100kg"})
CREATE (r)-[:TO {score: 2, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: ['']}]->(kg);

// OPTIONAL MATCH (gf:GUARDA {name:"Meia guarda"}), (c:COSTAS {name:"Costas"})
// CREATE (gf)-[:TO {score: 0, p: 'guardeiro', variacoes: 1, situacao: '', info_pt: 'TODO'}]->(c);

OPTIONAL MATCH (mg:GUARDA {name:"Meia guarda"}), (r:COSTAS {name:"Ida para as costas a partir da meia guarda"})
CREATE (mg)-[:TO {score: 0, p: 'guardeiro', variacoes: 0, situacao: '', info_pt: ['']}]->(r);

OPTIONAL MATCH (mg:COSTAS {name:"Ida para as costas a partir da meia guarda"}), (c:COSTAS {name:"Costas"})
CREATE (mg)-[:TO {score: 6, p: 'guardeiro', variacoes: 0, situacao: '', info_pt: 'raspagem 2 mais 4 da ida para as costas'}]->(c);

OPTIONAL MATCH (mg:COSTAS {name:"Ida para as costas a partir da meia guarda"}), (c:COSTAS {name:"Defesa ida para as costas a partir da meia guarda"})
CREATE (mg)-[:TO {score: 6, p: 'guardeiro', variacoes: 0, situacao: '', info_pt: ['']}]->(c);

OPTIONAL MATCH (mg:COSTAS {name:"Defesa ida para as costas a partir da meia guarda"}), (c:CONTROLELATERAL {name:"100kg"})
CREATE (mg)-[:TO {score: 2, p: 'guardeiro', variacoes: 0, situacao: '', info_pt: ['']}]->(c);

OPTIONAL MATCH (mg:GUARDA {name: "Meia guarda"}), (pg:PASSAGEMDEGUARDA {name:"Passagem da meia guarda"})
CREATE (mg)-[:TO {score: 0, p: 'passador', variacoes: 0, situacao: '', info_pt: ['']}]->(mg);

OPTIONAL MATCH (pg:PASSAGEMDEGUARDA {name:"Passagem da meia guarda"}), (c:CONTROLELATERAL {name:"100kg"})
CREATE (mg)-[:TO {score: 3, p: 'passafor', variacoes: 0, situacao: '', info_pt: ['']}]->(c);

MATCH ()-[t:TO]->()
WHERE exists(t.score) AND t.score > 0
SET t.neg_score = -1 * t.score;

MATCH ()-[t:TO]->()
WHERE NOT exists(t.score) OR t.score = 0
SET t.neg_score = 0;

MATCH ()-[t:TO]->()
WHERE NOT exists(t.score)
SET t.score = 0;

:commit
