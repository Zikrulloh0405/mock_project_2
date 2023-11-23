import 'package:http/http.dart';


class NetworkServices {
  static const String baseUrl = "655deeb89f1e1093c59a2ed1.mockapi.io";

  static const String apiProduct = "/product";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    return response.body;
  }
}
