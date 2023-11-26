import 'dart:convert';

List<Product> fromListToObject(String data) =>
    List<Product>.from(jsonDecode(data).map((e) => Product.fromJson(e)));

String objectToData(Product product) => jsonEncode(product.toJson);

class Product {
  late String productId;
  late String productName;
  late double price;
  late bool inStock;
  late Availability availability;
  late Details details;

  Product(
      {required this.productId,
      required this.productName,
      required this.price,
      required this.inStock,
      required this.availability,
      required this.details});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json["productId"];
    productName = json["productName"];
    price = json["price"];
    inStock = json["inStock"];
    availability = Availability.fromJson(json["availability"]);
    details = Details.fromJson(json["details"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "productId": productId,
      "productName": productName,
      "price": price,
      "inStock": productId,
      "availability": availability,
      "details": details,
    };
  }
}

//! Class Availibilty
//! - Starts - !//
class Availability {
  late bool online;
  late Offline offline;

  Availability.fromJson(Map<String, dynamic> json) {
    online = json["online"];
    offline = Offline.fromJson(json["offline"]);
  }

  Map<String, dynamic> toJson() {
    return {"online": online, "offline": offline};
  }
}

class Offline {
  late int store1;
  late int store2;
  late int store3;

  Offline.fromJson(Map<String, dynamic> json) {
    store1 = json["store1"];
    store2 = json["store2"];
    store3 = json["store3"];
  }

  Map<String, dynamic> toJson() {
    return {
      "store1": store1,
      "store2": store2,
      "store3": store3,
    };
  }
}
//! - Ends - !//

//! Details Class
//! - Starts - !//
class Details {
  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic> json) {
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);
  }

  Map<String, dynamic> toJson() {
    return {"brand": brand, "model": model, "specs": specs};
  }
}

class Specs {
  late Screen screen;
  late Storage storage;
  late Ram ram;
  Graphics? graphics;
  Camera? camera;
  late Battery battery;
  late OperatingSystem operatingSystem;
  late Connectivity connectivity;
  late Warranty warranty;

  Specs.fromJson(Map<String, dynamic> json) {
    screen = Screen.fromJson(json["screen"]);
    storage = Storage.fromJson(json["storage"]);
    ram = Ram.fromJson(json["ram"]);
    camera = json["camera"] != null ? Camera.fromJson(json["camera"]) : null;
    graphics =
        json["graphics"] != null ? Graphics.fromJson(json["graphics"]) : null;
    battery = Battery.fromJson(json["battery"]);
    operatingSystem = OperatingSystem.fromJson(json["operatingSystem"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    warranty = Warranty.fromJson(json["warranty"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "screen": screen,
      "storage": storage,
      "ram": ram,
      "graphics": graphics,
      "camera": camera,
      "battery": battery,
      "operatingSystem": operatingSystem,
      "connectivity": connectivity,
      "warranty": warranty,
    };
  }
}

class Camera {
  Rear? rear;
  Front? font;

  Camera.fromJson(Map<String, dynamic> json) {
    rear = Rear.fromJson(json["rear"]);
    font = Front.fromJson(json["front"]);
  }

  Map<String, dynamic> toJson() => {"rear": rear, "font": font};
}

class Front {
  String? resolution, aperture;

  Front.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson() => {
        "resolution": resolution,
        "aperture": aperture,
      };
}

class Rear {
  String? resolution, aperture;

  Rear.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson() => {
        "resolution": resolution,
        "aperture": aperture,
      };
}

class Screen {
  String? type;
  double? size;
  String? resolution;

  Screen.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "size": size,
      "resolution": resolution,
    };
  }
}

class Storage {
  String? type;
  String? capacity;

  Storage.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    capacity = json["capacity"];
  }

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "capacity": capacity,
    };
  }
}

class Ram {
  String? type, capacity, speed;

  Ram.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    capacity = json["capacity"];
    speed = json["speed"];
  }

  Map<String, dynamic> toJson() {
    return {"type": type, "capacity": capacity, "speed": speed};
  }
}

class Graphics {
  String? type;

  Graphics.fromJson(Map<String, dynamic> json) {
    type = json["type"];
  }

  Map<String, dynamic> toJson() => {"type": type};
}

class Battery {
  String? capacity, type;
  Charging? charging;

  Battery.fromJson(Map<String, dynamic> json) {
    capacity = json["capacity"];
    type = json["type"];
    charging = Charging.fromJson(json["charging"]);
  }
}

class Charging {
  String? type;
  int? wattage;

  Charging.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    wattage = json["wattage"];
  }
}

class OperatingSystem {
  String? name, version, customSkin;

  OperatingSystem.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    version = json["version "];
    customSkin = json["customSkin "];
  }

  Map<String, dynamic> toJson() =>
      {"name": name, "version": version, "customSkin": customSkin};
}

class Connectivity {
  String? wifi, bluetooth;
  int? thunderboltPorts;
  bool? nfc, hdmi;
  UsbPorts? usbPorts;

  Connectivity.fromJson(Map<String, dynamic> json) {
    wifi = json["wifi"];
    nfc = json["nfc"];
    bluetooth = json["bluetooth"];
    thunderboltPorts = json["thunderboltPorts"];
    hdmi = json["hdmi"];
    usbPorts =
        json["usbPorts"] != null ? UsbPorts.fromJson(json["usbPorts"]) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      "wifi": wifi,
      "bluetooth": bluetooth,
      "thunderboltPorts": thunderboltPorts,
      "hdmi": hdmi,
      "usbPorts": usbPorts,
      "nfc": nfc,
    };
  }
}

class UsbPorts {
  int? typeA, typeC;

  UsbPorts.fromJson(Map<String, dynamic> json) {
    typeA = json["typeA"];
    typeC = json["typeC"];
  }

  Map<String, dynamic> toJson() => {"typeA": typeA, "typeC": typeC};
}

class Warranty {
  int? months;
  String? type;

  Warranty.fromJson(Map<String, dynamic> json) {
    months = json["months"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() => {"months": months, "type": type};
}
