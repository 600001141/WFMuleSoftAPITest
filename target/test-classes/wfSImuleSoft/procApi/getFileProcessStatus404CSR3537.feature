Feature: Getting mule-fileprocesses-proc-api file process status 404 for ticket CSR-3537




Scenario Outline: To verify the file process status 404 in Proc environment for ticket CSR-3537
* karate.configure('ssl',true)
Given url 'https://mule-wft.qa.medpro.com/api/fileprocesses/prc/v1/<file process>'
When method get
Then status 404


	  

 
Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ProcApiData\\data_getFileProcessStatus404CSR3537.csv') |