import 'package:json_annotation/json_annotation.dart';
import 'package:levy_shared_entities/shared_entities.dart';

part 'itinerary_model.g.dart';

@JsonSerializable(createToJson: true)
final class ItineraryModel extends ItineraryEntity {
  ItineraryModel({
    this.id = '',
    this.name = '',
    this.origin = const AddressModel(),
    this.destination = const AddressModel(),
    this.stops = const <AddressModel>[],
    this.distance = 0,
    this.duration = '',
    this.departureTime = '',
    this.arrivalTime = '',
    this.isActive = true,
  });

  @override
  final String id;
  @override
  final String name;
  @override
  AddressModel origin;
  @override
  AddressModel destination;
  @override
  List<AddressModel> stops;
  @override
  final double distance;
  @override
  final String duration;
  @override
  final String departureTime;
  @override
  final String arrivalTime;
  @override
  final bool isActive;

  factory ItineraryModel.fromJson(Map<String, dynamic> data) => _$ItineraryModelFromJson(data);

  Map<String, dynamic> toJson() => _$ItineraryModelToJson(this);
}
