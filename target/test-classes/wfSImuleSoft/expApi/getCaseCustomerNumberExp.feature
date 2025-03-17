Feature: Getting mule-case-exp-api customer number for ticket CSR-3522

  ##Background: 
    ##* url baseUrl
    ##* header Authorization = call read('basic-auth.js')

  
  Scenario Outline: To verify the customer number in EXP environment for ticket CSR-3522
    * karate.configure('ssl', true)
    Given url 'https://mule-wft.qa.medpro.com/api/case/v1/<customer_Number>'
    When method get
    Then status 200

	  

    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getCaseCustomerNumberExp.csv') |
