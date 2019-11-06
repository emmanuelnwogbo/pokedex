import 'package:flutter/material.dart';

class PokemonData {
  String name;
  String image;
  Color color;

  PokemonData(this.name, this.image, this.color);
}

List<PokemonData> pokemons = [
  PokemonData(
      'charizard',
      'https://vignette.wikia.nocookie.net/omniversal-battlefield/images/9/95/Charizard.png',
      Colors.red
  ),
  PokemonData(
      'mewtwo',
      'http://pluspng.com/img-png/mewtwo-png-mewtwo-v1-by-waito-chan-1024.png',
      Colors.purple
  ),
  PokemonData(
    'blastoise',
    'https://cdn.bulbagarden.net/upload/thumb/0/02/0098lastoise.png/1200px-0098lastoise.png',
    Colors.blue
  )
];