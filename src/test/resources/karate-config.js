function fn() {

  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);

  if (!env) {
    env = 'local';
  }
/* In this case, the environment used is local for bootstrap purposes, for the tests the corresponding environments must be defined,
   this depends on the context of the project and is subject to change. */

  switch (env) {
    case 'local':
        // TODO improve this switch loading different env files based on env value
      var data = karate.read('classpath:env_local.json');
      var config = karate.toMap(data)

        // customize
        break;
    case 'stage':
        // customize
        break;
    case 'prod':
        // customize
        break;
  }

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('retry', { count: 3, interval: 30000 });

  return config;
}
