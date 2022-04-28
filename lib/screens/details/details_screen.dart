import 'package:flutter/material.dart';
import '../../models/Product.dart';
import '../home/components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(
        product.color,
        Colors.white,
        () => Navigator.pop(context),
      ),
    );
  }
}
