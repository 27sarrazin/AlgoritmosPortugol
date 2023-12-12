programa
{
	
	funcao inicio()
	{
		inteiro opcao = 0, pos = 0 
		cadeia nomeHosp[7], nome

		
		enquanto(opcao != 3){
			escreva("Digite 1- Cadastrar; 2- Pesquisar; 3- Sair\n")
				leia(opcao)
				
			escolha(opcao){
				
			   	 caso 1:
					escreva("Digite o nome do hospede a ser cadastrado: ")
					leia(nomeHosp[pos])
					pos+=1
					se(pos >= 7) {
						escreva("Máximos de cadastrados atingindo")
					}
						pare
						
				caso 2:
				
					escreva("Digite o  nome do hospede a ser pesquisado: ")
					leia(nome)
					para(pos = 0; pos < 7 ; pos++){
						se (nomeHosp[pos] == nome){
							escreva("\nhospede ", nome, " foi encontrado no indice[", pos ,"] \n")
								pare
						}
					}
						se (pos >= 7){
							escreva("Hospede nao encontrado!\n")
						}
    							
					
				
				}
			
		
		
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */