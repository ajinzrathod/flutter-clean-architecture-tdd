import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/core/usecase/usecase.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) async {
    return _articleRepository.getNewsArticles();
  }
}
