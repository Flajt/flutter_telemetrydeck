import 'package:flutter_telemetrydeck/model/telemetrydeck_config_model.dart';
import 'package:flutter_telemetrydeck/model/telemetrydeck_signal_model.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_telemetrydeck_method_channel.dart';

abstract class FlutterTelemetrydeckPlatform extends PlatformInterface {
  /// Constructs a FlutterTelemetrydeckPlatform.
  FlutterTelemetrydeckPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTelemetrydeckPlatform _instance =
      MethodChannelFlutterTelemetrydeck();

  /// The default instance of [FlutterTelemetrydeckPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTelemetrydeck].
  static FlutterTelemetrydeckPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTelemetrydeckPlatform] when
  /// they register themselves.
  static set instance(FlutterTelemetrydeckPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> init(TelemetryDeckConfig config) {
    throw UnimplementedError('init() has not been implemented.');
  }

  Future<void> sendSignal(Signal signal) {
    throw UnimplementedError('sendSignal() has not been implemented.');
  }
}
