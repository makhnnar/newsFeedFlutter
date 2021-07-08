import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'task_api.g.dart';

@RestApi(baseUrl: "http://192.168.0.103:3000/")
abstract class TaskApi {

  factory TaskApi(
      Dio dio,
      {String baseUrl}
      ) = _TaskApi;

  @GET("/tasks")
  Future<List<Task>> getTasks();

}

@JsonSerializable()
class Task {
  String id;
  String name;
  String avatar;
  String createdAt;

  Task({
    this.id,
    this.name,
    this.avatar,
    this.createdAt
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}