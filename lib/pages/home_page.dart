import 'package:flutter/material.dart';

import '../data.dart';

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

  PageController _pageController = PageController(
    viewportFraction: 0.5
  );

  int _activeIndex = 0;

  void _onPageChanged(int _index) {
    setState(() {
      _activeIndex = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: PageScrollPhysics(),
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: pokemons.length,
        itemBuilder: (_context,_index){
          var _isActive = _activeIndex == _index;
          var width = MediaQuery.of(context).size.width;
          var height = MediaQuery.of(context).size.height;
          return AnimatedContainer(
            duration: Duration(milliseconds: 300), curve: Curves.decelerate,//Curves.bounceOut
            margin: EdgeInsets.symmetric(
                horizontal: width * (_isActive ? 0.05 : 0.10),
                vertical: height * (_isActive ? 0.01 : 0.05)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _index % 2 == 0 ? Colors.red : Colors.green,
            )
          );
    });
  }
}