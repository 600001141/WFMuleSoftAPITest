Feature: Getting mule-fileprocesses-proc-api file process status 200 for ticket CSR-3537


Background: 
    * url baseUrl

Scenario Outline: To verify the file process status 200 in Proc environment for ticket CSR-3537
* karate.configure('ssl',true)
Given path 'api/fileprocesses/prc/v1/<status>'
When method get
Then status 200
And print response


    * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length
    * match count == 10

	  

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getFileProcessStatus200CSR3537.csv') |