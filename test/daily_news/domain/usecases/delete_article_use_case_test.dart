import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/delete_article_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';
import 'package:mockito/annotations.dart';
import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  late DeleteArticleUseCase deleteArticleUseCase;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    deleteArticleUseCase = DeleteArticleUseCase(mockArticleRepository);
  });

  const article = ArticleEntity(
    id: 1,
    author: 'Author 1',
    title: 'Title 1',
    description: 'Description 1',
    url: 'https://example.com/1',
    urlToImage: 'https://example.com/image1.jpg',
    publishedAt: '2023-01-01',
    content: 'Content 1',
  );

  test('should delete article from the repository', () async {
    // Arrange
    when(mockArticleRepository.deleteArticle(article))
        .thenAnswer((_) async => Future.value());

    // Act
    await deleteArticleUseCase.call(params: article);

    // Assert
    verify(mockArticleRepository.deleteArticle(article)).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });
}
