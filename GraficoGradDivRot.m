%Nome: Bruno Diniz Gonçalves Kozlowski Digital DownGround
%Matéria: Análise Vetorial (Gradiente/Divergente/Rotacional)
%Data: 09/06/2017

clc;
clear all;
close all;
warning off;

syms x y z grad

opcao=0;

while(opcao > 5 || opcao < 1)
clc;
fprintf('\t\t\t\t\tAnálise Vetorial\n');
opcao=input('Escolha o que deseja:\n\n
		1-Obter Gradiante\n
		2-Obter Divergente\n
		3-Obter Rotacional\n
		4-Obter Gradiente, Divergente e Rotacional\n
		5-Obter Divergente e Rotacional\n
		6-Sair\n
		->');

    switch(opcao)
        case 1
            clc;
            f=input('Qual é a função que você deseja para encontrar o gradiente?\n->');

            clc;
            disp('Função:');
            disp(f);
            
            grad=gradient(f,[x,y,z]);
            gradiente(1)=grad(1);
            gradiente(2)=grad(2);
            gradiente(3)=grad(3);
            
            opcao2=0;
            while(opcao2 < 1 || opcao2 > 2)
            
            opcao2=input('\nHá pontos indicados?\n
			1-Sim\n
			2-Não\n
			->');
            
                switch(opcao2)
                    case 1
                        X=input('\nQual o valor de X do ponto?\n->');
                        Y=input('Qual o valor de Y do ponto?\n->');
                        Z=input('Qual o valor de Z do ponto?\n->');

                        gradpoint=subs(gradiente, [x,y,z], [X, Y, Z]);
                        
                        clc;
                        fprintf('Gradiente da função no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(gradpoint);
                        
                    case 2
                        fprintf('\nGradiente da função:\n');
                        disp('[I,J,K]');
                        disp(gradiente);
                        break;
                        
                    otherwise
                        fprintf('Opção inválida!\n\n');
                        pause;
                end       
            end
            
        case 2
            clc;
            f(1)=input('Qual é o valor de i do vetor que você deseja para encontrar o divergente no campo?\n->');
            f(2)=input('Qual é o valor de j do vetor que você deseja para encontrar o divergente no campo?\n->');
            f(3)=input('Qual é o valor de k do vetor que você deseja para encontrar o divergente no campo?\n->');
            
            clc;
            fprintf('Vetor:\n');
            disp('[I,J,K]');
            disp(f);
            diverg=divergence(f,[x,y,z]);
            div(1)=diverg(1);
            div(2)=diverg(2);
            div(3)=diverg(3);
            
            opcao2=0;
            while(opcao2 < 1 || opcao2 > 2)
            
            opcao2=input('\nHá pontos indicados?\n
				1-Sim\n
				2-Não\n
				->');
            
                switch(opcao2)
                    case 1
                        X=input('\nQual o valor de X do ponto?\n->');
                        Y=input('Qual o valor de Y do ponto?\n->');
                        Z=input('Qual o valor de Z do ponto?\n->');
            
                        divpoint=subs(div, [x,y,z], [X, Y, Z]);
                        
                        clc;
                        fprintf('Divergente do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(divpoint);
                        
                        fprintf('\nDivergente do rotacional:\n');
                        disp('[I,J,K]');
                        divrot=curl(f,[x,y,z]);
                        divrot(1)=dcurl(1);
                        divrot(2)=dcurl(2);
                        divrot(3)=dcurl(3);
                        disp(divergence(dcurl,[x,y,z]));
                       
                    case 2
                        clc;
                        fprintf('Divergente do campo:\n');
                        disp('[I,J,K]');
                        disp(div);
                        fprintf('\nDivergente do rotacional:\n');
                        disp('[I,J,K]');
                        dcurl=curl(f,[x,y,z]);
                        divrot(1)=dcurl(1);
                        divrot(2)=dcurl(2);
                        divrot(3)=dcurl(3);
                        disp(divergence(divrot,[x,y,z]));
                        break;
                        
                    otherwise
                        fprintf('Opção inválida!\n\n');
                        pause;
                end
            end         
                        
        case 3
            clc;
            f(1)=input('Qual é o valor de i do vetor que você deseja para encontrar o rotacional do campo?\n->');
            f(2)=input('Qual é o valor de j do vetor que você deseja para encontrar o rotacional do campo?\n->');
            f(3)=input('Qual é o valor de k do vetor que você deseja para encontrar o rotacional do campo?\n->');
            
            clc;
            fprintf('Vetor:\n');
            disp(f);
            rotac=curl(f,[x,y,z]);
            rot(1)=rotac(1);
            rot(2)=rotac(2);
            rot(3)=rotac(3);
            
            opcao2=0;
            while(opcao2 < 1 || opcao2 > 2)
            
            opcao2=input('\nHá pontos indicados?\n
				1-Sim\n
				2-Não\n
				->');
            
                switch(opcao2)
                    case 1
                        X=input('\nQual o valor de X do ponto?\n->');
                        Y=input('Qual o valor de Y do ponto?\n->');
                        Z=input('Qual o valor de Z do ponto?\n->');
            
                        rotpoint=subs(rot, [x,y,z], [X, Y, Z]);
                        
                        clc;
                        fprintf('Rotacional do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(rotpoint);
                        
                    case 2
                        clc;
                        fprintf('Rotacional do campo:\n');
                        disp('[I,J,K]');
                        disp(rot);
                        break;
                        
                    otherwise
                        fprintf('Opção inválida!\n\n');
                        pause;
                end
            end         
            
        case 4
            clc;
            f=input('Qual é a função que você deseja para encontrar o gradiente, divergente e o rotacional do campo?\n->');
            
            clc;
            disp('Função:');
            disp(f);
            
            grad=gradient(f,[x,y,z]);
            div=divergence(grad,[x,y,z]);
            rotac=curl(grad,[x,y,z]);
            rot(1)=rotac(1);
            rot(2)=rotac(2);
            rot(3)=rotac(3);
            
            opcao2=0;
            while(opcao2 < 1 || opcao2 > 2)
            
                opcao2=input('\nHá pontos indicados?\n
				1-Sim\n
				2-Não\n
				->');
            
                switch(opcao2)
                    case 1
                        X=input('\nQual o valor de X do ponto?\n->');
                        Y=input('Qual o valor de Y do ponto?\n->');
                        Z=input('Qual o valor de Z do ponto?\n->');
            
                        gradpoint=subs(grad, [x,y,z], [X, Y, Z]);
                        divpoint=subs(div, [x,y,z], [X, Y, Z]);
                        rotpoint=subs(rot, [x,y,z], [X, Y, Z]);
                        
                        clc;
                        fprintf('Gradiente do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(gradpoint);
                        
                        fprintf('\nDivergente do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(divpoint);
                        
                        fprintf('\nRotacional do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(rotpoint);
                        
                    case 2
                        clc;
                        fprintf('Gradiente do campo:\n');
                        disp('[I,J,K]');
                        disp(grad);
                        
                        fprintf('\nDivergente do campo:\n');
                        disp('[I,J,K]');
                        disp(div);
                        
                        fprintf('\nRotacional do campo:\n');
                        disp('[I,J,K]');
                        disp(rot);
                        break;
                    
                    otherwise
                        fprintf('Opção inválida!\n\n');
                        pause;    
                end
            end
            
        case 5
            clc;
            grad(1)=input('Qual é o valor de i do vetor que você deseja para encontrar o divergente e o rotacional no campo?\n->');
            grad(2)=input('Qual é o valor de j do vetor que você deseja para encontrar o divergente e o rotacional no campo?\n->');
            grad(3)=input('Qual é o valor de k do vetor que você deseja para encontrar o divergente no campo?\n->');
            
            clc;
            disp('Vetor:');
            disp('[I,J,K]');
            disp(grad);

            div=divergence(grad,[x,y,z]);
            rotac=curl(grad,[x,y,z]);
            rot(1)=rotac(1);
            rot(2)=rotac(2);
            rot(3)=rotac(3);
            
            opcao2=0;
            while(opcao2 < 1 || opcao2 > 2)
            
                opcao2=input('\nHá pontos indicados?\n
				1-Sim\n
				2-Não\n
				->');
            
                switch(opcao2)
                    case 1
                        X=input('\nQual o valor de X do ponto?\n->');
                        Y=input('Qual o valor de Y do ponto?\n->');
                        Z=input('Qual o valor de Z do ponto?\n->');

                        divpoint=subs(div, [x,y,z], [X, Y, Z]);
                        rotpoint=subs(rot, [x,y,z], [X, Y, Z]);
                        
                        clc;

                        fprintf('\nDivergente do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(divpoint);
                        
                        fprintf('\nRotacional do campo no ponto (%d,%d,%d):\n',X,Y,Z);
                        disp('[I,J,K]');
                        disp(rotpoint);
                        
                    case 2
                        clc;

                        fprintf('\nDivergente do campo:\n');
                        disp('[I,J,K]');
                        disp(div);
                        
                        fprintf('\nRotacional do campo:\n');
                        disp('[I,J,K]');
                        disp(rot);
                        break;
                    
                    otherwise
                        fprintf('Opção inválida!\n\n');
                        pause;    
                end
            end

        case 6
            fprintf('Saindo...\n\n');
            break;
        otherwise
            fprintf('Opção inválida!\n\n');
            pause;
    end
    
end
