void main(List<String> arguments) {
  var smartphone = Smartphone(
    brand: 'Samsung',
    memoryRam: '2gb',
    memoryStorageSize: '8gb',
    model: 'J5',
    // memoryStorageType: "SD",
  );

  var notebook = Notebook(
      brand: "Lenovo",
      memoryRam: "8gb",
      memoryStorageSize: "256gb",
      model: "Ideapad",
      memoryStorageType: "SSD");

  var desktop = Desktop(
      brand: "Positivo",
      memoryRam: "8gb",
      memoryStorageSize: "256gb",
      model: "zxy",
      memoryStorageType: "hard disk");

  printDevice(smartphone);
  printDevice(notebook);
  printDevice(desktop);
}

void printDevice(Device device) {
  print(device.description());
}

abstract class Device {
  String get brand;
  String get model;
  String get memoryRam;
  String get memoryStorageSize;
  String get memoryStorageType;

  String description();
}

class DeviceImpl implements Device {
  @override
  final String brand;

  @override
  final String memoryRam;

  @override
  final String memoryStorageSize;

  @override
  final String memoryStorageType;

  @override
  final String model;

  DeviceImpl({
    required this.brand,
    required this.memoryRam,
    required this.memoryStorageSize,
    required this.model,
    this.memoryStorageType = 'Not especified',
  });

  @override
  String description() {
    return 'brand: $brand, model: $model, memory (ram: $memoryRam, storage size: $memoryStorageSize, storage type: $memoryStorageType)';
  }
}

class Smartphone extends DeviceImpl {
  Smartphone({
    brand,
    memoryRam,
    memoryStorageSize,
    model,
    // memoryStorageType = '',
  }) : super(
          brand: brand,
          memoryRam: memoryRam,
          memoryStorageSize: memoryStorageSize,
          model: model,
          // memoryStorageType: memoryStorageType,
        );

  @override
  String description() {
    return "smartphone => " + super.description();
  }
}

class Notebook extends DeviceImpl {
  Notebook({
    brand,
    memoryRam,
    memoryStorageSize,
    model,
    memoryStorageType = 'No especific',
  }) : super(
          brand: brand,
          memoryRam: memoryRam,
          memoryStorageSize: memoryStorageSize,
          model: model,
          memoryStorageType: memoryStorageType,
        );

  @override
  String description() {
    return "notebook => " + super.description();
  }
}

class Desktop extends DeviceImpl {
  Desktop({
    brand,
    memoryRam,
    memoryStorageSize,
    model,
    memoryStorageType = 'No especific',
  }) : super(
          brand: brand,
          memoryRam: memoryRam,
          memoryStorageSize: memoryStorageSize,
          model: model,
          memoryStorageType: memoryStorageType,
        );

  @override
  String description() {
    return "desktop => " + super.description();
  }
}

/*class Notebook implements Device {
  @override
  final String brand;

  @override
  final String memoryRam;

  @override
  final String memoryStorageSize;

  @override
  final String model;

  Notebook(
      {required this.brand,
      required this.memoryRam,
      required this.memoryStorageSize,
      required this.model});

  @override
  String description() {
    return 'notebook: $brand $model $memoryRam';
  }
}*/
