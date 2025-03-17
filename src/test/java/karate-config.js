function fn() {
  
  var env = karate.env; // get system property 'karate.env'
  
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    
    baseUrl: 'https://mule-wft.qa.medpro.com/'
    
  }
  if (env == 'exp') {
     
    config.baseUrl = 'https://mule-wft.qa.medpro.com/';
    
  } 
  
  else if (env == 'e2e') {
    // customize
  }
  
  return config;
}