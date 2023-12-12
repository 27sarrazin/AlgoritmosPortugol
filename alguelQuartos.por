programa
{
	
	funcao inicio()
	{
		inteiro i, quarto
		caracter respUsuario , opcao, quartos[10]
		 
				para(i=0; i<10; i++){
					quartos[i]='L'
					//escreva(status[i])	
				}
				escreva("todos os quartos estao livres! ")
			
			faca{
				
				escreva("\nDigite o numero do quarto [1 a 10]: ")
				leia(quarto)
				
				escreva("O quarto esta livre ou ocupado? (L/O): ")
     			leia(respUsuario)
				
   				se (quarto > 0 e quarto < 11){
   					
      				//escreva("Quarto ", quarto , " selecionado.\n")
      				se(quartos[quarto - 1] == 'L' e respUsuario == 'L'){
						escreva("Quarto já está vazio!")
					}senao se(quartos[quarto - 1] == 'L' e respUsuario == 'O'){
						
						escreva("Quarto foi ocupado!")
						quartos[quarto -1] = respUsuario
					}senao se(quartos[quarto - 1] == 'O' e respUsuario == 'L'){
						
						escreva("Quarto foi liberado!")
						quartos[quarto -1] = respUsuario
					
					}senao se(quartos[quarto - 1] == 'O' e respUsuario == 'O'){
					
						escreva("Quarto ja esta ocupado!")
						
					}
   					}senao{
   						escreva("Numero invalido!!")
   					}
   				
     			
				

				escreva("\ndeseja continuar? [S/N]:")
				leia(opcao)
			}enquanto(opcao == 'S' ou opcao == 's')

			para(i=0; i<10; i++){
				escreva(i+1, "-", quartos[i], "\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 982; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */