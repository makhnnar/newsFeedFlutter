
class NewsDBModel{

  int id = 0;
  String link = "";
  String titulo = "";
  String descripcion = "";
  String fecha = "";
  String foto = "";
  int destacada = 0;
  String tipo = "";
  int dorado = 0;

  NewsDBModel(
    this.id,
    this.link,
    this.titulo,
    this.descripcion,
    this.fecha,
    this.foto,
    this.destacada,
    this.tipo,
    this.dorado,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'link': link,
      'titulo': titulo,
      'descripcion': descripcion,
      'fecha': fecha,
      'foto': foto,
      'destacada': destacada,
      'tipo': tipo,
      'dorado': dorado,
    };
  }

  @override
  String toString() {
    return 'NewsDBModel{id: $id, link: $link, titulo: $titulo, descripcion: $descripcion, fecha: $fecha, foto: $foto, destacada: $destacada, tipo: $tipo, dorado: $dorado}';
  }
}