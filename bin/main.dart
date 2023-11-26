import 'modelling/modelling.dart';
import 'network_services/network_services.dart';

void main(List<String> args) async {
  String data = await NetworkServices.getData(NetworkServices.apiProduct);

  List<Product> list1 = fromListToObject(data);
  print(list1[0].availability.offline.store1);

  for (var i = 0; i < list1.length; i++) {
    print("Product ${i + 1} ${list1[i].details.specs.screen.type}");
  }
}
