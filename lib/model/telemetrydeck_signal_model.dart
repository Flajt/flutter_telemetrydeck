class Signal {
  /// The name of the signal / event
  final String name;

  /// Additional metadata, don't add objects or functions in here
  /// as they will not be serialized correctly
  final Map<String, String>? metaData;

  Signal({required this.name, this.metaData});

  Map<String, dynamic> toMap() {
    return {"name": name, "metaData": metaData};
  }
}
