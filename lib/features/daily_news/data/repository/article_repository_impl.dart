import 'dart:io';

import 'package:jai_swaminarayan/core/constants/constants.dart';
import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/remote/remote_news_api_service.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:retrofit/dio.dart';
import 'package:dio/dio.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';

import '../data_sources/local/app_database.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final RemoteNewsApiService _newsApiService;
  final AppDatabase _appDatabase;

  ArticleRepositoryImpl(this._newsApiService, this._appDatabase);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
          error: 'Failed to fetch articles',
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<ArticleModel>> getSavedArticles() async {
    return _appDatabase.ArticleDAO.getArticles();
  }

  @override
  Future<void> deleteArticle(ArticleEntity article) {
    return _appDatabase.ArticleDAO.deleteArticle(
        ArticleModel.fromEntity(article));
  }

  @override
  Future<void> saveArticle(ArticleEntity article) {
    return _appDatabase.ArticleDAO.insertArticle(
        ArticleModel.fromEntity(article));
  }
}
