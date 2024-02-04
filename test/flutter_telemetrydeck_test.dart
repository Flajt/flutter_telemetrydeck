/*import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_telemetrydeck/flutter_telemetrydeck.dart';
import 'package:flutter_telemetrydeck/flutter_telemetrydeck_platform_interface.dart';
import 'package:flutter_telemetrydeck/flutter_telemetrydeck_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterTelemetrydeckPlatform
    with MockPlatformInterfaceMixin
    implements FlutterTelemetrydeckPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterTelemetrydeckPlatform initialPlatform = FlutterTelemetrydeckPlatform.instance;

  test('$MethodChannelFlutterTelemetrydeck is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterTelemetrydeck>());
  });

  test('getPlatformVersion', () async {
    FlutterTelemetrydeck flutterTelemetrydeckPlugin = FlutterTelemetrydeck();
    MockFlutterTelemetrydeckPlatform fakePlatform = MockFlutterTelemetrydeckPlatform();
    FlutterTelemetrydeckPlatform.instance = fakePlatform;

    expect(await flutterTelemetrydeckPlugin.getPlatformVersion(), '42');
  });
}*/