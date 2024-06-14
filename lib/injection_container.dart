import 'package:get_it/get_it.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/remote/remote_news_api_service.dart';
import 'package:dio/dio.dart';
import 'package:jai_swaminarayan/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/delete_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_saved_articles_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/save_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/local/local_article_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

import 'features/daily_news/domain/repository/article_repository.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  sl.registerSingleton<AppDatabase>(database);

  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<RemoteNewsApiService>(RemoteNewsApiService(sl()));
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl(), sl()));
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  sl.registerSingleton<GetSavedArticleUseCase>(GetSavedArticleUseCase(sl()));
  sl.registerSingleton<DeleteArticleUseCase>(DeleteArticleUseCase(sl()));
  sl.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(sl()));
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
  sl.registerFactory<LocalArticleBloc>(
      () => LocalArticleBloc(sl(), sl(), sl()));
}
