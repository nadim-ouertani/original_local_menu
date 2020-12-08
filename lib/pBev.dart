import 'package:AlBaharMenu/bev_detail.dart';
import 'package:flutter/material.dart';

class PerlaBev extends StatelessWidget {
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
                  _buildCard('MOCKTAILS', '', 'assets/bev/1.jpg', false, false,
                      '', context),
                  _buildCard('CRAZY SHAKES', '', 'assets/bev/2.jpg', false,
                      false, '', context),
                  _buildCard('SHERBET SHAKES', '', 'assets/bev/3.jpg', false,
                      false, '', context),
                  _buildCard('CLASSIC SHAKES', '', 'assets/bev/4.jpg', false,
                      false, '', context),
                  _buildCard('SMOOTHIES', '', 'assets/bev/5.jpg', false, false,
                      '', context),
                  _buildCard('FRESH JUICE ', '', 'assets/bev/6.jpg', false,
                      false, '', context),
                  _buildCard('FRAPPUCCINO', '', 'assets/bev/7.jpg', false,
                      false, '', context),
                  _buildCard('WATER', '', 'assets/bev/8.jpg', false, false, '',
                      context),
                  _buildCard('Chilled Juice DRINKS', '', 'assets/bev/9.jpg',
                      false, false, '', context),
                  _buildCard('HOT DRINKS', '', 'assets/bev/10.jpg', false,
                      false, '', context),
                  _buildCard(
                      'TEA', '', 'assets/bev/1.jpg', false, false, '', context),
                  _buildCard('ICED COFFEE', '', 'assets/bev/12.jpg', false,
                      true, '', context),
                  _buildCard('SINGLE ORIGIN BREW', '', 'assets/bev/13.jpg',
                      false, true, '', context)
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
                builder: (context) => BevDetails(
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
