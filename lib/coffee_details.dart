import 'package:coffeeshop_app/components/button.dart';
import 'package:coffeeshop_app/modules/coffee.dart';
import 'package:coffeeshop_app/themes/colors.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsPage extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetailsPage({
    super.key,
    required this.coffee,
  });

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  int quantityCount = 0;

  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  void incrementQuantity() {
    setState(() {
      setState(() {
        quantityCount++;
      });
    });
  }

  //add to cart method
  addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                Image.asset(widget.coffee.imagePath, height: 200),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.coffee.rating,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.coffee.name,
                  style: TextStyle(
                      fontSize: 28,
                      color: secondaryColor,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Description',
                  style: TextStyle(color: Colors.grey[500], fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Made from the finest coffee seeds courtesy of our farmers',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )),
          Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.coffee.price,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: decrementQuantity,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            quantityCount.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: incrementQuantity,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyButton(
                    text: 'Add to Cart',
                    onTap: addToCart,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
