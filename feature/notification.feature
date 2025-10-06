

Scenario: Editing grade

Given The student "Marcos Almeida" has achieved "MPA, MPA, -" for the evaluated learning goals
And I’m at the "Editing grades" page
When I confirm grades to the system 
Then I go to "grades" page
And I see the new grade to "Marcos Almeida"
and the student "Marcos Almeida" receive a email from the system

Scenario: Editing grade for the second time

Given The student "Marcos Almeida" has achieved "MPA, MPA, -" for the evaluated learning goals
And I’m at the "Editing grades" page
When I confirm grades to the system 
Then I go to "grades" page
And I see the new grade to "Marcos Almeida"
and the student "Marcos Almeida" don't receive a email from the system because he alredy received once today
