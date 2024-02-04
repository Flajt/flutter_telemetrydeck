import 'package:flutter/material.dart';
import 'package:flutter_telemetrydeck/flutter_telemetrydeck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterTelemetrydeckPlugin = FlutterTelemetrydeck();

  @override
  void initState() {
    super.initState();
    final config = TelemetryDeckConfig(appID: "your-app-id-here");
    _flutterTelemetrydeckPlugin.init(config);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async =>
                  await _flutterTelemetrydeckPlugin.sendSignal(Signal(
                      name: "testSignal", metaData: {"testKey": "testValue"})),
              child: const Text("Send Signal")),
        ),
      ),
    );
  }
}
