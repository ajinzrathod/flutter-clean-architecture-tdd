import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/core/usecase/usecase.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';

class SaveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? params}) async {
    return _articleRepository.saveArticle(params!);
  }
}
