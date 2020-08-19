function config() {

    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    karate.configure('ssl',true);

    DB_URL: DB_URL,
    DB_USERNAME:DB_USERNAME,
    DB_PASSWORD:DB_PASSWORD,
    DB_DRIVER:DB_DRIVER,
    URL_PATH:URL_PATH

    if (!env) {
      env = 'dev';
    }
    var data = read('classpath:support/env_data.json');
    var env_data = data[env];
    var  DB_URL = data.DB_URL;
    var  DB_USERNAME = data.DB_USERNAME;
    var  DB_PASSWORD = data.DB_PASSWORD;
    var  DB_DRIVER = data.DB_DRIVER;
    var  URL_PATH = data.URL_PATH;

    return data[env];
}
