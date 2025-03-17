Feature: Getting mule-email-exp-api email page for ticket CSR-3534


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/emails/v1/email?page=1'

Scenario Outline: To verify the email page in Exp environment for ticket CSR-3534

* karate.configure('ssl',true)
Given url getUrl
And param pagesize = <pagesize>
And param sortexpression = <sort expression>
And param sortorder = <sort order>
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length
    * match count == 10

 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEmailsPageExpCSR3534.csv') |
      
      
      