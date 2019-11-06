import 'dart:convert';//data convert here allows us to use jsonDecode

class Pokemon {
  String name;
  String image;
  int rank;
  int health;
  int attack;
  int defence;
  int specialAttack;
  int speed;

  Pokemon.fromJson(String _json) {
    var _data = jsonDecode(_json);
    print(_data);
    this.name = _data['name'];
    this.image = _data['sprites']['front_default'];
    this.rank = _data['base_experience'];

    this.speed = _data['stats'][0]['base_stat'];
    this.health = _data['stats'][5]['base_stat'];
    this.attack = _data['stats'][4]['base_stat'];
    this.defence = _data['stats'][3]['base_stat'];
    this.specialAttack = _data['stats'][2]['base_stat'];
  }
}