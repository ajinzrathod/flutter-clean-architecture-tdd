import 'package:http/http.dart' as http;
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/remote/remote_news_api_service.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

@GenerateMocks([RemoteNewsApiService, AppDatabase, ArticleRepository])
@GenerateNiceMocks([MockSpec<Dio>()])
void main() {}
