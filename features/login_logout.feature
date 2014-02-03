Feature: Login and logout

	@wip @happy_path @regression
 	Scenario: As the board owner I can login, view my board, and logout
		Given I have successfully logged in to a previously created board 
		Then I can logout successfully
	
	@wip @happy_path @regression
	Scenario: As a board user I can login, view my board, and logout
    	Given I have successfully logged in to a board previously created by another user
    	Then I can logout successfully