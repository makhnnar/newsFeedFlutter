import 'package:json_annotation/json_annotation.dart';

import 'news_item_response.dart';

part 'news_list_response.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsListResponse {

  String status = "";
  Iterable<NewsItemResponse> data = [];

  NewsListResponse(
    this.status,
    this.data
  );

  factory NewsListResponse.fromJson(
      Map<String, dynamic> json
  ) => _$NewsListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsListResponseToJson(this);

  @override
  String toString() {
    return 'NewsListResponse{status: $status, data: ${data.toString()}}';
  }
}