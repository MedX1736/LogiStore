import 'package:Logitech_Store/const.dart';
import 'package:flutter/material.dart';

var linearGradient = LinearGradient(
  colors: <Color>[kColorWhite, kColorBlack],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class ProductPresentaion extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  ProductPresentaion({this.title, this.image, this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kColorBlack,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150.0,
            child: ShaderMask(
              shaderCallback: (bounds) {
                return linearGradient;
              },
              child: Text(
                title,
                style: kProductTextStyle.copyWith(fontSize: 20.0),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text('Price', style: kBlueTextStyle),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$ ',
                  style: kProductTextStyle.copyWith(fontSize: 14.0),
                ),
                TextSpan(text: price, style: kProductTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
