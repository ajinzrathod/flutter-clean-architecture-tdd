import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jai_swaminarayan/env.dart';
import 'package:dio/dio.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/pages/home/daily_news_page.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/daily_news_mock_generate_test_helper.mocks.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  late MockRemoteArticlesBloc mockRemoteArticlesBloc;

  setUpAll(() {
    AppEnvironment.setUpEnv(Environment.local);
    AppEnvironment.title = 'Test App Title';
  });

  setUp(() {
    mockRemoteArticlesBloc = MockRemoteArticlesBloc();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<RemoteArticlesBloc>(
        create: (_) => mockRemoteArticlesBloc,
        child: const DailyNews(),
      ),
    );
  }

  testWidgets('shows loading indicator when state is RemoteArticlesLoading',
      (WidgetTester tester) async {
    when(mockRemoteArticlesBloc.state)
        .thenReturn(const RemoteArticlesLoading());

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.byType(CupertinoActivityIndicator), findsOneWidget);
  });

  testWidgets('shows error icon when state is RemoteArticlesException',
      (WidgetTester tester) async {
    final dioException = DioException(
      requestOptions: RequestOptions(path: 'test_path'),
      error: 'Failed to load articles',
      type: DioExceptionType.unknown,
    );

    when(mockRemoteArticlesBloc.state)
        .thenReturn(RemoteArticlesException(dioException));
    when(mockRemoteArticlesBloc.stream).thenAnswer(
        (_) => Stream.fromIterable([RemoteArticlesException(dioException)]));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.byIcon(Icons.refresh), findsOneWidget);
  });

  testWidgets('shows list of articles when state is RemoteArticlesDone',
      (WidgetTester tester) async {
    final articles = [
      const ArticleEntity(
        id: 1,
        title: 'Article 1',
        description: 'Description 1',
        urlToImage: 'https://example.com/image1.jpg',
        publishedAt: '2024-06-21',
      ),
      const ArticleEntity(
        id: 2,
        title: 'Article 2',
        description: 'Description 2',
        urlToImage: 'https://example.com/image2.jpg',
        publishedAt: '2024-06-21',
      ),
    ];

    when(mockRemoteArticlesBloc.state).thenReturn(RemoteArticlesDone(articles));
    when(mockRemoteArticlesBloc.stream)
        .thenAnswer((_) => Stream.fromIterable([RemoteArticlesDone(articles)]));

    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.byType(ListView), findsOneWidget);
    expect(find.text('Article 1'), findsOneWidget);
    expect(find.text('Description 1'), findsOneWidget);
    expect(find.text('Article 2'), findsOneWidget);
    expect(find.text('Description 2'), findsOneWidget);
  });
}
