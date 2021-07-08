// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItemResponse _$NewsItemResponseFromJson(Map<String, dynamic> json) {
  return NewsItemResponse(
    json['id'] as int,
    json['link'] as String,
    json['titulo'] as String,
    json['descripcion'] as String,
    json['fecha'] as String,
    json['foto'] as String,
    json['destacada'] as int,
    json['tipo'] as String,
    json['dorado'] as int,
  );
}

Map<String, dynamic> _$NewsItemResponseToJson(NewsItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'titulo': instance.titulo,
      'descripcion': instance.descripcion,
      'fecha': instance.fecha,
      'foto': instance.foto,
      'destacada': instance.destacada,
      'tipo': instance.tipo,
      'dorado': instance.dorado,
    };
