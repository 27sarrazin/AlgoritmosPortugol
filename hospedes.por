programa
{
	
	funcao inicio()
	{
		caracter seguir = 's'
		cadeia nomeHospedes
		inteiro idade, contGratuidade = 0, contMeia = 0, valorTot =0
		real vPadraoDiaria, totalHosp = 0, valorMeia =0, valorPadrao =0
		
		
		escreva("Qual o valor padrao da diaria? ")
		leia(vPadraoDiaria)
		enquanto(seguir != 'n'){
			
			escreva("Informe seu nome? ")
			leia(nomeHospedes)
			escreva("Qual a sua idade? ")
			leia(idade)

			se (idade >=5 e idade <=79){
				valorPadrao += vPadraoDiaria 
			}
			se (idade <=4){
				escreva(nomeHospedes, " possui gratuidade!\n")
				vPadraoDiaria -= vPadraoDiaria
				contGratuidade += 1
				
			}senao se(idade > 80){
				escreva(nomeHospedes, " paga meia\n")
				valorMeia = valorPadrao / 2
				contMeia += 1
			
			}
				totalHosp = valorPadrao + valorMeia
			
			escreva("Quer continuar informando os dados? [s/n] ? \n")
			leia(seguir)
		}
		escreva("Total de hospedes : R$", totalHosp, "; ", contGratuidade, " gratuidade(s); ", contMeia, " meia(s)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 923; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */