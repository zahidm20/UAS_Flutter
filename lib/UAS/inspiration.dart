import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/detail.dart';
import 'package:flutter_application_1/UAS/home.dart';
import 'package:flutter_application_1/UAS/profil.dart';
import 'package:flutter_application_1/UAS/wishlist.dart';
import 'package:iconsax/iconsax.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 157,
        backgroundColor: Colors.white,
        elevation: 0.6,
        title: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Temukan Inspirasi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Text(
                    'Inspirasi',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 48,
                  ),
                  Text(
                    'Koleksi',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(width: 48),
                  Text(
                    'Edukasi',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: 96,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Semua',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        height: 48,
                        width: 96,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Ruang kerja',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        height: 48,
                        width: 96,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Dapur',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        height: 48,
                        width: 96,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Kamar mandi',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        height: 48,
                        width: 96,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Ruang makan',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '/inspirasimeja.png',
                            height: 140,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Hunian compact yang\nnyaman',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '/inspirasiolahraga.png',
                            height: 140,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Lakukan 5 hal ini agar\nsepatumu bebas ...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('/kasur.png'),
                      SizedBox(height: 16),
                      Text(
                        'Hadirkan nuasa elegant dan fancy kedalam\nkamar tidur anda',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '/sabun.png',
                            height: 140,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Rumah lebih sehat\ndengan set tempat ...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '/wc.png',
                            height: 140,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Membuat kamar anak\nrapi jadi lebih mudah',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
