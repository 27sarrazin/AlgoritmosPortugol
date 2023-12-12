programa
{

	funcao inicio()
	{
	inteiro numConvidados, lugares=150
	
	escreva("Informe quantidades de convidados?")
	leia(numConvidados)
		
	se (numConvidados > 0 e numConvidados <= lugares){
		escreva("Use o auditorio Alfa!")
	}
	se(numConvidados > lugares e numConvidados <= 220){
		inteiro cadeira
		cadeira = numConvidados - lugares
		escreva("Use o auditorio Alfa \n")
		escreva("e inclua mais ", cadeira, " cadeiras")
	}		
	se(numConvidados > 220 e numConvidados <=350){
		escreva("Use o Auditorio Beta!")
			
	}
	senao se(numConvidados < 0 ou numConvidados > 350){
		escreva("Numero de convidados invalido!!")
	}
		
	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */