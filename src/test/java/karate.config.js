function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'stg'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    baseUrl: 'https://petstore.swagger.io/v2/pet'
  };
  if (env == 'dev') {
    // over-ride only those that need to be
    config.baseUrl = 'https://petstore.swagger.io/v2/pet';
  } else if (env == 'stg') {
    config.baseUrl = 'https://petstore.stg.swagger.io/v2/pet';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure (retry, {count: 2, interval: 2000 });
  return config;
}