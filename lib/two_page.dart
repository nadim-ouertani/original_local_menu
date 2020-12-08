import 'package:flutter/material.dart';
import 'package:AlBaharMenu/food_detail.dart';

class Two extends StatelessWidget {
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
                  _buildCard(
                      'Club Sandwich',
                      '\55.00 AED',
                      'assets/two/1.jpg',
                      false,
                      false,
                      'A triple decker sandwich of toasted brown or white bread, stuffed with crispy turkey bacon, pulled chicken mayo, fried egg, tomato and English Cheddar cheese ',
                      context),
                  _buildCard(
                      'Chicken fajita wrap',
                      '\40.00 AED',
                      'assets/two/2.jpg',
                      true,
                      false,
                      'Shredded chicken sauté with bell pepper & cheese warp in tortilla bread',
                      context),
                  _buildCard(
                      'Shish tawook Roll',
                      '\40.00 AED',
                      'assets/two/3.jpg',
                      false,
                      true,
                      'Shish Tawook Marinated chicken with mix pepper, onion, tomato, Hummus, rolled with Arabic bread',
                      context),
                  _buildCard(
                      'Lamb Kofta Roll',
                      '\45.00 AED',
                      'assets/two/4.jpg',
                      false,
                      true,
                      'lamb kofta kabab filled with lettuce, parsley, tahini tahini sauce in Arabic bread',
                      context),
                  _buildCard(
                      'Grilled vegetable Panini',
                      '\40.00 AED',
                      'assets/two/5.jpg',
                      false,
                      true,
                      'Assorted grilled vegetable stuff in Panini bread served with French fry',
                      context),
                  _buildCard(
                      'Steak Sandwich',
                      '\50.00 AED',
                      'assets/two/6.jpg',
                      false,
                      true,
                      'Grilled beef sirloin steak, onions, peppers, tomatoes and mustard',
                      context),
                  _buildCard(
                      'Beef or Chicken Burger',
                      '\50.00 AED',
                      'assets/two/7.jpg',
                      false,
                      false,
                      'Angus beef patties served on a sesame bun with Monterey jack cheese, morel relish caramelized onions, turkey bacon accompanied with hand mashed whole avocados',
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
            ]),
          )),
    );
  }
}
