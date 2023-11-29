import 'package:http/http.dart';

class Task2 {
  late Device device;
  Task2(this.device);
  Task2.fromJson(Map<String, dynamic> json) {
    device = Device.fromJson(json["device"]);
  }

  Map<String, dynamic> toJson() {
    return {"device": device.toJson()};
  }
}

class Device {
  late String name;
  late String brand;
  late String model;
  late int release_year;
  late String color;
  late Display display;
  late Processor processor;
  late Memory memory;
  late Camera camera;
  late Battery battery;
  late Connectivity connectivity;
  late Operating_system operating_system;

  Device(
      this.name,
      this.brand,
      this.model,
      this.release_year,
      this.color,
      this.display,
      this.processor,
      this.memory,
      this.camera,
      this.battery,
      this.connectivity,
      this.operating_system);

  Device.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    brand = json["brand"];
    model = json["model"];
    release_year = json["release_year"];
    color = json["color"];
    display = Display.fromJson(json["display"]);
    processor = Processor.fromJson(json["processor"]);
    memory = Memory.fromJson(json["memory"]);
    camera = Camera.fromJson(json["camera"]);
    battery = Battery.fromJson(json["battery"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    operating_system = Operating_system.fromJson(json["operating_system"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "brand": brand,
      "model": model,
      "release_year": release_year,
      "color": color,
      "display": display.toJson(),
      "processor": processor.toJson(),
      "memory": memory.toJson(),
      "camera": camera.toJson(),
      "battery": battery.toJson(),
      "connectivity": connectivity.toJson(),
      "operating_system": operating_system.toJson(),
    };
  }
}

class Display {
  late String type;
  late String size;
  late String resolution;

  Display(this.type, this.size, this.resolution);
  Display.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }

  Map<String, dynamic> toJson() {
    return {"type": type, "size": size, "resolution": resolution};
  }
}

class Processor {
  late String manufacturer;
  late String model;
  late int cores;
  late String clock_speed;
  Processor(this.manufacturer, this.model, this.cores, this.clock_speed);

  Processor.fromJson(Map<String, dynamic> json) {
    manufacturer = json["manufacturer"];
    model = json["model"];
    cores = json["cores"];
    clock_speed = json["clock_speed"];
  }
  Map<String, dynamic> toJson() {
    return {
      "manufacturer": manufacturer,
      "model": model,
      "cores": cores,
      "clock_speed": clock_speed
    };
  }
}

class Memory {
  late String RAM;
  late String storage;
  late bool expandable_storage;
  late String max_expandable;
  Memory(this.RAM, this.storage, this.expandable_storage, this.max_expandable);
  Memory.fromJson(Map<String, dynamic> json) {
    RAM = json["RAM"];
    storage = json["storage"];
    expandable_storage = json["expandable_storage"];
    max_expandable = json["max_expandable"];
  }
  Map<String, dynamic> toJson() {
    return {
      "RAM": RAM,
      "storage": storage,
      "expandable_storage": expandable_storage,
      "max_expandable": max_expandable,
    };
  }
}

class Camera {
  late Main main;
  late Front front;
  Camera(this.main, this.front);
  Camera.fromJson(Map<String, dynamic> json) {
    main = Main.fromJson(json["main"]);
    front = Front.fromJson(json["front"]);
  }
  Map<String, dynamic> toJson() {
    return {"main": main.toJson(), "front": front.toJson()};
  }
}

class Main {
  late String resolution;
  late String video_capability;
  Main(this.resolution, this.video_capability);
  Main.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    video_capability = json["video_capability"];
  }
  Map<String, dynamic> toJson() {
    return {"resolution": resolution, "video_capability": video_capability};
  }
}

class Front {
  late String resolution;
  late String video_capability;
  Front(this.resolution, this.video_capability);
  Front.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    video_capability = json["video_capability"];
  }
  Map<String, dynamic> toJson() {
    return {"resolution": resolution, "video_capability": video_capability};
  }
}

class Battery {
  late String capacity;
  late String type;
  late bool removable;
  Battery(this.capacity, this.type, this.removable);

  Battery.fromJson(Map<String, dynamic> json) {
    capacity = json["capacity"];
    type = json["type"];
    removable = json["removable"];
  }
  Map<String, dynamic> toJson() {
    return {"capacity": capacity, "type": type, "removable": removable};
  }
}

class Connectivity {
  late String network;
  late String wifi;
  late String bluetooth;
  late List ports;
  Connectivity(this.network, this.wifi, this.bluetooth, this.ports);

  Connectivity.fromJson(Map<String, dynamic> json) {
    network = json["network"];
    wifi = json["wifi"];
    bluetooth = json["bluetooth"];
    ports = json["ports"];
  }

  Map<String, dynamic> toJson() {
    return {"network": network, "wifi": wifi, "bluetooth": bluetooth};
  }
}

class Operating_system {
  late List features;
  Operating_system(this.features);
  Operating_system.fromJson(Map<String, dynamic> json) {
    features = List.from(json["features"].map((e) => e));
  }
  Map<String, dynamic> toJson() {
    return {"features": List.from(features.map((e) => e))};
  }
}

