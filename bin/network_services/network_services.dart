import 'package:http/http.dart';



class NetworkServices {
  static const String baseUrl = "65606ee083aba11d99d0cb16.mockapi.io";
  static const String apiProduct = "/product";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    return response.body;
  }
}
