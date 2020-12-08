import 'package:flutter/material.dart';
import 'package:AlBaharMenu/food_detail.dart';

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 230.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Margarita', '\45.00 AED', 'assets/three/1.jpeg',
                      false, false, 'Tomato fresh basil & mozzarella', context),
                  _buildCard(
                      'Frutti di mare',
                      '\60.00 AED',
                      'assets/three/2.jpeg',
                      true,
                      false,
                      'Mix Seafood, garlic, pepper, tomato and mozzarella',
                      context),
                  _buildCard(
                      'Chicken Or Pepperoni',
                      '\55.00 AED',
                      'assets/three/3.jpeg',
                      false,
                      true,
                      'Bell pepper, beef pepperoni olive mushroom, or chicken and mozzarella',
                      context),
                  _buildCard(
                      'Vegetable Pizza',
                      '\50.00 AED',
                      'assets/three/4.jpeg',
                      false,
                      false,
                      'Bell pepper, Mushroom, onion, tomato, asparagus, olive and mozzarella',
                      context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, String des, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FoodDetails(
                    assetPath: imgPath,
                    cookieprice: price,
                    cookiename: name,
                    cookiedes: des)));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
                color: Colors.white),
            child: Column(children: [
              Hero(
                  tag: imgPath,
                  child: Container(
                      height: 200.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover)))),
              SizedBox(height: 7.0),
              Text(price,
                  style: TextStyle(
                      color: Color(0xFFCC8053),
                      fontFamily: 'Varela',
                      fontSize: 18.0)),
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(name,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 21.0)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
            ]),
          )),
    );
  }
}
