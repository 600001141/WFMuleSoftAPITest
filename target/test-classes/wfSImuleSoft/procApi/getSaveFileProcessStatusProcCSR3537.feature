Feature: Getting mule-fileprocesses-proc-api file process status ID for ticket CSR-3537



Scenario Outline: To verify the file process status ID in Proc environment for ticket CSR-3537
* karate.configure('ssl',true)
Given url 'https://mule-wft.qa.medpro.com/api/fileprocesses/prc/v1/<status>'
When method get
Then status 200


    * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length  
    * assert count > 1       
 

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getSaveFileProcessStatusProcCSR3537.csv') |