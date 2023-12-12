programa
{
	
	funcao inicio()
	{
		real valorDiaria
		inteiro quantDias

		
		faca{
		escreva("Qual o valor de uma diaria? ")
		leia(valorDiaria)
		escreva("Quantos dias voce vai ficar hospedado? ")
		leia(quantDias)
		
		 se(valorDiaria < 0 ou quantDias < 0 ou quantDias >30){
		 	escreva("Valor invalido!!\n")
		 }
		}enquanto(valorDiaria < 0 ou quantDias < 0 ou quantDias >30)
		
		escreva("Fim do programa!!")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */