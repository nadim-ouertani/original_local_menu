import 'package:AlBaharMenu/helpers/random.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class BevDetails extends StatelessWidget {
  final assetPath, cookieprice, cookiename, cookiedes;

  BevDetails(
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
<p>&nbsp;</p>
<p><strong><u>CRAZY SHAKES</u></strong></p>
<p><strong>Unicorn </strong></p>
<p>Strawberry ice cream, strawberries, blueberries, whipped cream, marshmallows, rainbow candy, sprinkles</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Cookie Monster </strong></p>
<p>Vanilla ice cream, whipped cream, chocolate chip cookie bits, chocolate drizzles, chocolate sprinkles</p>
<p>&nbsp;</p>
<p><strong>Birthday Cake </strong></p>
<p>Choice of ice cream or sherbet, plus rainbow cake, whipped cream, candy &amp; chocolate surprises and candle.</p>
<p>&nbsp;</p>
<p><strong>Nutella Bacon </strong></p>
<p>Chocolate ice cream, Nutella, whipped cream, caramelized bacon strip, Kitkat, chocolate drizzle, pretzels</p>
<p>&nbsp;</p>
<p><strong>Red Velvet </strong></p>
<p>Chocolate &amp; Strawberry ice cream, whipped cream, red velvet cupcake, cream cheese, chocolate drizzle, chocolate pieces</p>
<p>&nbsp;</p>
<p><strong>Double Double </strong></p>
<p>Cookie ice cream, chocolate brownie, whipped cream, oreo cookie, chocolate chips</p>
<p>&nbsp;</p>
<p><strong><u>SHERBET SHAKES</u></strong></p>
<p><strong>Strawberry </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Mango </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>CLASSIC SHAKES</u></strong></p>
<p><strong>Add-Ons: </strong></p>
<p><strong>M&amp;M&rsquo;s, Oreo, peanut butter, kitkat, rainbow sprinkles </strong></p>
<p><strong>Banana </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Chocolate 19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cookies &amp; Cream 19</strong></p>
<p><strong>Vanilla 19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Strawberry 19</strong></p>
<p><strong>Black and White 19&nbsp;&nbsp;&nbsp;&nbsp; Peanut Butter 19</strong></p>
<p><strong>&nbsp;&nbsp; </strong></p>
<p><strong><u>SMOOTHIES</u></strong></p>
<p><strong>Strawberry Split 19</strong></p>
<p>Strawberry, Banana</p>
<p><strong>BIG 5 19</strong></p>
<p>Strawberry, Mango, Pineapple, Kiwi</p>
<p><strong>Skittles 19.5</strong></p>
<p>Mango, Strawberry, Apple, Pineapple, Orange Juice</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Melon Refresher 19</strong></p>
<p>Melon, Strawberry, Mango</p>
<p>&nbsp;</p>
<p><strong>Broccoli &amp; The Beast 19.5</strong></p>
<p>Broccoli, Spinach, Pineapple, Mango, Cucumber, Banana</p>
<p>&nbsp;</p>
<p><strong>Weight Watchers 19.5</strong></p>
<p>Coconut milk, honey, chia seeds, vanilla protein, blueberries</p>
<p>&nbsp;</p>
<p><strong>Dr. Beet 19</strong></p>
<p>Beetroot, Carrot, Mango</p>
<p>&nbsp;</p>
<p><strong>Berry Go Round 19</strong></p>
<p>Raspberry, Blackberry, Strawberry</p>
<p>&nbsp;</p>
<p><strong>Detox Zing 19</strong></p>
<p>Carrot, Ginger, Courgette, banana, blueberry</p>
<p>&nbsp;</p>
<p><strong>Pash N Shoot 19</strong></p>
<p>Passion fruit, Pineapple, Mango</p>
<p>&nbsp;</p>
<p><strong>Blueberry Thrill 19</strong></p>
<p>Blueberry, Raspberry, Banana, Flaxseed</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Matcha The Day 19</strong></p>
<p>Passion fruit, Pineapple, Mango</p>
<p>&nbsp;</p>
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
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>HOMEMADE</u></strong></p>
<p><strong>Dragon Fruit Mango Lemonade 19</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Hibiscus Iced Teas 13.50</strong></p>
<p>Peach Hibiscus, Lemon &amp; Ginger,</p>
<p>or Raspberry/Blackberry</p>
<p>&nbsp;</p>
<p><strong><u>WATER</u></strong></p>
<p><strong>Still Water Small 7</strong></p>
<p><strong>Still Water Large 12</strong></p>
<p><strong>Sparkling Water Small 10</strong></p>
<p><strong>Sparkling Water Large 20</strong></p>
<p><strong>Detox Water </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>Chilled Juice DRINKS</u></strong></p>
<p><strong>Juice 10.5</strong></p>
<p>Apple, Orange, Cranberry</p>
<p>&nbsp;</p>
<p><strong>Sodas 18</strong></p>
<p>Coke, Diet Coke, Sprite, Coke Zero</p>
<p>Sprite Light, Fanta, Soda Water, Redbull, Ginger Ale, Bitterlemon, Tonic Water</p>
<p>&nbsp;</p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>HOT DRINKS</u></strong></p>
<p><strong>Espresso 13.5</strong></p>
<p><strong>Double Espresso 17.5</strong></p>
<p><strong>Caf&eacute; Latte 17.5</strong></p>
<p><strong>Cappuccino 17.5</strong></p>
<p><strong>Caramel Macchiato </strong></p>
<p><strong>Caf&eacute; Americano </strong></p>
<p><strong>White Chocolate Mocha</strong></p>
<p><strong>Caf&eacute; Mocha </strong></p>
<p><strong>Macchiato&nbsp; </strong></p>
<p><strong>Turkish Coffee</strong></p>
<p><strong>Spanish Latte</strong></p>
<p><strong><u>TEA</u></strong></p>
<p><strong>Tea 13</strong></p>
<p>Chamomile, Earl Grey Special, Tea Chai</p>
<p><strong>&nbsp;</strong></p>
<p><strong>Tea Infusions 17</strong></p>
<p>Blue Herbal Tea, Candied Ginger,</p>
<p>Fresh Breeze, Hawaii Cocktail Japanese Sencha,</p>
<p>Jasmine Eye, Morning Star</p>
<p>&nbsp;</p>
<p><strong><u>ICED COFFEE</u></strong></p>
<p><strong>Iced Latte </strong></p>
<p><strong>Iced Coffee </strong></p>
<p><strong>Iced Filter Coffee </strong></p>
<p>(Cold Brew)</p>
<p><strong>Iced Mocha </strong></p>
<p><strong>Iced Matcha </strong></p>
<p><strong>Iced Chai Latte </strong></p>
<p><strong><u>SINGLE ORIGIN BREW</u></strong></p>
<p><strong>Select Your Brewing Method</strong></p>
<p><strong>Syphon | </strong>Clean crisp, aromatic</p>
<p><strong>V60 | </strong>clean filtered, limited bitterness</p>
<p><strong>Aeropress | </strong>low acidity, rich flavour</p>
<p><strong>Chemex | </strong>clear cup, pure, flavorsome</p>
<p><strong>Cold Drip | </strong>mellow, naturally sweeter</p>
<p><strong>French Press | </strong>aromatic, depth and strength</p>
<p><strong>Select Your Single Origin Beans</strong></p>
<p><strong>Colombia | </strong>medium body, raisins, brown sugar,</p>
<p>and jasmine notes, sweet yet citric acidity</p>
<p>&nbsp;</p>
<p><strong>Mexico | </strong>medium body, sugar cane sweetness,</p>
<p>citrus, starfruit taste</p>
<p>&nbsp;</p>
<p><strong>Ethiopia | </strong>full body, jasmine aroma, chocolate,</p>
<p>hazelnut notes, honey sweetness.</p>
<p>&nbsp;</p>
<p><strong>Kenya | </strong>full body, sweet lingering notes,</p>
<p>Floral aroma, herbal aftertaste.</p>
<p>&nbsp;</p>
<p><strong><u>Starbucks</u></strong></p>
<table>
<tbody>
<tr>
<td width="227">
<p><strong><u>Espresso Traditions</u></strong></p>
</td>
<td width="227">
<p><strong><u>Tall </u></strong></p>
</td>
<td width="227">
<p><strong><u>Grande</u></strong></p>
</td>
</tr>
<tr>
<td width="227">
<p>Caffe Latte</p>
</td>
<td width="227">
<p>18.9</p>
</td>
<td width="227">
<p>21.3</p>
</td>
</tr>
<tr>
<td width="227">
<p>Cappuccino</p>
</td>
<td width="227">
<p>18.9</p>
</td>
<td width="227">
<p>21.3</p>
</td>
</tr>
<tr>
<td width="227">
<p>Caramel Macchiato</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>Caffe Americano</p>
</td>
<td width="227">
<p>16.2</p>
</td>
<td width="227">
<p>18.9</p>
</td>
</tr>
<tr>
<td width="227">
<p>Caffe Mocha</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>White Chocolate Mocha</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>19.7523.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>Single</p>
</td>
<td width="227">
<p>Double</p>
</td>
</tr>
<tr>
<td width="227">
<p>Espresso</p>
</td>
<td width="227">
<p>13.8</p>
</td>
<td width="227">
<p>16.2</p>
</td>
</tr>
<tr>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="227">
<p>Double Shot Iced Espresso</p>
</td>
<td width="227">
<p>18.9</p>
</td>
<td width="227">
<p>-</p>
</td>
</tr>
<tr>
<td width="227">
<p>Signature Hot Chocolate</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="227">
<p>Starbucks on Ice</p>
</td>
<td width="227">
<p>Tall</p>
</td>
<td width="227">
<p>Grande</p>
</td>
</tr>
<tr>
<td width="227">
<p>Iced Caffe Latte</p>
</td>
<td width="227">
<p>18.9</p>
</td>
<td width="227">
<p>21.3</p>
</td>
</tr>
<tr>
<td width="227">
<p>Iced Caramel Macchiato</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>Iced Caffe Americano</p>
</td>
<td width="227">
<p>16.2</p>
</td>
<td width="227">
<p>18.9</p>
</td>
</tr>
<tr>
<td width="227">
<p>Iced White Chocolate Mocha</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>Iced Signature Chocolate</p>
</td>
<td width="227">
<p>21.3</p>
</td>
<td width="227">
<p>23.7</p>
</td>
</tr>
<tr>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
<td width="227">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="227">
<p>Frappuccino</p>
</td>
<td width="227">
<p>Tall</p>
</td>
<td width="227">
<p>Grande</p>
</td>
</tr>
<tr>
<td width="227">
<p>Espresso</p>
</td>
<td width="227">
<p>22.5</p>
</td>
<td width="227">
<p>21</p>
</td>
</tr>
<tr>
<td width="227">
<p>Caramel</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
<tr>
<td width="227">
<p>Mocha</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
<tr>
<td width="227">
<p>Vanilla</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
<tr>
<td width="227">
<p>White Chocolate Mocha</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
<tr>
<td width="227">
<p>Caramel Cream</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
<tr>
<td width="227">
<p>Chocolate Cream</p>
</td>
<td width="227">
<p>23.7</p>
</td>
<td width="227">
<p>26.4</p>
</td>
</tr>
</tbody>
</table>
<p><strong><u>&nbsp;</u></strong></p> """,
              webView: false,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ]),
    );
  }
}
