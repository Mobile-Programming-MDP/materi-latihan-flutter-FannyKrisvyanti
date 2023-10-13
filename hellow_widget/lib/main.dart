import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hallo Fanny",
        theme: ThemeData(primarySwatch: Colors.teal),
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fanny"),
        actions: <Widget>
            //Icon di kanan appbar
            [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        leading: IconButton
            //Icon di kiri appbar
            (
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.black)),
      ),
      body: const Center(
        child: Text("Fanny"),
      ),
    );
  }
}
