class Environments {
  static String danBooruUrl = const String.fromEnvironment('DANBOORU_URL');

  static String sentryDsn = const String.fromEnvironment('SENTRY_DSN');

  static String stage = const String.fromEnvironment('STAGE');

  static Stage stageEnum = stage == 'prod' ? Stage.prod : Stage.dev;
}

enum Stage { dev, prod }
