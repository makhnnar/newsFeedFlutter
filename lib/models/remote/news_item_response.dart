import 'package:json_annotation/json_annotation.dart';

part 'news_item_response.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsItemResponse {

  int id = 0;
  String link = "";
  String titulo = "";
  String descripcion = "";
  String fecha = "";
  String foto = "";
  int destacada = 0;
  String tipo = "";
  int dorado = 0;

  NewsItemResponse(
    this.id,
    this.link,
    this.titulo,
    this.descripcion,
    this.fecha,
    this.foto,
    this.destacada,
    this.tipo,
    this.dorado
  );

  factory NewsItemResponse.fromJson(
      Map<String, dynamic> json
  ) => _$NewsItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemResponseToJson(this);

  @override
  String toString() {
    return 'NewsItemResponse{id: $id, link: $link, titulo: $titulo, descripcion: $descripcion, fecha: $fecha, foto: $foto, destacada: $destacada, tipo: $tipo, dorado: $dorado}';
  }
}