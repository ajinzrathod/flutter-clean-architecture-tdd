import 'package:floor/floor.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';

// add these 2 import after build_runner: sqflite, async
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

part 'app_database.g.dart';

//  flutter pub run build_runner build
@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase {
  ArticleDao
      get ArticleDAO; // this DAO works only in captial, need to check why
}
