import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:jai_swaminarayan/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_news_api_service.g.dart';

// flutter pub run build_runner build
@RestApi(baseUrl: newsAPIBaseURL)
abstract class RemoteNewsApiService {
  factory RemoteNewsApiService(Dio dio) = _RemoteNewsApiService;

  @GET("articles/")
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles();
}
