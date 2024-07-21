@mediumPriority
Feature: Test Web site section functionality

Background:
	Given user is on login page
	When user enters sudeshnashetty2211@gmail.com and CreatorX@123
	And user clicks on login
	Then user is navigated to the home page
		

Scenario: Verify if the user is able to open Hero section
    Given user is on the web site page
    When user clicks on the Hero section
    Then the Hero section should be displayed

Scenario: Verify delete option for the Hero  section
 	Given user is on the web site page
    When user clicks on the Hero section
    Then delete section should not present
  
	
Scenario Outline: Verify if the user is able to save changes with valid and invalid  details in the Hero section
	Given user is on the web site page
    When user clicks on the Hero section
    Then the Hero section should be displayed
    And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    And clicks on save changes
    Then  user should get a toast <message>

Examples:
    
    | title       | description                                                                                                                                              | Image                                              | message|
    | Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Saved Successfully!|
    |Hero Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Title can't exceed 50 characters!|
	| Hero Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't exceed 200 characters!|
	| | Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Title can't be empty!|
	| Hero Title 123 !@#|  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Description can't be empty!|
 

	
	
Scenario Outline: Verify if the user is able to save changes with invalid thumb nail details in the Hero section
	Given user is on the web site page
    When user clicks on the Hero section
    Then the Hero section should be displayed
    And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    Then  user should get a toast <message>	
		
Examples:	
	 | title       | description                                                                                                                                              | Image                                              | message|
	 | Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Portfolio (4).pdf| File extension should be jpg/jpeg/png |
     | Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\pexels-zhang-kaiyv-1138369.jpg| Image size should be less than 5MB |


Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in hero section.
  	Given user is on the web site page
    When user clicks on the Hero section
    Then the Hero section should be displayed
    And user clears the fields
    When user types <title>,  <description>
    And clicks on save changes
    Then  user should get a toast <message>	
  
 Examples:
   
    | title             | description                                                                                                                                                                                          | 			message                     |
    | Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!| Please choose an image for Hero section|
	|      |            | Title can't be empty!|

	
Scenario Outline: Verify if user gets Error message when user leaves all details blank in hero section.
 	Given user is on the web site page
    When user clicks on the Hero section
    Then the Hero section should be displayed
    And user clears the fields
    When User clicks on save changes
    Then  user should get a toast <message>		
		
Examples:
   
    |    message           |		
	| Title can't be empty!|   


Scenario: Verify if the user is able to open course section
    Given user is on the web site page
    When user clicks on the course section
    Then the course section should be displayed



 Scenario: Verify delete option for the course section
 	Given user is on the web site page
    When user clicks on the course section
    Then delete section should not present

	
Scenario: Verify if the user is able to save changes for course section with valid and invalid details
    Given user is on the web site page
    When user clicks on the course section
    Then the course section should be displayed
    And user cleared the fields 
    When user types <title>,  <description> 
    And clicks on save changes 
    Then  user should get a toast <message>	 

 Examples:  
    | title             | description                                                                                                                                                                                          | 			message                     |
    | course Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries| Saved Successfully!|
    |course Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |Title can't exceed 50 characters!|
	| course Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!  | Description can't exceed than 200 characters!|
    | | Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries| Title can't be empty!|
    | course Title 123 !@#|  | Description can't be empty!|
	|      |            | Title can't be empty!|
	||| Title can't be empty!| 

@skip	
Scenario: Verify if the user is able to open Content section
    Given user is on the web site page
    When user clicks on the Content section
    Then the Content section should be displayed

@skip
Scenario: Verify delete option for the content section
 	Given user is on the web site page
    When user clicks on the Content section
    Then delete section should be present

@skip
Scenario Outline: Verify if the user is able to save changes with valid details and invalid details in the Content section
	Given user is on the web site page
    When user clicks on the Content section
    Then the Content section should be displayed
    And user selects the orientation of the section <orientation>
    And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    And clicks on save changes
    Then  user should get a toast <message>

Examples:
    |orientation| title       | description                                                                                                                                              | Image                                              | message|
    |Text on Right| Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Saved Successfully!|
 	|Text on Right|Hero Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Title can't exceed 50 characters!|
	|Text on Right| Hero Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't exceed 200 characters!|
	|Text on Right| | Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Title can't be empty!|
	|Text on Right| Hero Title 123 !@#|  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't be empty!|

	
Scenario Outline: Verify if the user is able to save changes with invalid thumb nail details in the Content section
	Given user is on the web site page
    When user clicks on the Content section
    Then the Content section should be displayed
    And user selects the orientation of the section <orientation>
    And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    Then  user should get a toast <message>	
	
	
Examples:	
	 |orientation| title       | description                                                                                                                                              | Image                                              | message|
	 |Text on Right| Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Portfolio (4).pdf| File extension should be jpg/jpeg/png |
     |Text on Right| Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Sample-jpg-image-15mb.jpeg| Image size should be less than 5MB |
    

Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in content section.
 
 	Given user is on the web site page
    When user clicks on the Content section
    Then the Content section should be displayed
    And user selects the orientation of the section <orientation>
    And user clears the fields
    When user types <title>,  <description>
    And clicks on save changes
    Then  user should get a toast <message>	
 
 
 Examples:
   
    |orientation| title             | description                                                                                                                                                                                          | 			message                     |
    |Text on Right| Hero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!|Please choose either an image or a youtube link for content section|
	|Text on Right|      |            | Title can't be empty!|


Scenario Outline: Verify if user gets Error message when user leaves all details blank in content section.
 
 	Given user is on the web site page
    When user clicks on the Content section
    Then the Content section should be displayed
    And user selects the orientation of the section <orientation>
    And user clears the fields
    When User clicks on save changes
    Then  user should get a toast <message>		
	
	
Examples:
   
    |orientation|    message           |		
	|Text on Right| Title can't be empty!|   


	
	
Scenario: Verify if the user is able to open closing section
    Given user is on the web site page
    When user clicks on the closing section
    Then the closing section should be displayed


Scenario: Verify delete option for the closing section
 	Given user is on the web site page
    When user clicks on the closing section
    Then delete section should be present

	        
Scenario Outline: Verify if the user is able to save changes with valid details and invalid details in the closing section
	Given user is on the web site page
    When user clicks on the closing section
    Then the closing section should be displayed
     And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    And clicks on save changes
    Then  user should get a toast <message>

Examples:
    | title       | description                                                                                                                                              | Image                                              | message|
    | closing Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Saved Successfully!|
    |closing Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Title can't exceed 50 characters!|
	| closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't exceed 200 characters!|
	| | Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Title can't be empty!|
	|closing Title 123 !@#|  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't be empty!|



		
Scenario Outline: Verify if the user is able to save changes with invalid thumb nail details in the closing section
	Given user is on the web site page
    When user clicks on the closing section
    Then the closing section should be displayed
    And user clears the fields
    When user typed <title>, <description> and uploads <Image>
    Then  user should get a toast <message>	
		
Examples:	
	 | title       | description                                                                                                                                              | Image                                              | message|
	 | closing Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Portfolio (4).pdf| File extension should be jpg/jpeg/png |
     | closing Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Sample-jpg-image-15mb.jpeg| Image size should be less than 5MB |
    
	
 Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in closing section.
 
 	Given user is on the web site page
    When user clicks on the closing section
    Then the closing section should be displayed
    And user clears the fields
    When user types <title>,  <description>
    And clicks on save changes
    Then  user should get a toast <message>	
 
 Examples:  
    | title             | description                                                                                                                                                                                          | 			message                     |
    | closing Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!| Please choose an image for Closing section|
	|      |            | Title can't be empty!|
	

	
Scenario Outline: Verify if user gets Error message when user leaves all details blank in closing section.
 
 	Given user is on the web site page
    When user clicks on the closing section
    Then the closing section should be displayed
    And user clears the fields
    When User clicks on save changes
    Then  user should get a toast <message>		
		
Examples:  
    |    message           |	
	
	| Title can't be empty!|  


 Scenario: Verify if the user is able to delete content section
  	Given user is on the web site page
    When user clicks on the Content section
    Then delete section should be present     
    When the user selects the delete option 
	Then a confirmation pop up should be displayed
	When the user confirms the deletion
    Then  user should get a toast <message> 

Examples:
    
    |message|
    |Content Section is deleted|



 Scenario: Verify if the user is able to delete closing section
  	Given user is on the web site page
    When user clicks on the closing section
    Then delete section should be present     
    When the user selects the delete option 
	Then a confirmation pop up should be displayed
	When the user confirms the deletion
    Then  user should get a toast <message> 
   	
 Examples:
 
 	|message|
 	|Closing Section is deleted| 


Scenario Outline: Verify if the user is able to click on add new section without selecting the section  
	Given user is on the web site page
    When user presses on add new section
    And user triggers add section
	Then  user should get a toast <message>
	
 Examples:
 		|message|	
 		|Please select an option| 		


Scenario Outline: Verify if user gets Error message when user leaves all details blank while adding new section.
 
 	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    When User clicks on save changes
    Then  user should get a toast <message>		
		
Examples:  
    |    section    |    message           |	
	
	|Closing Section| Title can't be empty!| 
	
	|Content Section|Please choose an orientation option|  
	

Scenario Outline: Verify if the user is able to add new section with invalid thumb nail details in closing section
	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    When user typed <title>, <description> and uploads <Image>
    Then  user should get a toast <message>

Examples:	
	 |section| title       | description                                                                                                                                              | Image                                              | message|
	 |Closing Section|closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |‪‪ ‪C:\Users\Dell\Desktop\haritharesot.pdf | File extension should be jpg/jpeg/png |
     |Closing Section|closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\pexels-zhang-kaiyv-1138369.jpg| Image size should be less than 5MB |
 		


Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in closing section.
 
 	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    When user types <title>,  <description> 
    And clicks on save changes
    Then  user should get a toast <message>
 
 Examples:  
    |section| title             | description                                                                                                                                                                                          | 			message                     |
    |Closing Section|closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!| Please choose an image for Closing section|
	|Closing Section||| Title can't be empty!|	



Scenario Outline: Verify if the user is able to add new section with valid and invalid details in closing section
	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    When user typed <title>, <description> and uploads <Image>
    And clicks on save changes
    Then  user should get a toast <message>

  Examples: 
   |section | title       | description                                                                                                                                              | Image                                              | message|
   
   |Closing Section|closing Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Title can't exceed 50 characters!|
   
   |Closing Section|closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't exceed 200 characters!|
   
   |Closing Section|| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Title can't be empty!|
   
   |Closing Section|closing Title 123 !@#||C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg| Description can't be empty!|
   
   |Closing Section|closing Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries|C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Closing section added successfully|


Scenario Outline: Verify if the user is able to add new section with invalid thumb nail details in content section
	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    And user selects the orientation of the section <orientation>
    When user typed <title>, <description> and uploads <Image>
    Then  user should get a toast <message>

Examples:	
	 |  section         |orientation|title       | description                                                                                                                                              | Image                                              | message|
	 
	 |Content Section|Text on Right|content Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |‪C:\Users\Dell\Downloads\Portfolio.pdf| File extension should be jpg/jpeg/png |
     
     |Content Section|Text on Right|content Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! |C:\Users\Dell\Downloads\Sample-jpg-image-15mb.jpeg| Image size should be less than 5MB |   
 		


Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in content section.
 
 	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    And user selects the orientation of the section <orientation>
    When user types <title>,  <description> 
    And clicks on save changes
    Then  user should get a toast <message>
    
Examples:
	| section        |orientation |title       | description    | message|
	
	|Content Section|Text on Right| content Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward!|Please choose either an image or a youtube link for content section|
	
	|Content Section|Text on Right|      |            | Title can't be empty!| 



Scenario Outline: Verify if the user is able to add new section with valid and invalid details for content section
	Given user is on the web site page
    When user presses on add new section
    And selects from the drop down the <section>
    When user hits add section
    Then section form should be displayed
    And user selects the orientation of the section <orientation>
    When user typed <title>, <description> and uploads <Image>
    And clicks on save changes
    Then  user should get a toast <message>
    
  Examples:
  
    | section       |orientation  |title                 | description                                                                                                                                              | Image                                              | message|
    
    |Content Section|Text on Right|content Title 123 !@# Embrace the challenge Title 123 !@# Embrace the challengeHero Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg |Title can't exceed 50 characters!|
	
	|Content Section|Text on Right| content Title 123 !@#|Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't exceed 200 characters!|
	
	|Content Section|Text on Right| | Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries and stepping outside your comfort zone. Your journey is the destination. Keep moving forward! | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Title can't be empty!|
	
	|Content Section|Text on Right| content Title 123 !@#|  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Description can't be empty!| 
    
    |Content Section|Text on Right| content Title 123 !@#| Embrace the challenge seek new adventures and never stop learning. Growth comes from pushing boundaries  | C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg | Content section saved successfully|
