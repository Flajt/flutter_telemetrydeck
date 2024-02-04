import Flutter
import UIKit
import TelemetryClient


public class FlutterTelemetrydeckPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_telemetrydeck", binaryMessenger: registrar.messenger())
    let instance = FlutterTelemetrydeckPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      let _ = print(call.method)
    switch call.method {
    
    case "init":
        let args = call.arguments as! Dictionary<String,Any?>
        let config = TelemetryManagerConfiguration(appID: args["appID"] as! String,salt: args["salt"] as? String,baseURL: args["baseURL"] != nil ? URL(string:args["baseURL"] as! String) : nil)
        config.defaultUser = args["userID"] as? String
        TelemetryManager.initialize(with: config)
        result(nil)
    
    case "sendSignal":
        let args = call.arguments as! Dictionary<String, Any?>
        TelemetryManager.send(args["name"] as! String, with: args["metaData"] != nil ? args["metaData"] as! Dictionary<String,String> : [:])
        result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
