import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';

import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  late MockRemoteNewsApiService mockRemoteNewsApiService;
  late MockAppDatabase mockAppDatabase;
  late ArticleRepositoryImpl articleRepository;

  setUp(() {
    mockRemoteNewsApiService = MockRemoteNewsApiService();
    mockAppDatabase = MockAppDatabase();
    articleRepository =
        ArticleRepositoryImpl(mockRemoteNewsApiService, mockAppDatabase);
  });

  group('getNewsArticles', () {
    test('returns a list of articles if the http call completes successfully',
        () async {
      // Arrange
      final data = <ArticleModel>[
        const ArticleModel(id: 1, title: 'Article 1'),
        const ArticleModel(id: 2, title: 'Article 2'),
      ];
      final response = Response<List<ArticleModel>>(
        statusCode: 200,
        requestOptions: RequestOptions(path: '/articles'),
      );
      final httpResponse =
          Future.value(HttpResponse<List<ArticleModel>>(data, response));
      when(mockRemoteNewsApiService.getNewsArticles())
          .thenAnswer((_) async => httpResponse);

      // Act
      final result = await articleRepository.getNewsArticles();

      // Assert
      expect(result.data, isA<List<ArticleModel>>());
      expect(result.data, unorderedEquals(data));
    });
  });

  test('returns DataFailed if the HTTP call returns an unsuccessful status',
      () async {
    // Arrange
    var articles = <ArticleModel>[];
    final httpResponse = Future.value(HttpResponse<List<ArticleModel>>(
      articles,
      Response(
        statusCode: HttpStatus.forbidden,
        requestOptions: RequestOptions(path: '/articles'),
      ),
    ));

    when(mockRemoteNewsApiService.getNewsArticles())
        .thenAnswer((_) async => httpResponse);

    // Act
    final result = await articleRepository.getNewsArticles();

    // Assert
    expect(result, isA<DataFailed>());
    expect((result as DataFailed).exception, isA<DioException>());
    expect(
        (result.exception as DioException).error, 'Failed to fetch articles');
  });

  test('should return DataFailed on DioException', () async {
    // Arrange
    when(mockRemoteNewsApiService.getNewsArticles()).thenThrow(DioException(
      requestOptions: RequestOptions(path: '/articles'),
    ));

    // Act
    final result = await articleRepository.getNewsArticles();

    // Assert
    expect(result, isA<DataFailed>());
  });
}
