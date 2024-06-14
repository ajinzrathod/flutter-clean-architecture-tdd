import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart';
import '../../../helpers/json_reader_test_helper.dart';

void main() {
  group('ArticleModel', () {
    test('should correctly convert from JSON', () {
      // Arrange
      final jsonString = readJsonAsString('helpers/json/article.json');
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      // Act
      final result = ArticleModel.fromJson(jsonMap);

      // Assert
      expect(result.id, jsonMap['id']);
      expect(result.author, jsonMap['author']);
      expect(result.title, jsonMap['title']);
      expect(result.description, jsonMap['description']);
      expect(result.url, jsonMap['url']);
      expect(result.urlToImage, jsonMap['urlToImage']);
      expect(result.publishedAt, jsonMap['publishedAt']);
      expect(result.content, jsonMap['content']);
    });

    test('should correctly convert from Entity', () {
      // Arrange
      const entity = ArticleEntity(
        id: 1,
        author: 'Author',
        title: 'Title',
        description: 'Description',
        url: 'https://example.com',
        urlToImage: 'https://example.com/image.jpg',
        publishedAt: '2021-01-01T00:00:00Z',
        content: 'Content',
      );

      // Act
      final result = ArticleModel.fromEntity(entity);

      // Assert
      expect(result.id, entity.id);
      expect(result.author, entity.author);
      expect(result.title, entity.title);
      expect(result.description, entity.description);
      expect(result.url, entity.url);
      expect(result.urlToImage, entity.urlToImage);
      expect(result.publishedAt, entity.publishedAt);
      expect(result.content, entity.content);
    });
  });
}
