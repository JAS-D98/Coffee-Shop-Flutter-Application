import 'package:coffeeshop_app/modules/coffee.dart';
import 'package:coffeeshop_app/themes/colors.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onTap;
  const CoffeeTile({super.key, required this.coffee, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(coffee.imagePath),
              height: 30,
            ),
            Text(
              coffee.name,
              selectionColor: secondaryColor,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 160,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      coffee.price,
                      selectionColor: Colors.grey[300],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
