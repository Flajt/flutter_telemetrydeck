// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:flutter_telemetrydeck/model/telemetrydeck_config_model.dart';
import 'package:flutter_telemetrydeck/model/telemetrydeck_signal_model.dart';
import 'flutter_telemetrydeck_platform_interface.dart';
export 'package:flutter_telemetrydeck/model/telemetrydeck_config_model.dart';
export 'package:flutter_telemetrydeck/model/telemetrydeck_signal_model.dart';

class FlutterTelemetrydeck {
  Future<void> init(TelemetryDeckConfig config) async {
    await FlutterTelemetrydeckPlatform.instance.init(config);
  }

  Future<void> sendSignal(Signal signal) async {
    await FlutterTelemetrydeckPlatform.instance.sendSignal(signal);
  }
}
