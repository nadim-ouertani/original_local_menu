import 'package:AlBaharMenu/aBev.dart';
import 'package:AlBaharMenu/four_page.dart';
import 'package:AlBaharMenu/one_page.dart';
import 'package:AlBaharMenu/three_page.dart';
import 'package:AlBaharMenu/two_page.dart';
import 'package:flutter/material.dart';

class Amwaj extends StatefulWidget {
  @override
  _AmwajState createState() => _AmwajState();
}

class _AmwajState extends State<Amwaj> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Al Bahar Hotel & Resort',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Text('Categories',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15.0),
              TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: Color(0xFFC88D67),
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(right: 45.0),
                  unselectedLabelColor: Color(0xFFCDCDCD),
                  tabs: [
                    Tab(
                      child: Text('SALAD & HOT STARTERS ',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 21.0,
                          )),
                    ),
                    Tab(
                      child: Text('SANDWICH AND BURGERS',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 21.0,
                          )),
                    ),
                    Tab(
                      child: Text('PIZZA',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 21.0,
                          )),
                    ),
                    Tab(
                      child: Text('DESSERT',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 21.0,
                          )),
                    ),
                    Tab(
                      child: Text('BEVERAGES',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 21.0,
                          )),
                    ),
                  ]),
              Container(
                height: MediaQuery.of(context).size.height - 258.0,
                width: double.infinity,
                child: TabBarView(controller: _tabController, children: [
                  One(),
                  Two(),
                  Three(),
                  Four(),
                  AmwajBev(),
                ]),
              ),
            ],
          )),
    );
  }
}
