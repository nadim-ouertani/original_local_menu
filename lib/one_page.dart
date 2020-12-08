import 'package:flutter/material.dart';
import 'package:AlBaharMenu/food_detail.dart';

class One extends StatelessWidget {
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
                      'Mixed berries with smoke salmon and spinach salad',
                      '\45.00 AED',
                      'assets/one/1.jpg',
                      false,
                      false,
                      'Smoke salmon, baby spinach, pomegranate, blue berry, strawberry fresh avocado, cherry tomato Yuzu dressing',
                      context),
                  _buildCard(
                      'Shrimp, mixed beans with Arugula salad',
                      '\55.00 AED',
                      'assets/one/2.jpg',
                      true,
                      false,
                      'Marinated smoke shrimp red & white beans, arugula with dill & lemon mustard dressing.',
                      context),
                  _buildCard(
                      'Caesar Salad',
                      '\45.00 AED',
                      'assets/one/3.jpg',
                      false,
                      true,
                      'Romaine lettuce, bacon, parmesan cheese and Caesar dressing',
                      context),
                  _buildCard(
                      'Greek Salad',
                      '\45.00 AED',
                      'assets/one/4.jpeg',
                      false,
                      true,
                      'Traditional Greek salad, Tomato, cucumber, red onion, feta cheese, olives, bell peppers, oregano, and lemon vinaigrette',
                      context),
                  _buildCard(
                      'Dynamite Shrimp',
                      '\45.00 AED',
                      'assets/one/5.jpg',
                      false,
                      true,
                      'marinated fried shrimp in cocktail sauce',
                      context),
                  _buildCard(
                      'BBQ Marinated Chicken Wings',
                      '\45.00 AED',
                      'assets/one/6.jpg',
                      false,
                      true,
                      'Chunky bleu cheese dressing, chilled celery and carrot sticks',
                      context),
                  _buildCard(
                      'Breaded fried calamari',
                      '\45.00 AED',
                      'assets/one/7.jpg',
                      false,
                      true,
                      'Lemon-garlic sauce',
                      context),
                  _buildCard(
                      'English Fish and Chips',
                      '\60.00 AED',
                      'assets/one/8.jpg',
                      false,
                      true,
                      'Deep-fried fish & French fries served with tartar sauce & Chard Lime',
                      context),
                  _buildCard(
                      'Nachos Chips',
                      '\35.00 AED',
                      'assets/one/9.jpg',
                      false,
                      true,
                      'Tomato salsa, guacamole and sour cream',
                      context),
                  _buildCard(
                      'Fried Potato basket ',
                      '\18.00 AED',
                      'assets/one/10.jpg',
                      false,
                      true,
                      'Your choice one: French fries | wedges Mexican | curly | sweet potatoes, served with dips',
                      context),
                  _buildCard(
                      'Mix Hot Mezzeh Platter ',
                      '\45.00 AED',
                      'assets/one/11.jpg',
                      false,
                      false,
                      'Kibbeh, Cheese sambousek, Spinach fatayer, Vegetable Spring Roll, Cheese Racket',
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
                child: Text(
                  name,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 21.0),
                ),
              ),
            ]),
          )),
    );
  }
}
