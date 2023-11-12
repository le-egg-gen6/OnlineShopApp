import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../../constants.dart';

class Description extends StatelessWidget {
  final Product product;

  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }

}