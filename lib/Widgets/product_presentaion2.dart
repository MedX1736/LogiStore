import 'package:flutter/material.dart';
import 'package:Logitech_Store/const.dart';
import 'package:Logitech_Store/Products_list.dart';

class ProductPresentation2 extends StatefulWidget {
  final Product product;
  ProductPresentation2({this.product});
  @override
  _ProductPresentation2State createState() => _ProductPresentation2State();
}

class _ProductPresentation2State extends State<ProductPresentation2> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450.0,
      child: Stack(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(18.0),
              height: 410,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kColorBlack,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  SizedBox(height: 18.0),
                  Text('Dpi', style: kBlueTextStyle),
                  SizedBox(height: 10.0),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '${widget.product.dpi}  ',
                      style: kProductTextStyle,
                    ),
                    TextSpan(
                      text: 'MAX',
                      style: kProductTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ])),
                  SizedBox(height: 18.0),
                  Text('Price', style: kBlueTextStyle),
                  SizedBox(height: 10.0),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '\$  ',
                      style: kProductTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: '${widget.product.price}  ',
                      style: kProductTextStyle,
                    ),
                    TextSpan(
                      text: 'MAX',
                      style: kProductTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ])),
                ],
              )),
          Positioned(
            left: 30.0,
            top: 30,
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: <Color>[kColorBlack.withOpacity(0.3), kColorWhite],
                ).createShader(bounds);
              },
              child: Text(
                widget.product.title.split(" ")[0],
                style: kProductDeatilTitle,
              ),
            ),
          ),
          Positioned(
            child:
                Image.asset(widget.product.image, width: 280, fit: BoxFit.fill),
            top: 80,
            right: 0,
          ),
          Positioned(
            bottom: 0,
            left: 100,
            right: 100,
            child: Container(
              width: 100,
              height: 70.0,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kColorBlue,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.remove, color: kColorWhite),
                      onPressed: () {
                        setState(() {
                          if(counter > 0)
                          counter--;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      child: Text(
                    counter.toString(),
                    textAlign: TextAlign.center,
                    style: kProductTextStyle.copyWith(color: kColorWhite),
                  )),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.add, color: kColorWhite),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
