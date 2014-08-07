Feature:Check Rotten Tomatoes test cases as ADMIN

	Scenario: Open Foxtel CMS
		When I navigate to "http://foxtel-cms.local/"
		And I wait for 15 sec
		Then I should see login page

	Scenario: Login to Foxtel CMS
		When I enter username as "Admin"
		And enter password as "admin"
		And I click on "Log in" button
		And I wait for 10 sec
		Then I should see "Foxtel Content" tab as default selected.

	Scenario: Open "Pecker" program
		When I select "Pecker" program
		And I wait for 20 sec
		Then I should see summary tab
	
	Scenario: Check the availability of Rotten Tomatoes tab
		When I see the text "ROTTEN TOMATOES"
		And I click on Rotten Tomatoes tab
		And I wait for 15 sec
		Then I should see "IMDB id" field

	Scenario: Updating Rotten Tomatoes data
		When I enter valid imdb id as "0185183"
		And I wait for 60 sec
		Then I should see Rotten tomato movie imported successfully

	Scenario: Check new movie node creation after importing data from RT on content tab
		When I click on content menu 
		And I wait for 10 sec
		Then I should see new movie node

	Scenario: Check the details of the movie node
		When I see the text IMDB ID
		And I see the text Abridged cast
		And I see the text Abridged directors
		And I see the text Genres
		And I see the text Synopsis
		Then I should finish with test cases as "Admin"
