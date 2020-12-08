import 'package:AlBaharMenu/helpers/random.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class BevDetailsAmwaj extends StatelessWidget {
  final assetPath, cookieprice, cookiename, cookiedes;

  BevDetailsAmwaj(
      {this.assetPath, this.cookieprice, this.cookiename, this.cookiedes});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Al Bahar Hotel & Resort',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(randomThings(),
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 450.0, width: 450.0, fit: BoxFit.cover)),
        SizedBox(height: 20.0),
        Center(
          child: Text(cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 45.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: HtmlWidget(
              """ <p><strong><u>MOCKTAILS</u></strong></p>
<p><strong>Al Bahar Sunrise 23.10</strong></p>
<p>A fusion of mango, pineapple and orange juices with a hint of strawberry and a splash of Ginger ale.</p>
<p>&nbsp;</p>
<p><strong>Berry Antioxidant 26</strong></p>
<p>Blueberry, Strawberry, Mint and Honey</p>
<p>&nbsp;</p>
<p><strong>Watermelon Quencher 23.10</strong></p>
<p>Watermelon, Lemon juice</p>
<p>&nbsp;</p>
<p><strong>Virgin Pina Colada 23.10</strong></p>
<p>Pineapple, Coconut, Cherry</p>
<p>&nbsp;</p>
<p><strong>Strawberry Plum 23.10</strong></p>
<p>Plum, apricot and strawberry</p>
<p>&nbsp;</p>
<p><strong>Fujairah Sunset 23.10</strong></p>
<p>Lime, Mint Leaves, Sprite, Club Soda</p>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>CRAZY SHAKES</u></strong></p>
<p><strong>Unicorn </strong></p>
<p>Strawberry ice cream, strawberries, blueberries, whipped cream, marshmallows, rainbow candy, sprinkles</p>
<p>&nbsp;</p>
<p><strong>Nutella Bacon </strong></p>
<p>Chocolate ice cream, Nutella, whipped cream, caramelized bacon strip, KitKat, chocolate drizzle, pretzels</p>
<p>&nbsp;</p>
<p><strong>Double Double </strong></p>
<p>Cookie ice cream, chocolate brownie, whipped cream, Oreo cookie, chocolate chips</p>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>SHERBET SHAKES</u></strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong>Strawberry </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Mango </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>CLASSIC SHAKES</u></strong></p>
<p><strong>Add-Ons: </strong></p>
<p><strong>M&amp;M&rsquo;s, Oreo, peanut butter, KitKat, rainbow sprinkles </strong></p>
<p><strong>Banan</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Cookies &amp; Cream 19</strong></p>
<p><strong>Strawberry 19</strong></p>
<p><strong>Peanut Butter 19</strong></p>
<p><strong><u>HOMEMADE</u></strong></p>
<p><strong>Dragon Fruit Mango Lemonade 19</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Hibiscus Iced Teas 13.50</strong></p>
<p>Peach Hibiscus, Lemon &amp; Ginger,</p>
<p>or Raspberry/Blackberry</p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>SMOOTHIES</u></strong></p>
<p><strong>Strawberry Split 19</strong></p>
<p>Strawberry, Banana</p>
<p><strong>Tropical colada 19</strong></p>
<p>Coconut, Pineapple, Banana</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Dr. Beet 19</strong></p>
<p>Beetroot, Carrot, Mango</p>
<p>&nbsp;</p>
<p><strong>Berry Go Round 19.5</strong></p>
<p>Raspberry, Blackberry, Strawberry</p>
<p>&nbsp;</p>
<p><strong>Detox Zing 19.5</strong></p>
<p>Carrot, Ginger, Courgette, banana, blueberry</p>
<p>&nbsp;</p>
<p><strong>Coco Loco 19.5</strong></p>
<p>Coconut, Mango, Pineapple, Lime, Mint</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Pash N Shoot 19.9</strong></p>
<p>Passion fruit, Pineapple, Mango</p>
<p>&nbsp;</p>
<p><strong><u>FRESH JUICE </u></strong></p>
<p><strong>Orange 19</strong></p>
<p><strong>Carrot 19</strong></p>
<p><strong>Pineapple 19</strong></p>
<p><strong>Watermelon</strong><strong>&nbsp;&nbsp; 19</strong></p>
<p><strong>Fresh Juice of the Day</strong> <strong>19</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>FRAPPUCCINO</u></strong></p>
<p><strong>Snickers </strong></p>
<p>Dark chocolate, hazelnut</p>
<p>almond syrup, caramel, espresso</p>
<p>&nbsp;</p>
<p><strong>Bailey&rsquo;s </strong></p>
<p>Almond Syrup, Irish Cream, White</p>
<p>Chocolate, Espresso</p>
<p>&nbsp;</p>
<p><strong>Cookies &amp; Cream </strong></p>
<p>Cookies &amp; Cream Ice Cream, Espresso</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><strong><u>WATER</u></strong></p>
<p><strong>Still Water Small</strong></p>
<p><strong>Still Water Large</strong></p>
<p><strong>Sparkling Water Small</strong></p>
<p><strong>Sparkling Water Large</strong></p>
<p><strong>Detox Water </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>CHILLED JUICES</u></strong></p>
<p><strong>Juice 10.5</strong></p>
<p>Apple, Orange, Cranberry</p>
<p>&nbsp;</p>
<p><strong>Sodas 18</strong></p>
<p>Coke, Diet Coke, Sprite, Coke Zero</p>
<p>Sprite Light, Fanta, Soda Water, Red bull, Ginger Ale, Bitter lemon, Tonic Water</p>
<p>&nbsp;</p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>HOT DRINKS</u></strong></p>
<p><strong>Espresso single </strong></p>
<p><strong>Double Espresso </strong></p>
<p><strong>Caf&eacute; Latte </strong></p>
<p><strong>Cappuccino </strong></p>
<p><strong>Caramel Macchiato </strong></p>
<p><strong>Caf&eacute; Americano </strong></p>
<p><strong>Caf&eacute; Mocha </strong></p>
<p><strong>Macchiato&nbsp; </strong></p>
<p><strong>Turkish Coffee single</strong></p>
<p><strong>Turkish Coffee Double</strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>TEA</u></strong></p>
<p><strong>Tea 13</strong></p>
<p>Chamomile, Earl Grey Special, English breakfast, Tea Chai</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Tea Infusions 17</strong></p>
<p>Blue Herbal Tea, Candied Ginger,</p>
<p>Fresh Breeze, Hawaii Cocktail Japanese Sencha,</p>
<p>Jasmine Eye, Morning Star</p>
<p><strong><u>ICED COFFEE</u></strong></p>
<p><strong>Iced Latte </strong></p>
<p><strong>Iced Coffee </strong></p>
<p><strong>Iced Filter Coffee </strong></p>
<p>(Cold Brew)</p> """,
              webView: false,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ]),
    );
  }
}
