import 'network_services/network_services.dart';

void main(List<String> args) async {
  String data = await NetworkServices.getData(NetworkServices.apiProduct);
  print(data);
}
