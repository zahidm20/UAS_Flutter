import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/inspiration.dart';
import 'package:iconsax/iconsax.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu Akun',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Icon(
                    Iconsax.setting_2,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 24, bottom: 290),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'barkot.png',
                      height: 99,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zahid Maulana',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '160002359102020',
                          style:
                              TextStyle(color: Color(0xff6C6C6C), fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.profile_2user,
                      size: 26,
                    ),
                    Text(
                      'Profil Saya',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.box_1,
                      size: 26,
                    ),
                    Text(
                      'Pesanan',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.profile_2user,
                      size: 26,
                    ),
                    Text(
                      'Ulasan',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.star,
                      size: 26,
                    ),
                    Text(
                      'Reward Saya',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Iconsax.judge,
                      size: 26,
                    ),
                    Text(
                      'Bantuan',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Container(
                  height: 1,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE7E7E7)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
