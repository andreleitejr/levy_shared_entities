import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/entities.dart';

part 'bus_model.g.dart';

@JsonSerializable(createToJson: true)
final class BusModel extends BusEntity {
  const BusModel({
    this.id = '',
    this.image = '',
    this.brand = '',
    this.model = '',
    this.year = '',
    this.color = '',
    this.capacity = 32,
    this.amenities = const <AmenityModel>[],
    this.licensePlate = '',
    this.chassisNumber = '',
    this.isAccessible = true,
    this.driver = const DriverModel(),
    this.routes = const <ItineraryModel>[],
    this.seats = const <SeatModel>[],
    this.lastLocation = const LatLng(0, 0),
  });

  @override
  final String id;

  @override
  final String image;

  @override
  final String brand;

  @override
  final String model;

  @override
  final String year;

  @override
  final String color;

  @override
  final int capacity;

  @override
  final List<AmenityModel> amenities;

  @override
  final String licensePlate;

  @override
  final String chassisNumber;

  @override
  final bool isAccessible;

  @override
  final DriverModel driver;

  @override
  final List<ItineraryModel> routes;

  @override
  final List<SeatModel> seats;

  @override
  @LatLngConverter()
  final LatLng lastLocation;

  factory BusModel.fromJson(Map<String, dynamic> data) => _$BusModelFromJson(data);

  Map<String, dynamic> toJson() => _$BusModelToJson(this);
}
