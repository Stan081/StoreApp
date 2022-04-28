// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/Product.dart';
import 'package:store_app/screens/details/components/product_title_with_image.dart';

import 'color_dot.dart';

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
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(
                              children: const [
                                ColorDot(
                                  color: Color(0xFF356C95),
                                  isSelected: true,
                                ),
                                ColorDot(
                                  color: Color(0xFFF8C078),
                                ),
                                ColorDot(
                                  color: Color(0xFFA29B9B),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),
        )
      ]),
    );
  }
}
