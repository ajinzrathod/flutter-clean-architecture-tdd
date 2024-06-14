import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_article_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';
import 'package:mockito/annotations.dart';

import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  late GetArticleUseCase getArticleUseCase;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    getArticleUseCase = GetArticleUseCase(mockArticleRepository);
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

  test('should get list of articles from the repository', () async {
    // Arrange
    when(mockArticleRepository.getNewsArticles())
        .thenAnswer((_) async => DataSuccess<List<ArticleEntity>>(articles));

    // Act
    final result = await getArticleUseCase.call();

    // Assert
    expect(result, isA<DataSuccess<List<ArticleEntity>>>());
    expect((result as DataSuccess<List<ArticleEntity>>).data, articles);
    verify(mockArticleRepository.getNewsArticles()).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });

  test('should return error when repository fails', () async {
    // Arrange
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
    );
    when(mockArticleRepository.getNewsArticles())
        .thenAnswer((_) async => DataFailed<List<ArticleEntity>>(error));

    // Act
    final result = await getArticleUseCase.call();

    // Assert
    expect(result, isA<DataFailed<List<ArticleEntity>>>());
    expect((result as DataFailed<List<ArticleEntity>>).exception, error);
    verify(mockArticleRepository.getNewsArticles()).called(1);
    verifyNoMoreInteractions(mockArticleRepository);
  });
}
