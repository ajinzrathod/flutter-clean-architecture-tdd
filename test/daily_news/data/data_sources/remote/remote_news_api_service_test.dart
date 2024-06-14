import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/remote/remote_news_api_service.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  const disabled = true;

  late MockDio mockDio;
  late RemoteNewsApiService remoteNewsApiService;

  setUp(() {
    mockDio = MockDio();

    when(mockDio.options).thenReturn(BaseOptions());

    remoteNewsApiService = RemoteNewsApiService(mockDio);
  });

  group('RemoteNewsApiService', () {
    test('getNewsArticles returns list of articles on successful request',
        () async {
      when(mockDio.fetch<List<dynamic>>(any)).thenAnswer((invocation) async {
        final requestOptions =
            invocation.positionalArguments[0] as RequestOptions;
        return Response<List<dynamic>>(
          requestOptions: requestOptions,
          data: [
            {
              'id': 1,
              'author': 'Author 1',
              'title': 'Title 1',
              'description': 'Description 1',
              'url': 'http://example.com/1',
              'urlToImage': 'http://example.com/image1.jpg',
              'publishedAt': '2024-06-14T00:00:00Z',
              'content': 'Content 1',
            },
            {
              'id': 2,
              'author': 'Author 2',
              'title': 'Title 2',
              'description': 'Description 2',
              'url': 'http://example.com/2',
              'urlToImage': 'http://example.com/image2.jpg',
              'publishedAt': '2024-06-14T00:00:00Z',
              'content': 'Content 2',
            },
          ],
          statusCode: 200,
        );
      });

      final response = await remoteNewsApiService.getNewsArticles();

      expect(response.data, isA<List<ArticleModel>>());
      expect(response.data.length, 2);
      expect(response.data[0].id, 1);
      expect(response.data[0].author, 'Author 1');
    });
  });
}
