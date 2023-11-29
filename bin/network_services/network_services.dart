import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "65570eb3bd4bcef8b611f610.mockapi.io";
  static const String apiProduct = "/dart/project/device";
  static const String apiDeleted = "/dart/project/device";

  static const Map<String, String> headers = {
    "Content-type": "application/json"
  };

  static Future<String> postData(Map<String, dynamic> map) async {
    Uri url = Uri.https(baseUrl, apiProduct);
    Response response =
        await post(url, body: jsonEncode(map), headers: headers);
    return "Yoour data has been uploaded succesfully  ${response.body}";
  }

  static Future<String> deleteData(String id) async {
    Uri uri = Uri.https(baseUrl, "$apiProduct/$id");
    Response response = await delete(uri, headers: headers);
    return "Deleted succesfully ${response.body}";
  }
}
