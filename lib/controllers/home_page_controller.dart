import 'package:get/get.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class HomePageController extends GetxController {
  final instance = FlutterBluetoothSerial.instance;
  late BluetoothConnection _connection;

  @override
  Future<void> onReady() async {
    super.onReady();

    print('csdcd');

    //_connection = await BluetoothConnection.toAddress('address');

    final devices = instance.startDiscovery();
    devices.listen((event) {
      print(event.device);
    });
  }
}
