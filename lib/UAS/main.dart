// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart'; 
import 'package:flutter_application_1/UAS/home.dart';
import 'package:flutter_application_1/UAS/inspiration.dart';
import 'package:flutter_application_1/UAS/keranjang.dart';
import 'package:flutter_application_1/UAS/profil.dart';
import 'package:flutter_application_1/UAS/splash.dart';
import 'package:flutter_application_1/UAS/wishlist.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Container kosong selama proses navigasi
            return Splash();
          } else {
            return BtnNavigationBar(); // Tampilkan indikator loading selama inisialisasi
          }
        },
      ),
    );
  }
}

class BtnNavigationBar extends StatefulWidget {
  const BtnNavigationBar({super.key});

  @override
  State<BtnNavigationBar> createState() => _BtnNavigationBarState();
}

class _BtnNavigationBarState extends State<BtnNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Inspiration(),
    Wishlist(),
    Profil(),
    Keranjang(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Iconsax.home_1), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.coffee), label: 'Inspirasi'),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff0058AB),
        // unselectedItemColor: Color(0xff1b1b1b),
        unselectedLabelStyle: TextStyle(color: Color(0xff1b1b1b)),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
