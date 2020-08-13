import 'package:Logitech_Store/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TypeProduct extends StatelessWidget {
  final Color color;
  final String icon;
  final String title;
  
  TypeProduct({this.color, this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 80.0,
          
          margin: EdgeInsets.all(7.5),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          decoration: BoxDecoration(
            border:color == kColorWhite ? Border.all(color: kColorBlack.withOpacity(0.3)) : null ,
            boxShadow: color == kColorBlue ?
            [
              BoxShadow(
                color: kColorBlue.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(2,5),
                spreadRadius: 4,
              ),
            ] : null ,
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: SvgPicture.asset(icon,width:20.0),
                  radius: 20.0,
                  backgroundColor: kColorWhite,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  title,
                  style: kProductTextStyle.copyWith(
                    fontSize: 12.0,
                    color: color == kColorBlue ? kColorWhite : kColorBlack,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ])),
    );
  }
}

