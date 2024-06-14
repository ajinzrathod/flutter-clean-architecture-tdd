enum Environment { local, prod }

abstract class AppEnvironment {
  static late String baseApiUrl;
  static late String title;
  static late Environment _environment;

  static Environment get environment => _environment;

  static setUpEnv(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.local:
        {
          baseApiUrl = 'http://localhost:3000/';
          title = 'News App - Local';
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = 'https://prod-url/';
          title = 'News App';
          break;
        }
    }
  }
}
