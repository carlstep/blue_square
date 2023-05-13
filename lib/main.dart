import 'package:blue_square/blue_square.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int clicks = 0;

  void updateClicks() {
    setState(() {
      clicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('blue square state management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlueSquare(
              size: 50,
              clicks: clicks,
              updateClicks: updateClicks,
            ),
            const SizedBox(
              height: 10,
            ),
            BlueSquare(
              size: 80,
              clicks: clicks,
              updateClicks: updateClicks,
            ),
            const SizedBox(
              height: 10,
            ),
            BlueSquare(
              size: 100,
              clicks: clicks,
              updateClicks: updateClicks,
            ),
          ],
        ),
      ),
    );
  }
}
