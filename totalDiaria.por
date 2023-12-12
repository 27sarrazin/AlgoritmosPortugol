programa
{
	
	funcao inicio()
	{
		inteiro quantHosp, numQuarto , maior = 0 , menor = 0, contador =0,  totDiaria = 0
		real valorDiaria

		escreva("Qual a quantidade de hospedes")
		leia(quantHosp)

		para (inteiro cont = 0; cont < quantHosp; cont++){
			escreva("Qual o numero do quarto? ")
			leia(numQuarto)
			escreva("Qual o valor da diaria? ")
			leia(valorDiaria)
			escreva("Quarto[",numQuarto,"]: Valor da diaria R$[",valorDiaria,"]\n")
			escreva("***************************************************************\n")
			totDiaria = totDiaria + valorDiaria
			
			se(cont == 0){
				menor = valorDiaria
				maior = valorDiaria
				
			}senao se(valorDiaria > maior){
				maior = valorDiaria
			}senao se(valorDiaria < menor){
				menor = valorDiaria
			}
		
		
		
		}
		escreva("Total de diarias: R$", totDiaria)
		escreva("\n")
		escreva("o maior valor e:", maior)
		escreva("\n")
		escreva("o menor valor e: ", menor)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */