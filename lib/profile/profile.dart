import 'package:flutter/material.dart';
import 'package:ikea/custom/svg.dart';
import 'package:ikea/profile/components/appbar.dart';
import 'package:ikea/profile/components/list.dart';
import 'package:ikea/theme/color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarProfile(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 26.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/barcode.png',
                      width: 84,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rizqi Fatur',
                          style: blackbold16,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '160002359102020',
                          style: graynormal,
                        ),
                      ],
                    )
                  ],
                ),
               SizedBox(height: 24.0,),
               Column(
                 children: [
                   ListProfile('${Profiles}', 'Profil Saya'),
                   ListProfile('${Packet}', 'Pesanan'),
                   ListProfile('${StartOutline}', 'Ulasan'),
                   ListProfile('${Gift}', 'Reward Saya'),
                   ListProfile('${Help}', 'Bantuan'),
                 ],
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}
