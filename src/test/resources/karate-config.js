function config() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);

    if (!env) {
        env = 'dev';
    }
    var data = read('classpath:resources/env_data.json');
    var env_data = data[env];

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return env_data;
}
