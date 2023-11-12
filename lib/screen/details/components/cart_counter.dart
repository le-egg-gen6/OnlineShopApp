import 'package:flutter/material.dart';
import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<StatefulWidget> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numsOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            setState(() {
              if (numsOfItems > 1) {
                numsOfItems--;
              }
            });
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            numsOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numsOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton({required IconData icon, required Function() press}) {
    return SizedBox(
      width: 35,
      height: 30,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
