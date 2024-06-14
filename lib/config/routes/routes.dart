import 'package:flutter/material.dart';

import '../../features/daily_news/domain/entities/article_entity.dart';
import '../../features/daily_news/presentation/pages/article_detail/article_detail.dart';
import '../../features/daily_news/presentation/pages/home/daily_news_page.dart';
import '../../features/daily_news/presentation/pages/saved_article/saved_articles.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const DailyNews());
      case '/ArticleDetail':
        return _materialRoute(
            ArticleDetailsView(article: settings.arguments as ArticleEntity));
      case '/SavedArticles':
        return _materialRoute(const SavedArticles());
      default:
        return _materialRoute(const DailyNews());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
