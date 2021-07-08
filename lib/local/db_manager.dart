
import 'package:news_feed_with_db/models/db/news_db_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBManager{

  Database database;

  Future<Database> getDbInstance() async{
    Database db = await openDatabase(
      join(
          await getDatabasesPath(),
          'doggie_database.db'
      ),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE news('
              'id INTEGER PRIMARY KEY,'
              'link TEXT,'
              'titulo TEXT,'
              'descripcion TEXT,'
              'fecha TEXT,'
              'foto TEXT,'
              'destacada INTEGER,'
              'tipo TEXT,'
              'dorado INTEGER'
              ')',
        );
      },
      version: 1,
    );
    return db;
  }

  void insertNews(NewsDBModel newsDBModel) async {
      print("llamando a insertar");
      if(database==null){
        database = await getDbInstance();
      }
      if(database!=null&&newsDBModel!=null){
        print("Insertando");
        await database.insert(
          'news',
          newsDBModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
        print("Inserto");
      }
  }

  Future<List<NewsDBModel>> news() async {
    if(database==null){
      database = await getDbInstance();
    }
    final List<Map<String, dynamic>> maps = await database.query('news');
    return List.generate(
        maps.length, (i) {
          return NewsDBModel(
            maps[i]['id'],
            maps[i]['link'],
            maps[i]['titulo'],
            maps[i]['descripcion'],
            maps[i]['fecha'],
            maps[i]['foto'],
            maps[i]['destacada'],
            maps[i]['tipo'],
            maps[i]['dorado']
          );
        }
    );
  }

}