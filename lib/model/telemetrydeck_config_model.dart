class TelemetryDeckConfig {
  /// Your telemetry deck app ID
  final String appID;

  /// If you have a custom server set up for telemetry deck, you can specify the URL here
  final String? serverURL;

  /// If you want to bring your own salt for hashing, you can specify it here
  final String? salt;

  /// User identifier for android only, will be hashed and salted before sending!
  final String? userID;

  TelemetryDeckConfig(
      {required this.appID, this.serverURL, this.salt, this.userID});

  toMap() {
    return {
      "appID": appID,
      "serverURL": serverURL,
      "salt": salt,
      "userID": userID
    };
  }
}
