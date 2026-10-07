import 'package:flutter/material.dart';
import 'package:mi_app_1/components/contact_card.dart';
import 'package:mi_app_1/components/primary_button.dart';
import 'package:mi_app_1/components/profile_info.dart';
import 'package:mi_app_1/components/secondary_button.dart';
import 'package:mi_app_1/components/stats_row.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileInfo(
              image: "https://picsum.photos/400",
              name: "Domiciano Rincon",
              username: "domic0603",
              role: "Profesor",
              email: "drincon@icesi.edu.co",
              location: "Cali, Colombia",
            ),
            SizedBox(height: 8),
            StatsRow(posts: "87", followers: "11.3M", following: "1K"),

            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  PrimaryButton(
                    label: "Seguir",
                    icon: Icons.access_alarm_outlined,
                  ),
                  SizedBox(height: 8),
                  SecondaryButton(
                    label: "Enviar Mensaje",
                    icon: Icons.bedtime_off_sharp,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Row(children: [Text("Contactos Sugeridos")]),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8,
                children: [
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                  ContactCard(
                    image: "https://picsum.photos/400",
                    name: "Fulatino de Tales",
                    username: "fultanito",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
