
import 'package:levy_shared_entities/entities.dart';

abstract class ItineraryEntity {
  const ItineraryEntity();

  String get id;
  String get name;
  AddressEntity get origin;
  AddressEntity get destination;
  List<AddressEntity> get stops;
  double get distance;
  String get duration;
  String get departureTime;
  String get arrivalTime;
  bool get isActive;
}
