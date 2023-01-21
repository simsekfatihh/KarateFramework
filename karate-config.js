function fn() {

     var config = {
        apiUrl: 'https://reqres.in/api/users',
        webAppUrl: 'https://www.saucedemo.com',

     }
      karate.configure('logPrettyRequest', true);
      karate.configure('logPrettyResponse', true);
      karate.configure('ssl', true);
//      karate.configure('driverTarget', { docker: 'justinribeiro/chrome-headless', showDriverLog: true });
    karate.configure('driver', { type: '#(browser)', headless: false });

     return config;
  }