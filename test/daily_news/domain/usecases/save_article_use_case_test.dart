import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/save_article_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';

import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  late SaveArticleUseCase saveArticleUseCase;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    saveArticleUseCase = SaveArticleUseCase(mockArticleRepository);
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

  test('should save article to the repository', () async {
    // Arrange
    when(mockArticleRepository.saveArticle(article))
        .thenAnswer((_) async => Future.value());

    // Act
    await saveArticleUseCase.call(params: article);

    // Assert
    verify(mockArticleRepository.saveArticle(article)).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });
}
