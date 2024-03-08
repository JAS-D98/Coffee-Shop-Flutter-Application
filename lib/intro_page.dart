import 'package:coffeeshop_app/components/button.dart';
import 'package:coffeeshop_app/themes/colors.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'HEAVEN\'S CAFFEE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Image(image: AssetImage('assets/images/icon-4.png')),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'ENJOY OUR SPLENDID COFFEE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('We offer the best coffee in town.',
                style: TextStyle(color: Colors.grey[200], height: 2)),
            SizedBox(
              height: 10,
            ),
            MyButton(
              text: 'GET STARTED',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
