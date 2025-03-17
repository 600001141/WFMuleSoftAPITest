Feature: Getting mule-s3-system-api to get PDF file to test ticket CSR-3521

  Scenario Outline: To verify the system api to get pdf file for ticket CSR-3521
    * karate.configure('ssl',true)
    Given url 'https://mule-wft.qa.medpro.com/api/s3/sys/v1/<pdf_file>'
    When method get
    Then status 200
   
    * def pdfFile = 'downloaded-file.pdf'
    * karate.write(responseBytes, pdfFile)

    
     Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getmule_s3_generatePdf.csv') |