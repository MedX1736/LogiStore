import 'package:Logitech_Store/Widgets/type_product.dart';
import 'product_details.dart';
import 'package:Logitech_Store/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Logitech_Store/Products_list.dart';
import 'package:Logitech_Store/CategoryList.dart';
import 'package:Logitech_Store/Widgets/product_presentation.dart';
import 'package:Logitech_Store/Widgets/bottomNaviagtionBar.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorWhite,
      appBar: AppBar(
        backgroundColor: kColorWhite,
        elevation: 0.0,
        leading: Padding(
            padding: EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/icons/drawer.svg',
              width: 20.0,
            )),
        actions: <Widget>[
          SvgPicture.asset(
            'assets/icons/search.svg',
            width: 25.0,
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 7.0,
            ),
            Text(
              "LIFE IS MORE FUN\nWHEN YOU PLAY",
              style: kTitleStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 146.0,
              child: ListView.builder(
                itemBuilder: (context, i) {
                  var category = categoryList[i];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedItem = category.title;
                      });
                    },
                    child: TypeProduct(
                      color: selectedItem == category.title
                          ? kColorBlue
                          : kColorWhite,
                      title: category.title,
                      icon: category.icon,
                    ),
                  );
                },
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Products',
                  style: kTitleStyle,
                ),
                Text('See all',
                    style: kTitleStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                      color: kColorOrange,
                    ))
              ],
            ),
            SizedBox(height: 7.0),
            Container(
                width: double.infinity,
                height: 250.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productsList.length,
                    itemBuilder: (context, i) {
                      var product = productsList[i];

                      return InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>
                          ProductDetail(product: product)));
                        },
                        child: ProductPresentaion(
                            image: product.image,
                            price: product.price,
                            title: product.title),
                      );
                    })),
            Expanded(
              child: Container(
                  width: double.infinity, child: MyBottomNavigationBar()),
            ),
          ],
        ),
      ),
    );
  }
}
