import 'package:levy_shared_entities/shared_entities.dart';
import 'package:riverpod/riverpod.dart';

final searchProvider = StateProvider<SearchEntity>((ref) => const SearchModel());