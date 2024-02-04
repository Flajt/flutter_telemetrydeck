# flutter_telemetrydeck

Wrapper for telemetrydeck analytics, a privacy friendly analytics services.

## Getting Started

1. `flutter pub add flutter_telemetrydeck`
2. Init flutter telemetrydeck at the beginning of your code base (main is a good place)
3. You are now ready to rumble

In the future the class will be converted to a singleton, so that you don't need to pass the class around
### Setup code

Basic setup:

```dart
final config = TelemetryDeckConfig(appID: "your-app-id-here"); # checkout the optional params
final analyzer = TelemetryDeck()
await analyzer.init(config)
```

Sending a Signal:

```dart
await analyzer.sendSignal(Signal(name: "testSignal", metaData: {"testKey": "testValue"}))
```