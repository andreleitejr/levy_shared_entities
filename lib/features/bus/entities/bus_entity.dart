import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy_shared_entities/shared_entities.dart';

abstract class BusEntity {
  const BusEntity();

  String get id;
  String get image;
  String get brand;
  String get model;
  String get year;
  String get color;
  int get capacity;
  List<AmenityEntity> get amenities;
  String get licensePlate;
  String get chassisNumber;
  bool get isAccessible;
  DriverEntity get driver;
  List<ItineraryModel> get routes;
  List<SeatEntity> get seats;
  LatLng get lastLocation;

  String get title => '$brand $model';
  String get description => '$licensePlate - Seat: ${seats.first.title}';
}
