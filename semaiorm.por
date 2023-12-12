programa
{
	
	funcao inicio()
	{
	inteiro numConvidados, totalSalgados
	real litroCafe, litroAgua
	
	escreva("Informe quantidades de convidados?")
	leia(numConvidados)
	se(numConvidados <30 ou numConvidados >350){
		escreva("Opa, Quantidade de convidados superior ou inferior à capacidade")
		
	}senao{
		litroCafe = numConvidados * 0.2
		litroAgua = numConvidados * 0.5
		totalSalgados = numConvidados * 7
		escreva("Para esse total de convidados será servido ", litroCafe, " litros de cafe e "
		, litroAgua, " litros de agua e ",totalSalgados, " salgadinhos")
		
		
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */