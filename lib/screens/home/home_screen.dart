import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home/components/body.dart';

import 'components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        Colors.white,
        kTextColor,
        () => Navigator.pop(context),
      ),
      body: const Body(),
    );
  }
}
