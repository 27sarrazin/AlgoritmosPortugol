programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		
		inteiro mesas[4], i
		real valorMesas[4]
		real Cortesia = 30.99, diferenca = 0.0
		
		para( i = 0; i < 4; i++){
			escreva("Informe valor da mesa ", i+1 ,": ")
			leia(valorMesas[i])
		}
		escreva("=++++++++++++++++++++++++++++++++++++++++++=\n")
		
		para( i = 0; i < 4; i++){
			se(valorMesas[i] <= Cortesia){
				escreva("Mesa ", i+1," nada a pagar!\n")
			}senao se(valorMesas[i] > Cortesia){
				diferenca = valorMesas[i] - Cortesia
				escreva("Mesa ", i+1," precisa pagar R$ ", mat.arredondar(diferenca, 2))
				escreva("\n")
			}
		}
	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 591; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */