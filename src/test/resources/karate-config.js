function config() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    karate.configure('ssl',true);
    if (!env) {
      env = 'dev';
    }
    var data = read('classpath:karate/support/env_data.json');
    var env_data = data[env];

    return data[env];
}
