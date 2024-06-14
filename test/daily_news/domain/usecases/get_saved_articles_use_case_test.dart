import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_saved_articles_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';

import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  late GetSavedArticleUseCase getSavedArticleUseCase;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    getSavedArticleUseCase = GetSavedArticleUseCase(mockArticleRepository);
  });

  final List<ArticleEntity> articles = [
    const ArticleEntity(
      id: 1,
      author: 'Author 1',
      title: 'Title 1',
      description: 'Description 1',
      url: 'https://example.com/1',
      urlToImage: 'https://example.com/image1.jpg',
      publishedAt: '2023-01-01',
      content: 'Content 1',
    ),
    const ArticleEntity(
      id: 2,
      author: 'Author 2',
      title: 'Title 2',
      description: 'Description 2',
      url: 'https://example.com/2',
      urlToImage: 'https://example.com/image2.jpg',
      publishedAt: '2023-01-02',
      content: 'Content 2',
    ),
  ];

  test('should get list of saved articles from the repository', () async {
    // Arrange
    when(mockArticleRepository.getSavedArticles())
        .thenAnswer((_) async => articles);

    // Act
    final result = await getSavedArticleUseCase.call();

    // Assert
    expect(result, articles);
    verify(mockArticleRepository.getSavedArticles()).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });

  test('should return empty list when no saved articles', () async {
    // Arrange
    when(mockArticleRepository.getSavedArticles()).thenAnswer((_) async => []);

    // Act
    final result = await getSavedArticleUseCase.call();

    // Assert
    expect(result, []);
    verify(mockArticleRepository.getSavedArticles()).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });
}
