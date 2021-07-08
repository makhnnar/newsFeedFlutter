// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsListResponse _$NewsListResponseFromJson(Map<String, dynamic> json) {
  return NewsListResponse(
    json['status'] as String,
    (json['data'] as List)?.map((e) => e == null
        ? null
        : NewsItemResponse.fromJson(e as Map<String, dynamic>)),
  );
}

Map<String, dynamic> _$NewsListResponseToJson(NewsListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };
