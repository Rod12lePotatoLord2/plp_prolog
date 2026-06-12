# Árvore Genealógica em Prolog 🌳

## 🚀 Como Testar Online (Sem Instalar Nada)

1. Acesse o ambiente oficial do SWI-Prolog: [SWISH](https://swish.swi-prolog.org/).
2. Na tela inicial, clique no botão **Program** (ou *Create a Program*).
3. No painel da **esquerda** (Editor) cole o código completo do arquivo `.pl` deste repositório.
4. No painel inferior da **direita** (Console de Consultas), você pode fazer perguntas ao sistema.

---

## 🔍 Exemplos de Consultas (Queries)

Para testar o comportamento do programa, digite as seguintes perguntas no campo inferior direito (lembre-se de incluir o ponto final `.`):

### 1. Quem é o avô do Carlos?
avo(X, carlos).
% Resultado esperado: X = pedro.

### 2. Quem são as irmãs do João?
irma_(X, joao).
% Resultado esperado: X = maria. 
% (Clique em "Next" para ver a próxima: X = ana)

### 3. 3. Quem é o primo do Carlos?
primo(X, carlos).
% Resultado esperado: X = lucas_filho.
