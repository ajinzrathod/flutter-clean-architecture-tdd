import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

import '../../../../domain/entities/article_entity.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? exception;

  const RemoteArticlesState({this.articles, this.exception});

  @override
  List<Object?> get props => [articles, exception];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticlesException extends RemoteArticlesState {
  const RemoteArticlesException(DioException exception)
      : super(exception: exception);
}
