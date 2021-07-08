
import 'package:news_feed_with_db/models/db/news_db_model.dart';
import 'package:news_feed_with_db/models/remote/news_item_response.dart';

abstract class DataMapper<R,DB>{

  DB fromRemotetoDomain(R remote);
  R fromDomaintoRemote(DB domain);

}

class NewsMapper extends DataMapper<NewsItemResponse,NewsDBModel>{

  @override
  NewsItemResponse fromDomaintoRemote(
      NewsDBModel domain
  ) {
    return NewsItemResponse(0, "link", "titulo", "descripcion", "fecha", "foto", 0, "tipo", 0);
  }

  @override
  NewsDBModel fromRemotetoDomain(
      NewsItemResponse remote
  ) {
    NewsDBModel toReturn = NewsDBModel(
        remote.id,
        validateNull(remote.link),
        validateNull(remote.titulo),
        validateNull(remote.descripcion),
        validateNull(remote.fecha),
        validateNull(remote.foto),
        remote.destacada,
        validateNull(remote.tipo),
        remote.dorado
    );
    print("form mapper: ${toReturn.toString()}");
    return toReturn;
  }

  String validateNull(String str){
    return str!=null?str:"";
  }

}