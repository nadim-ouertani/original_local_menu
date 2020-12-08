import 'package:AlBaharMenu/amwaj.dart';
import 'package:AlBaharMenu/perla.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Perla()),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 50, 20, 25),
              height: 450.0,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logoPerla.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  // child: Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     "La Perla",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 65,
                  //         fontWeight: FontWeight.bold,
                  //         backgroundColor: Color.fromRGBO(170, 151, 89, 0.9)),
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Amwaj()),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 0, 20, 25),
              height: 450.0,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logoAmwaj.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  // child: Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     "Amwaj",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 65,
                  //         fontWeight: FontWeight.bold,
                  //         backgroundColor: Color.fromRGBO(170, 151, 89, 0.9)),
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
