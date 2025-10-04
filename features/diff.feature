#Ressaltando diferenças em relação aos outros alunos

Scenario: notificar aluno que a sua nota está abaixo da media da turma
Given Dado que todos os alunos da turma "ESS" tem uma nota 
And a media da turma "ESS" é maior que a nota do aluno de cpf "123" 
And o aluno de cpf "123" ainda não recebeu a notificação de "Desempenho" 
When notificar o aluno de cpf "123" que sua nota ficou abaixo da media da turma "ESS"
Then O sistema grava que o aluno de cpf "123" recebeu a notificação de "Desempenho".