import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:taskday1/mainScreen/model/displayDataListModel.dart';

class DisplayDataApi {
  final Dio dio = Dio();

  Future<List<Product>> getData() async {
    try {
      Response response = await dio.get('https://api.restful-api.dev/objects');
      log("Response: ${response.data}");

      List<dynamic> data = response.data;
      List<Product> productListData = data.map((e) => Product.fromJson(e)).toList();
      return productListData;
    } catch (e) {
      log('Error: $e');
      return [];
    }
  }
}
