import 'package:flutter/material.dart';
import 'package:mi_app_1/components/chat_item.dart';
import 'package:mi_app_1/components/contact_card.dart';
import 'package:mi_app_1/components/primary_button.dart';
import 'package:mi_app_1/components/profile_info.dart';
import 'package:mi_app_1/components/secondary_button.dart';
import 'package:mi_app_1/components/stats_row.dart';

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
          StatsRow(posts: '128', followers: '2.4k', following: '310'),
          PrimaryButton(label: 'Iniciar sesión', icon: Icons.login),
          SecondaryButton(label: 'Crear cuenta', icon: Icons.person_add_alt),
          ChatItem(
            image: 'https://picsum.photos/400',
            name: 'Javier Montes',
            message:
                '¿Te parece si revisamos los pendientes del proyecto mañana temprano?',
            time: '10:24 a.m.',
          ),
          ProfileInfo(
            image: 'https://picsum.photos/400',
            name: 'Mariana Valenzuela',
            username: 'marianav',
            role: 'Diseñadora de Producto',
            email: 'm.val@estudio.com',
            location: 'Madrid, ES',
          ),
          ContactCard(
            image: 'https://picsum.photos/400',
            name: 'Ana Torres',
            username: 'anatorres',
          ),
        ],
      ),
    );
  }
}
