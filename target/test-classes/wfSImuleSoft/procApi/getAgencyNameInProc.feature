Feature: Getting mule-agency-proc-api agency name for ticket CSR-3519


Scenario Outline: To verify the agency name in Proc environment for ticket CSR-3519
* karate.configure('ssl',true)
Given url 'https://mule-wft.qa.medpro.com/api/agency/prc/v1/<agency_name>'
When method get
Then status 200


	  * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 1

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getAgencyNameProc.csv') |