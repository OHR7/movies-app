import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class CardSwiper extends StatelessWidget {
  final List<dynamic> movies;

  CardSwiper({
    @required this.movies
  });
  
  @override
  Widget build(BuildContext context) {
    
    final _screenSize = MediaQuery.of(context).size;
    
    return Container(
      padding: EdgeInsets.only(top: 10.0),

      child: Swiper(
        itemBuilder: ( BuildContext context, int index ) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            ),
          );
        },
        itemWidth: _screenSize.width * 0.6,
        itemHeight: _screenSize.height * 0.45,
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}