import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PokemonPageViews(),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 25
            ),
          centerTitle: true,
          title: Text(
              'Pokedex', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            )
          ]
        ),);
  }
}

class PokemonPageViews extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PokemonPageViewsState();
  }
}

class _PokemonPageViewsState extends State<PokemonPageViews>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}