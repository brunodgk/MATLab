%Nome: Bruno Diniz Gon�alves Kozlowski Digital DownGround
%Data: 23/05/2017

%Limpa e agiliza processo
clc;
clear all;
close all;
warning off;

%Perguntas iniciais
fprintf('\t\t\tCircuitos El�tricos - Analise de malhas\n\n');
n=input('Qual a quantidade de correntes inspecionadas no circuito?\n->');
fprintf('\n\n');

%Loop percorrendo colunas e linhas coletando dados para a matriz A
for i=1:n
    for j=1:n
        fprintf('A(%d,%d)\n',i,j);
        A(i,j)=input('Qual o valor de dentro da coordenada matricial apresentada? (em rela��o ao sistema de equa��es inspecionadas, correntes em ordem crescente, matriz A)\n->');
    end
end

%Limpa tela e apresenta a matriz A para confirma��o do processo
clc;
fprintf('Matriz A:\n');
disp(A);
fprintf('\n\n');

%Loop de linha com apenas uma coluna coletando dados para a matriz B
for i=1:n
    fprintf('B(%d,1)\n',i);
    B(i,1)=input('Qual o valor de dentro da coordenada matricial apresentada? (em rela��o ao sistema de equa��es inspecionadas, volts, matriz dos resultados, matriz B)\n->');
end

%Calcula a matriz X com o resultado das correntes em ordem crescente
X=inv(A)*B;

%Cria uma coluna com a quantidade de correntes, numerando-as
for i=1:n
    correntes(i,1)=i;
end

%Concatena em segunda coluna a matriz X, ao lado da numera��o das correntes
for i=1:n
    correntes(i,2)=X(i,1);
end

%Limpa tela e cria um Menu para apresenta��o dos valores das correntes
clc;
tabela=['Corrente(I)= ' 'Valor(Ampere)'];
disp(tabela);
disp(correntes);