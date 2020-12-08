import 'package:flutter/material.dart';
import 'package:AlBaharMenu/food_detail.dart';

class Zero extends StatelessWidget {
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
                      'Three eggs your own style',
                      '\55.00 AED',
                      'assets/zero/1.jpg',
                      false,
                      false,
                      'Choice of stuffing omelet, boiled eggs, scrambled egg, or fried eggs served with hash brown grilled tomato, chicken or beef sausages. Bacon',
                      context),
                  _buildCard(
                      'Fresh bakery basket',
                      '\25.00 AED',
                      'assets/zero/2.jpg',
                      true,
                      false,
                      'White toast bread, croissant, muffin, Danish, with butter, honey, jam',
                      context),
                  _buildCard(
                      'Waffles or French Toast',
                      '\40.00 AED',
                      'assets/zero/3.jpg',
                      false,
                      true,
                      'Served with chocolate sauce, icing sugar, wiping cream',
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
