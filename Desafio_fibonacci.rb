#Sequencia de Fibonacci

#Boas-vindas
  puts "Seja bem vindo ao nosso primeiro desafio. Aqui será calculada a sequencia de Fibonacci, independente da posição solicitada. Aliás, você sabe o que é sequencia de Fibonacci? (S/N)"
  resposta = gets.chomp

  if resposta.downcase == 'n'
    puts "Não tem problema, eu te explico: A sequencia de Fibonacci é uma sucessão de números que, misteriosamente, aparece em muitos fenômenos da natureza. Descrita no final do século 12 pelo italiano Leonardo Fibonacci, ela é infinita e começa com 0 e 1.
    Agora que sabemos o que é sequencia de Fibonacci, vamos começar. Digite a posição desejada:" 
    posicao = gets.chomp.to_i

  elsif resposta.downcase == 's'
    puts "Que bom! Então, digite uma posição para começarmos:" 
    posicao = gets.chomp.to_i

  else 
    puts "Refaça a operação e digite um comando válido!"
  end

#Variáveis
n1 = 0
n2 = 1
c = 2
seq = [0,1]

#Condições
while c <=posicao
	n3 = n1 + n2
	n1 = n2
	n2 = n3

	seq.push(n3)
	c +=1
end

#Saída e confirmação de saída
puts "Número presente na posição desejada: #{seq[posicao]}!"

puts "Deseja confirmar a resposta? (S/N)" 
confirmacao = gets.chomp

if confirmacao.downcase == 's' 
	puts "Beleza, pode conferir a sequencia a seguir: #{seq}"

elsif confirmacao.downcase =='n'
	puts "Então, beleza. Até a próxima!"

else 
	puts "Refaça e operação e digite um comando válido!"
end