---
title: "A nata do problem-solving"
description: "O artigo mostra a simbiose (perfeita) entre o raciocínio lógico e a estatística para se chegar, tão depressa quanto possível, à verdadeira causa raiz de um problema (da qualidade)."
draft: false
authors:
 - racastro
categories:
 - lean
tags:
 - six-sigma
 - lógica
 - teste-hipóteses
images:
 - /img/articles/nata-problem-solving-1.png
 - /img/articles/nata-problem-solving-2.png
references:
 - Castro, Ricardo A. (2012) Lean Six Sigma – para qualquer negócio. 3.ª edição, IST Press.
---

## Problema

No decorrer de um projeto Six Sigma, e em particular na fase analyse, a equipa deve começar sempre por fazer o mapeamento do processo. Se a Six Sigma acredita que é através da melhoria dos seus principais processos que a empresa fica mais forte é natural assumir que se estes não forem primeiramente desenhados será muito mais difícil alcançarem-se objetivos ambiciosos. Para projetos relativamente complexos ao nível do Black Belt não é raro obterem-se 80 ou mais potenciais variáveis explicativas (dados de entrada) que estão a influenciar a variabilidade daquilo que pretendemos melhorar: seja o tempo para se entregar algo ao cliente, o número de sujidades de uma peça pintada ou o número de reclamações do cliente. Analisar cada uma das variáveis de entrada, não só não garante o melhor resultado como se torna impraticável em termos do tempo disponível dado à equipa.

Assim, e sem se dizer nada de novo, muitas vezes a equipa acaba por pontuar cada dado de entrada numa escala de 0, 1, 3 ou 9 com base na sua própria intuição e experiência. A escala representa o nível de relação que deverá existir entre esse dado de entrada e a variável de saída que pretendemos melhorar. Um valor de 0 significa que fazer variar esse dado de entrada não trará qualquer impacto (positivo ou negativo) na variável de saída. Um valor de 9 mostra que a equipa acredita que é importante analisar esse dado de entrada com mais detalhe.

Esta mera classificação é um primeiro filtro (não estando a equipa livre de cometer erros de avaliação) às 80 ou mais variáveis. É perfeitamente natural que no final do exercício sobrem aproximadamente 10 dados de entrada com a pontuação de 9. Em função da natureza do problema e do próprio sistema onde ele existe pode ser que se possam usar técnicas valiosas como, por exemplo, o desenho de experiências. Contudo, o ponto que quero realçar nesta fase é mais sobre o que se deve fazer para aumentarmos, desde já, a qualidade de toda a nossa análise.

## Direção da Solução

Muitas vezes, os dados de entrada (mesmo com pontuação de 9) devem ser vistos apenas como sintomas. Por exemplo, a temperatura de uma cabine de pintura (x1), o dia da semana em que um trabalho é feito (x2), ou o facto de um documento estar incompleto (x3) são tudo pressupostos para se explicar por que razão o tempo para se fazer algo é mais demorado ou por que razão há mais defeitos no processo. Pode estar toda a empresa a dizer que estes dados de entrada são relevantes e ajudam a explicar o mau desempenho do processo, mas não passarão de pressupostos enquanto as coisas não forem provadas a partir dos dados e factos.

Talvez por isso faça pouco sentido, numa fase tão inicial partirmos já para os 5 porquês (umas das ferramentas mais simples, mas mais difíceis, usadas para se ‘escavar’ até à causa-raiz). Isto é, para quê perguntar porquês consecutivos acerca de algo se não temos a certeza quanto à existência de uma relação entre o y do projeto e um x1, x2 ou x3. Precisamos assentar toda a análise em algo mais sólido e que funcione.

A nata do problem solving é pois:

1. Sempre que necessário (a menos que as coisas sejam extremamente evidentes) validar o sintoma com um teste de hipóteses. Isto é, mostrar que existe uma correlação entre o sintoma e o problema que se quer resolver.
2. Havendo essa correlação, mostrar pela lógica, que existe causalidade entre o sintoma e o problema (especialmente importante, sempre que o ponto anterior se baseia num estudo observacional).
3. O sintoma passa a ser o ponto de causa e onde consequentemente devemos aplicar os 5 porquês.
4. No final dos 5 porquês, procurar pelo efeito previsto e/ou aplicar um novo teste de hipóteses, para se validar a causa-raiz.

## Implementação da Solução (exemplo)

Para aprovação de um crédito (financiamento automóvel) é preciso reunir determinada documentação, garantir que está tudo conforme e que não há informação em falta. Para se explicar o elevado tempo de implementação do contrato (y do projeto), a equipa de Six Sigma avançou com a ideia de que o seguinte dado de entrada tem impacto nesse tempo: x1 – informação incompleta.

### A nata do problem solving – ponto 1

Antes de se começar a levantar hipóteses ou perguntas sobre por que razão a informação vem incompleta (no caso de ser verdade), a equipa desenvolveu o seguinte teste de hipóteses:

- H0: o tempo de aprovisionamento é igual, quer haja ou não haja informação incompleta.
- H1: o tempo de aprovisionamento é diferente, quando há informação incompleta.

Tanto em termos visuais, como pelo valor-p comparado com um alfa de 10 por cento, se chega à conclusão de que documentos com um ou mais defeitos (incompletos) têm um impacto, em termos de mediana de mais 30 dias. E a probabilidade de estarmos errados nesta afirmação é de apenas 7 por cento!

{{< article_image 0 "Teste de hipótese ao impacto que os defeitos têm no tempo de aprovisionamento (p-value de 0,076)." >}}

### A nata do problem solving – ponto 2

Se existem documentos em falta e o contrato não pode ser validado sem todos os documentos necessários, então, o contrato sofre, por definição, interrupções ao fluxo (sofrendo maiores tempos de espera).

### A nata do problem solving – ponto 3

Sabemos agora que o sintoma (documentos em falta) é de facto relevante para o tempo de implementação do contrato. Tendo sido validado o ponto de causa, parte-se agora para os 5-porquês com outra confiança e convicção (pois o primeiro ‘balão’ acabou de ser validado). Evidencia-se o modelo explicativo dos 5 porquês a que a equipa chegou na figura 2.

### A nata do problem solving – ponto 4

Uma causa raiz pode ser validada tanto por teste de hipóteses como pelo efeito previsto (irá depender da natureza da causa raiz, por questões de praticidade). Neste caso, o que faz sentido é ir pelo efeito previsto (ver primeiro os 5 porquês na figura seguinte). Isto é, se existissem standards muito claros na empresa, as pessoas do concessionário não teriam problemas em ajuizar a conformidade de cada contrato (o que nunca foi o caso). Outro efeito previsto é os clientes terem que ir por uma segunda vez ao concessionário para submeterem um documento que se encontrava não conforme (basta formular o efeito previsto em forma de pergunta a um vendedor, para se ouvir um claro: ‘sim, por vezes os clientes precisam de submeter novamente um documento’). De facto, quantos mais efeitos previstos independentes entre si a equipa conseguir encontrar (tendo por base a mesma causa-raiz) mais se corrobora a hipótese da causa raiz como sendo válida.

{{< article_image 1 "Os 5 porquês." >}}

## Conclusão

Procurou-se com este artigo mostrar uma forma rápida, prática e eficaz quanto à validação de uma causa raiz de um problema (da qualidade) – algo que deverá ser bastante útil para qualquer Black Belt.