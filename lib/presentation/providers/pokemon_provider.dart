import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonIdProvider = StateProvider<int>((ref) {

  return 1;
});

final pokemoNameProvider = FutureProvider<String>((ref) async {

  final id = ref.watch(pokemonIdProvider);
  
  final name = await PokemonService.getPokemonName(id);

  return name;
});

//CUANDO QUEREMOS QUE SE HAGA LA PETICIÓN SOLO UNA VEZ POR ID, USAMOS EL .family DE ESTA MANERA:

// final pokemoNameProvider = FutureProvider.family<String, int>((ref, id) async {
  
//   final name = await PokemonService.getPokemonName(id);

//   return name;
// });