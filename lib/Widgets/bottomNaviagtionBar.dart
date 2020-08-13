import 'package:flutter/material.dart';
import 'package:Logitech_Store/const.dart';
import 'package:flutter_svg/svg.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(13.0),
      decoration : BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0),topRight: Radius.circular(18.0),),
        color : Colors.white ,
      ),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset('assets/icons/home.svg',width: 18, color :kColorBlack.withOpacity(0.5)),
          SvgPicture.asset('assets/icons/squares.svg',width: 18, color :kColorBlack.withOpacity(0.5)),
           SvgPicture.asset('assets/icons/logitech.svg',width:28,),
           SvgPicture.asset('assets/icons/shopping-bag.svg',width:18,color :kColorBlack.withOpacity(0.5)),
            SvgPicture.asset('assets/icons/user.svg',width:18,color :kColorBlack.withOpacity(0.5)),
        ],
      ),
    );
  }
}