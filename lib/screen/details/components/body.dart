import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screen/details/components/add_to_cart_and_buy.dart';
import '../../details/components/product_title_with_body.dart';
import '../../details/components/color_and_size.dart';
import '../../details/components/description.dart';
import '../../details/components/cart_counter.dart';
import '../../details/components/counter_with_fav_btn.dart';
import '../../../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CartCounter(),
                          CounterWithFavBtn(),
                        ],
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithWidget(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
