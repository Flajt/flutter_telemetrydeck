import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_telemetrydeck/model/telemetrydeck_config_model.dart';
import 'package:flutter_telemetrydeck/model/telemetrydeck_signal_model.dart';

import 'flutter_telemetrydeck_platform_interface.dart';

/// An implementation of [FlutterTelemetrydeckPlatform] that uses method channels.
class MethodChannelFlutterTelemetrydeck extends FlutterTelemetrydeckPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_telemetrydeck');

  @override
  Future<void> init(TelemetryDeckConfig config) async {
    await methodChannel.invokeMethod('init', config.toMap());
  }

  @override
  Future<void> sendSignal(Signal signal) async {
    await methodChannel.invokeMethod('sendSignal', signal.toMap());
  }
}
