import 'package:flutter/material.dart';
import 'package:tavel/ecran/home_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text(
              'A New Way \n To Travel',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'Find the best things to do for your trip',
            style: TextStyle(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset("assets/images/6990.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text(
                'Explore',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
