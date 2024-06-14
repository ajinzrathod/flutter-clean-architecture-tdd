import 'package:floor/floor.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';

@dao
abstract class ArticleDao {
  @Insert()
  Future<void> insertArticle(ArticleModel article);

  @delete
  Future<void> deleteArticle(ArticleModel article);

  @Query('SELECT * from articles')
  Future<List<ArticleModel>> getArticles();
}
