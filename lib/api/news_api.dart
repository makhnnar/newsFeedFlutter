
import 'package:dio/dio.dart';
import 'package:news_feed_with_db/models/remote/news_list_response.dart';
import 'package:retrofit/http.dart';

part 'news_api.g.dart';

@RestApi(baseUrl: "http://192.168.0.103:3000/")
abstract class NewsApi {

  factory NewsApi(
      Dio dio,
      {String baseUrl}
  ) = _NewsApi;

  @GET("/noticias")
  Future<NewsListResponse> getNews();

}
