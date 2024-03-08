import 'package:coffeeshop_app/coffee_details.dart';
import 'package:coffeeshop_app/components/button.dart';
import 'package:coffeeshop_app/components/coffee_tile.dart';
import 'package:coffeeshop_app/modules/coffee.dart';
import 'package:coffeeshop_app/themes/colors.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List CoffeeMenu = [
    //Cappucinno
    Coffee(
        name: 'Cappucino',
        price: 'Kshs: 100.00',
        imagePath: "assets/images/icon-2.png",
        rating: '4.9'),
    //Black Coffee
    Coffee(
        name: 'Black Coffee',
        price: 'Kshs: 200.00',
        imagePath: "assets/images/icon-3.png",
        rating: '5.0'),
    //Americano
    Coffee(
        name: 'Americano',
        price: 'Kshs: 150.00',
        imagePath: "assets/images/icon-4.png",
        rating: '4.4'),
    // White Coffee
    Coffee(
        name: 'White Coffee',
        price: 'Kshs: 150.00',
        imagePath: "assets/images/icon-1.png",
        rating: '4.5'),
  ];

  //Navigate to items page
  void navigateToItemsMenu(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CoffeeDetailsPage(
                  coffee: CoffeeMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Our Menu',
          style:
              TextStyle(color: Color(0xFF260C0C), fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage('assets/images/icon-1.png'),
                  height: 60,
                ),
                Text(
                  'Taste our Coffee Variety',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: 'Make an Order',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: secondaryColor.withOpacity(0.3),
                ),
                hintText: 'Search your Favorite Menu',
                hintStyle: TextStyle(color: secondaryColor.withOpacity(0.3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Offered Menu',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: secondaryColor,
                fontSize: 20),
          ),
          Divider(),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CoffeeMenu.length,
            itemBuilder: (context, index) => CoffeeTile(
              coffee: CoffeeMenu[index],
              onTap: () => navigateToItemsMenu(index),
            ),
          )),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/icon-4.png',
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Exquisite Coffee',
                                style: TextStyle(color: secondaryColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Kshs: 200.00',
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: secondaryColor,
                      size: 28,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
