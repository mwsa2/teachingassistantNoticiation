#Ressaltando diferenças em relação aos outros alunos

Scenario: notificar aluno que a sua nota está abaixo da media da turma
Given Dado que todos os alunos da turma "ESS" tem uma nota 
And a media da turma "ESS" é maior que a nota do aluno de cpf "123" 
And o aluno de cpf "123" ainda não recebeu a notificação de "Desempenho" 
When notificar o aluno de cpf "123" que sua nota ficou abaixo da media da turma "ESS"
Then O sistema grava que o aluno de cpf "123" recebeu a notificação de "Desempenho".


Scenario: notificar aluno que o numero de turmas que ele está matriculado,
 está abaixo da media dos outros alunos
Given Dado que a média de turmas por aluno é maior que o numero de turmas do
    aluno de cpf "123"
And o aluno de cpf "123" ainda não recebeu a notificação de "Informação" 
When notificar o aluno de cpf "123" que o numero de turmas que ele 
    está matriculo foi menos que a media dos outros alunos
Then O sistema grava que o aluno de cpf "123" recebeu a notificação de "Informação".