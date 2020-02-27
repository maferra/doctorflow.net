---
title: "Cálculo da dimensão de uma amostra - Parte II"
description: "O artigo pretende operacionalizar os conceitos do cálculo da dimensão de uma amostra, mediante dois cenários distintos: estimar o desempenho de um processo, tanto para o curto prazo, como para o longo prazo."
draft: false
authors:
 - racastro
categories:
 - six-sigma
tags:
 - erro-amostral
 - média
 - desvio-padrão
 - nível-sigma
 - capabilidade
images:
 - /img/articles/calculo-dim-21.png
 - /img/articles/calculo-dim-22.png
 - /img/articles/calculo-dim-23.png
 - /img/articles/calculo-dim-24.png
references:
 - Harry, M. (2003) Resolving the mysteries of six sigma. NY Times and Business Week.
---

## Problema

Será de senso-comum que é importante entender o nível de desempenho de um determinado processo, produto ou serviço, seja em termos de design, seja já durante o próprio ciclo de vida daquilo que se está a transacionar ou vender. Não só esta aferição pretende traduzir o nível de satisfação do cliente, como também o de se entender em que patamar de desempenho o negócio atualmente se situa. De entre as várias métricas e indicadores possíveis (seja por \\( \text{C}\_\\text{pk} \\), \\( \text{P}\_\\text{p} \\) ou pelo nível sigma) sabe-se que para dados de natureza contínua todas elas necessitam de uma estimativa do desvio-padrão do próprio processo (seja este ou real ou ao nível de previsão futura, via design).

Importa por isso estimar, por exemplo, dois tipos de nível sigma: o de curto prazo (\\( \text{Z}\_\\text{st} \\)) e o de longo prazo (\\( \text{Z}\_\\text{lt} \\)), simplesmente porque se o primeiro traduz o potencial máximo de desempenho que se pode esperar de um processo (legitimidade), sem se recorrer a nova tecnologia ou elevados investimentos, o segundo refere-se à verdadeira experiência do cliente. Como fazê-lo?

## Direção da Solução

Precisamos antes demais definir um pouco melhor os próprios conceitos de curto e de longo prazo.

Intuitivamente sabemos que algo de curto prazo terá uma janela temporal de dimensão menor quando a comparamos com o nível sigma de longo prazo. Aqui encontramos a primeira barreira porque quão curto é curto e quão longo é longo? Na expetativa de que a intuição seja suficiente costumamo-nos apoiar nos especialistas, na experiência e na própria dinâmica do negócio. Mas talvez possamos adicionar algo mais palpável a esta análise.

Antes de me adiantar na explicação, o leitor saberá também que ao desvio-padrão de curto ou longo prazo se associa uma outra variável, isto é, o modo como o próprio desvio padrão é calculado. Imagine-se que se recolhem amostras ao longo do tempo e em cada uma dessas amostras se obtêm subgrupos de 5, ou seja, 5 observações de cada vez, com instantes de tempo entre observações muito reduzidos.

Em termos de engenharia da qualidade estamos a criar a condição de apenas observarmos aquilo a que se chama de ruído branco, ou seja, as diferenças detetadas dentro de cada subgrupo. Estas diferenças são provenientes da variabilidade devido às causas comuns do processo, isto é, à variabilidade intra-amostral. Neste sentido, não estamos a considerar os eventuais desfasamentos a um valor nominal ou à própria média de todas as observações. Consequentemente, o desvio-padrão deste modo apurado é necessariamente menor e, por isso mesmo, se denomina desvio-padrão de curto prazo. Por outro lado, se tivermos em consideração todas variações não só intra-amostrais, mas também de amostra para amostra (variações inter-amostrais), o desvio-padrão apurado denomina-se longo prazo (para além de se ter deixado passar mais tempo para deixar o processo variar).

A partir do momento que conseguimos estimar cada uma destas variabilidades estaremos em condições de estimar o desempenho do processo tanto no curto como no longo prazo (esquecendo um pouco agora o possível cenário de estarmos a desenvolver o design de um novo produto ou serviço que ainda não chegou ao mercado).

## Caso Prático

Vamos assumir que recolhemos 20 amostras com subgrupos de dimensão 5 referente ao tempo decorrido até se atender uma chamada, num call center. Depois de se garantir que podemos, de facto, confiar nos dados – isto é, que o sistema de medição foi validado, a primeira coisa que queremos fazer para podermos vir a estimar o desempenho (capabilidade) do processo é entender se os dados são estáveis e se até seguem uma distribuição normal. A estabilidade dos dados pode ser operacionalmente aferida a partir de uma carta de controlo Xbar/S para o efeito. Não havendo pontos fora de controlo assume-se que o processo é estatisticamente estável (não se está a olhar para os padrões ditos de causa especial, mesmo quando os pontos estão dentro dos limites).

{{< article_image 0 "Carta de controlo Xbar/S para o tempo de atendimento das chamadas. O p-value quanto à normalidade de cada um dos conjuntos de pontos é, tanto para a média como para o desvio-padrão intra-amostral, superior a 0,1." >}}

### Estimativa do desvio-padrão de curto e longo prazo

Para estarmos seguros de que o número de amostras é adequado para estas estimativas vamos usar os dados originais registados e desenhar, ao longo do tempo, o desvio-padrão intra-amostral acumulativo. Ou seja, para a primeira amostra o desvio-padrão das 5 observações foi de 3,2 segundos. Para a segunda amostra o valor foi de 7,4 segundos, para a terceira amostra foi de 3,5 segundos, etc.

Com estes valores vamos calcular o desvio-padrão (pooled) acumulativo, sempre que adicionarmos mais uma amostra. Assim, o primeiro ponto no gráfico são os próprios 3,2 segundos. O segundo ponto já é a média dos dois primeiros valores, isto é, 5,3 segundos. E, o terceiro ponto será a média dos três primeiros valores, ou seja, 4,7. Estendendo o raciocínio para todas as amostras obtém-se o seguinte gráfico:

{{< article_image 1 "Evolução da estimativa do desvio-padrão ao longo do tempo (sempre que se adiciona mais uma amostra)." >}}

Não parece haver dúvidas que o processo está totalmente estabilizado para que se possa estimar o desvio-padrão de curto prazo e, com isso, estimar o nível sigma de curto prazo. O desvio-padrão de curto prazo é dado pela fórmula:

\\[ \\hat{\\sigma} = \\frac{\\bar{S}}{c_{4}} \\Leftrightarrow \\hat{\\sigma} = \\frac{4,49}{0,94} \\Leftrightarrow \\hat{\\sigma} = 4,78 \\]

\\( c_{4} \\) é apenas um valor que vem em função da dimensão do subgrupo e que serve para corrigir um enviesamento da estimativa do desvio-padrão. Se, por exemplo, o limite de especificação superior deste processo for de 20 segundos e o valor nominal de 10 segundos, então torna-se trivial o cálculo do nível sigma de curto prazo (\\( \text{Z}\_\\text{st} \\) = 2,1):

\\[ P \\left( X > 20 \\right) = P \\left( Z > \\frac{USL - T}{\\sigma_{ST}} \\right) \\]

\\[ P \\left( Z > \\frac{20 - 10}{4,78} \\right) \\approx P \\left( X > 2,1 \\right) \\approx 17.900\\ \\text{defeitos} \\]

Façamos o mesmo raciocínio para estimarmos o desvio-padrão de longo prazo. Desta vez, para cada subgrupo calculamos o desvio-padrão acumulativo, pela fórmula que tem em consideração os desvios da média. Por exemplo, o desvio-padrão de longo prazo, ao final da segunda amostra, não é mais do que o desvio padrão que tem por base as primeiras 10 observações (resultando em 5,4 segundos).

{{< article_image 2 "Excerto dos dados originais e valores respetivos do desvio-padrão de curto e de longo prazo." >}}

Contudo, se fizermos o gráfico respetivo, vemos que a linha cinzenta, que representa o desvio-padrão de longo prazo não está a convergir, o que nos leva a pensar que o número de amostras recolhidas para estimar o nível sigma de longo prazo (e consequentemente o \\( \text{Z}\_\\text{shift} \\)) ainda não é suficiente. Haverá mais variáveis de ruído que precisam ser contabilizadas no cálculo para termos uma verdadeira avaliação do desvio-padrão. Qualquer cálculo feito ao dia de hoje iria simplesmente sobrestimar a verdadeira capabilidade de longo prazo do processo. Será por isso preciso continuar a recolher mais amostras até que a linha convirja para um declive próximo de zero.

{{< article_image 3 "Evolução da estimativa do desvio-padrão ao longo do tempo (sempre que se adiciona mais uma amostra), tanto para curto como para longo prazo." >}}

## Conclusão

Neste artigo mostrou-se uma visão mais aprofundada quanto aos verdadeiros pressupostos no cálculo da dimensão da amostra, sempre que se pretende estimar o desempenho de um processo.

Pretendeu-se demonstrar que avaliar a estabilidade dos dados, apenas por SPC tradicional (Shewhart) pode não ser suficiente, sempre que se pretender estimar o desempenho do processo tanto no curto como no longo prazo. A validação destes pressupostos de estabilidade são relevantes na medida em que se pretende descrever a realidade como ela é e não como gostaríamos que fosse. Estas considerações permitem à equipa de projeto avaliar e medir de forma sólida o desempenho do processo tanto no curto como no longo prazo, a partir de definições operacionais objetivas. Tal irá prevenir um menor ruído na comunicação com o cliente, um maior alinhamento das expetativas e uma melhor caraterização do próprio negócio.

Pretende-se que esta informação possa ser usada em termos práticos pelo praticante de projetos de melhoria contínua, mais especificamente o Black Belt.
