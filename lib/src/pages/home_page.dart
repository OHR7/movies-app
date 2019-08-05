import 'package:flutter/material.dart';
import 'package:movies_app/src/providers/movies_provider.dart';
import 'package:movies_app/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Movies now playing!'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swipeCards()
          ],
        ),
      ),
    );
  }

  Widget _swipeCards() {

    final moviesProvider = MoviesProvider();
    moviesProvider.getInTheaters();

    return CardSwiper(
      movies: [1, 2, 3, 4, 5],
    );

  }

}