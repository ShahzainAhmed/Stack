import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Properties"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  const Text(
                    // it is hid under the first container
                    "Flutter Developer I am a good person",
                  ),
                  Container(height: 150, width: 150, color: Colors.green),
                  Container(height: 130, width: 130, color: Colors.teal),
                  Container(height: 120, width: 120, color: Colors.amber),
                  const Text("Shahzain Ahmed"),
                  const Positioned(
                    bottom: 1,
                    left: 2,
                    child: Text(
                      "Position Property",
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 150, width: 150, color: Colors.amber),
                Container(height: 120, width: 120, color: Colors.red),
                Container(height: 100, width: 100, color: Colors.blue),
                const Positioned(
                  top: 20,
                  child: Text(
                    "Lol",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
