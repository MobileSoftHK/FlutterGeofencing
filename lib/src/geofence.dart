class Geofence {
  String? id;
  double? latitude;
  double? longitude;
  double? radius;

  Geofence({this.id, this.latitude, this.longitude, this.radius});

  factory Geofence.fromJson(Map<dynamic, dynamic> json) => Geofence(
        id: json["id"],
        latitude: double.tryParse(json["lat"]),
        longitude: double.tryParse(json["long"]),
        radius: double.tryParse(json["radius"]),
      );

  @override
  String toString() => '${latitude?.toStringAsFixed(3)}; ${longitude?.toStringAsFixed(3)} ($radius m)';
}
