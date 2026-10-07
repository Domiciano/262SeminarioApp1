import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

/// Root widget of the app.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/home',
      routes: {'/home': (context) => HomeScreen()},
    );
  }
}

//Mi primera pantalla
//Pantalla de home
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 4,
        children: [
          Text("Alfa"),
          SizedBox(width: 16),
          Text("Beta"),
          Text("Gamma"),
          Text("Delta"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              StatCard(value: 404, label: "Seguidores"),
              StatCard(value: 10, label: "Seguidos"),
              StatCard(value: 47, label: "Post"),
            ],
          ),
        ],
      ),
    );
  }
}

//StatCard
class StatCard extends StatelessWidget {
  //Variables
  final int value;
  final String label;
  //Constructor
  StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$value",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(label),
      ],
    );
  }
}
