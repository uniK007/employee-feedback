import 'package:flutter/material.dart';
import 'package:rating_app/home_page.dart';
import 'package:rating_app/login.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 245, 243, 243),
        foregroundColor: const Color.fromARGB(255, 34, 114, 179),
        shadowColor: const Color.fromARGB(167, 99, 187, 231),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
              scale: 4.5,
              child: const Checkbox(
                value: true,
                onChanged: null,
                shape: CircleBorder(),
                checkColor: Colors.green,
                activeColor: Colors.green,
                fillColor:
                    MaterialStatePropertyAll(Color.fromARGB(22, 48, 102, 102)),
              ),
            ),
            const SizedBox(height: 32.0),
            const Text(
              'You have successfully submitted the review',
              textScaleFactor: 1.2,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Success!!',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 21, 138, 25),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Want to give feedback for another Employee?',
              textScaleFactor: 1.1,
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text('Back to Employee Board'),
            )
          ],
        ),
      ),
    );
  }
}
