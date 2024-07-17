import 'dart:io';

import 'package:dio/dio.dart';
import 'package:taskday1/model/postModel.dart';

class ApiRepository {
  final Dio dio = Dio();
  Future<List<PostModel>> fetchPost() async {
    try {
      Response response =
          await dio.get("https://jsonplaceholder.typicode.com/comments");
      print("Response---$response");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<PostModel> postModel =
            data.map((e) => PostModel.fromJson(e)).toList();
        return postModel;
      }
    } on SocketException {
      Exception("Error while fetching ");
    }
    throw await {Exception("Error while fetching ")};
  }
}
