import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

void main() {
  late MockGetArticleUseCase mockGetArticleUseCase;
  late RemoteArticlesBloc remoteArticlesBloc;

  setUp(() {
    mockGetArticleUseCase = MockGetArticleUseCase();
    remoteArticlesBloc = RemoteArticlesBloc(mockGetArticleUseCase);
  });

  tearDown(() {
    remoteArticlesBloc.close();
  });

  final articles = [
    const ArticleEntity(id: 1, title: 'Test Article', content: 'Test Content'),
    const ArticleEntity(
        id: 2, title: 'Another Article', content: 'More Content'),
  ];

  final emptyArticles = <ArticleEntity>[];

  final exception = DioException(
    requestOptions: RequestOptions(path: ''),
    error: 'Something went wrong',
    type: DioExceptionType.unknown,
  );

  blocTest<RemoteArticlesBloc, RemoteArticlesState>(
    'emits [RemoteArticlesLoading, RemoteArticlesDone] when GetArticles is added and data is successfully fetched',
    build: () {
      when(mockGetArticleUseCase()).thenAnswer(
        (_) async => DataSuccess(articles),
      );
      return remoteArticlesBloc;
    },
    act: (bloc) => bloc.add(const GetArticles()),
    expect: () => [
      const RemoteArticlesLoading(),
      RemoteArticlesDone(articles),
    ],
  );

  blocTest<RemoteArticlesBloc, RemoteArticlesState>(
    'emits [RemoteArticlesLoading, RemoteArticlesException] when GetArticles is added and fetching data fails',
    build: () {
      when(mockGetArticleUseCase()).thenAnswer(
        (_) async => DataFailed(exception),
      );
      return remoteArticlesBloc;
    },
    act: (bloc) => bloc.add(const GetArticles()),
    expect: () => [
      const RemoteArticlesLoading(),
      RemoteArticlesException(exception),
    ],
  );

  blocTest<RemoteArticlesBloc, RemoteArticlesState>(
    'emits [RemoteArticlesLoading, RemoteArticlesDone] with empty articles when GetArticles is added and data is empty',
    build: () {
      when(mockGetArticleUseCase()).thenAnswer(
        (_) async => DataSuccess(emptyArticles),
      );
      return remoteArticlesBloc;
    },
    act: (bloc) => bloc.add(const GetArticles()),
    expect: () => [
      const RemoteArticlesLoading(),
      RemoteArticlesDone(emptyArticles),
    ],
  );
}
