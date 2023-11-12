import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavBtn extends StatefulWidget {

  const CounterWithFavBtn({super.key});

  @override
  State<StatefulWidget> createState() => _CounterFav();

}

class _CounterFav extends State<CounterWithFavBtn> {
  int numsFav = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            numsFav.toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: Color(0xFFFF6464),
          ),
          child: Container(
            height: 30,
            width: 30,
            padding: EdgeInsets.all(6),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          ),
          onPressed: () {
            setState(() {
              numsFav++;
            });
          },
        ),
      ],
    );
  }
}
