Feature: Getting mule-document-management-api to get PDF file to test ticket CSR-3530

  Background: 
  * url baseUrl
  #* header Content-Type = 'application/json'
  * def getUrl = baseUrl + 'api/documents/v1/store'
  * karate.configure('ssl', true)

@reg
Scenario: Upload PDF to Amazon S3 via MuleSoft API for ticket CSR-3530
  * karate.configure('ssl', true)  
  * karate.configure('logPrettyRequest', true)
  * karate.configure('logPrettyResponse', true)
  
  * def fileBytes = read('2025QATestDoc002.pdf')
  Given url 'https://mule-wft.qa.medpro.com'
  And path '/api/documents/v1/store'
  And param filename = '2025QATestDoc002.pdf'
  And param storename = 'aws07wfls302.aws07.wfl.cloud'
  And param storetype = 'AmazonS3'
  And request fileBytes
  And header Content-Type = 'application/octet-stream'
  When method POST
  Then status 200
  
    
@reg
Scenario: To verify the system api to get pdf file for ticket CSR-3530
  * karate.configure('ssl', true)
  * karate.configure('logPrettyRequest', true)
  * karate.configure('logPrettyResponse', true)
  Given url getUrl
  And param filename = '2025QATestDoc002.pdf'
  And param storename = 'aws07wfls302.aws07.wfl.cloud'
  And param storetype = 'AmazonS3'
  When method get
  Then status 200
  * header Accept = 'application/octet-stream'
  * def pdfFile = 'download_CSR3530.pdf'
  * karate.write(responseBytes, pdfFile)

  

    
