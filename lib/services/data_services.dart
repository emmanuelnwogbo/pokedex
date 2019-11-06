import 'dart:async';

import 'package:http/http.dart' as http;

class PokemonAPIServices {
    static PokemonAPIServices instance = PokemonAPIServices();

    var _httpClient = http.Client();
    var _baseURL = 'https://pokeapi.co/api/v2/';

    Future<http.Response> getPokemonData(String _name) {
     //Future tell flutter that the data to return is not available yet but will be
     //in the future <http.Response> tells us that the data us going to be a http Response
     var _url = '$_baseURL/pokemon/$_name';
     return _httpClient.get(_url);
    }
}