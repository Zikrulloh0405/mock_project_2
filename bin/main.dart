// import 'dart:convert';

import 'modelling/modelling.dart';
import 'network_services/network_services.dart';

void main(List<String> args) async {
  Task2 task2 = Task2(Device(
      'Laptop',
      'Asus',
      'F-15',
      2022,
      'Black',
      Display('type', '1920-1080', '144HZ'),
      Processor('1080', 'F-15', 5, '123'),
      Memory('16', '512', true, '1TB'),
      Camera(Main('1000', '8000'), Front('9000', '80000')),
      Battery('6000', 'aa', true),
      Connectivity('bezprovodnoy', 'WiFi6', 'Bluetooth 6', ['USB', 'USB-C']),
      Operating_system(['Windows-11'])));

  Map<String, dynamic> map = task2.toJson();

  String data = await NetworkService.postData(map);
  print(data);
}
