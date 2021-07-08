
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_feed_with_db/api/news_api.dart';
import 'package:news_feed_with_db/local/db_manager.dart';
import 'package:news_feed_with_db/models/NewsMapper.dart';
import 'package:news_feed_with_db/models/db/news_db_model.dart';

class NewsProvider extends ChangeNotifier {

  NewsApi api;
  DBManager dbManager;
  NewsMapper newsMapper;

  List<NewsDBModel> noticias = [];

  NewsProvider(){
    final dio = Dio();   // Provide a dio instance
    dio.options.headers["Demo-Header"] = "demo header";   // config your dio headers globally
    api = NewsApi(dio);
    dbManager = DBManager();
    newsMapper = NewsMapper();
    getFromLocal();
    getFromRemote();
  }

  Future getFromRemote() async {
    var apiValue = await api.getNews();
    if(
      apiValue!=null&&
      apiValue.data!=null
    ){
      print("cant noticias api: ${apiValue.data.length}");
      apiValue.data.forEach(
              (e) => dbManager.insertNews(
              newsMapper.fromRemotetoDomain(e)
          )
      );
    }
  }
  
  Future getFromLocal() async {
    var dbValue = await dbManager.news();
    if(dbValue!=null){
      /*print("cant noticias db: ${dbValue.length}");
      dbValue.map(
              (e) => print(e.toString())
      );*/
      noticias = dbValue;
      notifyListeners();
    }
  }

}