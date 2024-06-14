import 'package:equatable/equatable.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';

abstract class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;

  const LocalArticleEvent({this.article});

  @override
  List<Object> get props => [article!];
}

class GetSavedArticlesEvent extends LocalArticleEvent {
  const GetSavedArticlesEvent();
}

class DeleteArticleEvent extends LocalArticleEvent {
  const DeleteArticleEvent(ArticleEntity article) : super(article: article);
}

class SaveArticleEvent extends LocalArticleEvent {
  const SaveArticleEvent(ArticleEntity article) : super(article: article);
}
