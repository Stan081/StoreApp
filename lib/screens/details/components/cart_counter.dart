import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 2),
      child: Row(
        children: [
          builtOutlineButton(Icons.remove, () {
            if (numberOfItems > 1) {
              setState(
                () {
                  numberOfItems--;
                },
              );
            }
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
            child: Text(
              numberOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          builtOutlineButton(
            Icons.add,
            () => setState(
              () {
                numberOfItems++;
              },
            ),
          ),
        ],
      ),
    );
  }

  SizedBox builtOutlineButton(IconData icon, press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
