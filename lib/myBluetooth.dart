import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

void main() {
  runApp(MyBlue());
}
 class MyBlue extends StatefulWidget {
    _MyBlue createState() => _MyBlue();
 }
 class _MyBlue extends State<MyBlue> {
    final FlutterBlue ble = FlutterBlue.instance;
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          floatingActionButton: StreamBuilder<bool>(
            stream: ble.isScanning,
            initialData: false,
            builder: (c, snapshot) {
              if (snapshot.data!) {
                return FloatingActionButton(
                  child: Icon(Icons.stop),
                  onPressed: () => ble.stopScan(),
                  backgroundColor: Colors.red,
                );
              } else {
                return FloatingActionButton(
                    child: Icon(Icons.search),
                    onPressed: () {
                      try{
                        ble.startScan();
                      }catch(error){
                        print(error);
                      }
                    }
                );
              }
            },
          ),
        ),
      );
    }
    void initState() {
      super.initState();
      ble.connectedDevices
          .asStream()
          .listen((List<BluetoothDevice> devices) {
        for (BluetoothDevice device in devices) {

        }
      });
      ble.scanResults.listen((List<ScanResult> results) {
        for (ScanResult result in results) {

        }
      });
      ble.startScan();
    }
 }