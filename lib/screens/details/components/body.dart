// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/Product.dart';
import 'package:store_app/screens/details/components/description.dart';
import 'package:store_app/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_andd_size.dart';
import 'counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    Description(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    const CounterWithFavBtn(),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
        )
      ]),
    );
  }
}
