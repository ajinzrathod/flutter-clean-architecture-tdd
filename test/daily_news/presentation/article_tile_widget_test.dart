import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/widgets/article_tile_widget.dart';

class MockFunction extends Mock {
  void call(ArticleEntity article);
}

void main() {
  const article = ArticleEntity(
    id: 1,
    title: 'Article 1',
    description: 'Description 1',
    urlToImage: 'https://example.com/image1.jpg',
    publishedAt: '2024-06-21',
  );

  testWidgets('displays article information', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ArticleTileWidget(
            article: article,
          ),
        ),
      ),
    );

    expect(find.text('Article 1'), findsOneWidget);
    expect(find.text('Description 1'), findsOneWidget);
    expect(find.text('2024-06-21'), findsOneWidget);
  });

  testWidgets('triggers onArticlePressed when tapped',
      (WidgetTester tester) async {
    final mockOnArticlePressed = MockFunction();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ArticleTileWidget(
            article: article,
            onArticlePressed: mockOnArticlePressed.call,
          ),
        ),
      ),
    );

    await tester.tap(find.text('Article 1'));
    verify(mockOnArticlePressed(article)).called(1);
  });

  testWidgets('displays and triggers onRemove when isRemovable is true',
      (WidgetTester tester) async {
    final mockOnRemove = MockFunction();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ArticleTileWidget(
            article: article,
            isRemovable: true,
            onRemove: mockOnRemove.call,
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.remove_circle_outline), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove_circle_outline));
    verify(mockOnRemove(article)).called(1);
  });

  testWidgets('does not display remove icon when isRemovable is false',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ArticleTileWidget(
            article: article,
            isRemovable: false,
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.remove_circle_outline), findsNothing);
  });
}
