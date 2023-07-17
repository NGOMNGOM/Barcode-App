import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan Barcode & QRcode")),
      body: Card(
        child: ListTile(title: Text("test")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startScan();
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }

  startScan() async {
    // อ่านข้อมูลจาก barcode
    String? cameraScanResult = await scanner.scan();
    setState(() {
      result = cameraScanResult!;
    });
    print("Test");
  }
}
