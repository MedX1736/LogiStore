import 'package:flutter/material.dart';
import 'package:Logitech_Store/const.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Logitech_Store/Products_list.dart';
import 'package:Logitech_Store/Widgets/product_presentaion2.dart';

class ProductDetail extends StatefulWidget {
  static String id = 'productDetail';
  final Product product;
  ProductDetail({this.product});
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorWhite,
        appBar: AppBar(
          backgroundColor: kColorBlack,
          title: Text(
            'LOGO',
            style: kProductTextStyle,
          ),
          centerTitle: true,
          actions: <Widget>[
            SvgPicture.asset(
              'assets/icons/favorite.svg',
              color: kColorWhite,
              width: 25,
            ),
            SizedBox(width: 18.0),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ProductPresentation2(product: widget.product),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 15.0),
                  Text(widget.product.title.split(" ")[0],
                      style: kTitleStyle.copyWith(fontSize: 29)),
                  SizedBox(width: 18.0),
                  Text('Wireless',
                      style: kBlueTextStyle.copyWith(fontSize: 17)),
                  SizedBox(width: 45.0),
                  Expanded(
                      child: Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  )),
                  Expanded(
                      child: Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  )),
                  Expanded(
                      child: Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  )),
                  Expanded(
                      child: Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  )),
                  Expanded(
                      child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                  )),
                  SizedBox(width: 12.0),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child:
                    Text(widget.product.description, style: kDescriptionStyle),
              ),
              Container(
                margin: EdgeInsets.only(right : 20 ),
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                 
                    color: kColorBlack,
                  
                  borderRadius: BorderRadius.circular(30),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Add To Cart',
                        style: kTitleStyle.copyWith(
                            color: kColorWhite, fontSize: 15)),
                    SizedBox(width:12),
                    SvgPicture.asset('assets/icons/cart.svg',
                        color: kColorWhite, width: 25),
                  ],
                ),
              ),
              SizedBox(height:25),
            ],
          ),
        ),
      ),
    );
  }
}
