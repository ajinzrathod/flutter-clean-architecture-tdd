import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

import '../../../../domain/entities/article_entity.dart';

abstract class LocalArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? exception;

  const LocalArticleState({this.articles, this.exception});

  @override
  List<Object> get props => [articles!];
}

class LocalArticlesLoadingState extends LocalArticleState {
  const LocalArticlesLoadingState();
}

class LocalArticlesDoneState extends LocalArticleState {
  const LocalArticlesDoneState(List<ArticleEntity> articles)
      : super(articles: articles);
}

class LocalArticlesExceptionState extends LocalArticleState {
  const LocalArticlesExceptionState(DioException exception)
      : super(exception: exception);
}