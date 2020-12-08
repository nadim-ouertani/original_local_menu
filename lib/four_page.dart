import 'package:flutter/material.dart';
import 'package:AlBaharMenu/food_detail.dart';

class Four extends StatelessWidget {
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
                      'Tiramisu',
                      '\25.00 AED',
                      'assets/four/1.jpeg',
                      false,
                      false,
                      'Traditional Italian dessert with sponge cake, Infused with espresso coffee Layered with a rich Mascarpone cheese and topped with a dusting of cacao powder',
                      context),
                  _buildCard(
                      'Japanese cheese cake',
                      '\35.00 AED',
                      'assets/four/2.jpeg',
                      true,
                      false,
                      'Cheese, Mocha cream, fresh strawberries',
                      context),
                  _buildCard(
                      'Warm Chocolate Brownies',
                      '\25.00 AED',
                      'assets/four/3.jpeg',
                      false,
                      true,
                      'Served with vanilla ice cream',
                      context),
                  _buildCard(
                      'Honey cake',
                      '\30.00 AED',
                      'assets/four/4.jpeg',
                      false,
                      true,
                      'The honey baked into the cake layers’ pairs perfectly with the simple sour cream frosting',
                      context),
                  _buildCard(
                      'Belgian Chocolate Lava',
                      '\30.00 AED',
                      'assets/four/5.jpeg',
                      false,
                      true,
                      'Vanilla ice cream, pista praline',
                      context),
                  _buildCard('Seasonal fresh cut fruits', '\40.00 AED',
                      'assets/four/6.jpeg', false, true, '', context),
                  _buildCard(
                      'Ice cream Triple test',
                      '\35.00 AED',
                      'assets/four/7.jpeg',
                      false,
                      true,
                      'A choice of 3 scoops Vanilla, chocolate, strawberry, mango Praline and pistachio Topped with Chocolate sauce, whipped cream & mint leaves ',
                      context),
                  _buildCard(
                      'Umali',
                      '\30.00 AED',
                      'assets/four/8.jpeg',
                      false,
                      false,
                      'Combination of creamy bread pudding and cinnamon',
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
