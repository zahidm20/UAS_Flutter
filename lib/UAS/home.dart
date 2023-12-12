// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/bahan.dart';
import 'package:flutter_application_1/UAS/detail.dart';
import 'package:flutter_application_1/UAS/inspiration.dart';
import 'package:flutter_application_1/UAS/keranjang.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    '/image_2.png',
                    height: 33,
                    width: 84,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 26,
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Keranjang()));
                        },
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Barang impianmu',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              children: [
                Image.asset(
                  '/besar.png',
                  height: 313,
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Kartu(
                      img: 'kamar.png',
                      nama: 'Kamar tidur',
                    ),
                    Kartu(
                      img: 'ruang_kerja.png',
                      nama: 'Ruang kerja',
                    ),
                    Kartu(
                      img: 'dapur.png',
                      nama: 'Dapur',
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Kartu(
                      img: 'bayi.png',
                      nama: 'Bayi & Anak',
                    ),
                    Kartu(
                      img: 'tekstil.png',
                      nama: 'Tektsil',
                    ),
                    Kartu(
                      img: 'penyimpanan.png',
                      nama: 'Penyimpanan',
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produk populer',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1B1B1B)),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0058AB)),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail()));
                        },
                        child: Container(
                          height: 254,
                          width: 146,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                '/kipas.png',
                                height: 146,
                              ),
                              Text(
                                'KROKFJORDEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Pengait dengan\nplastik isap...',
                                style: TextStyle(color: Color(0xff6C6C6C)),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'Rp99.900',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 254,
                        width: 146,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Image.asset(
                              '/meja.png',
                              height: 146,
                            ),
                            Text('ALEX/LAGKAPTEN',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            SizedBox(height: 6),
                            Text(
                              'Meja, hijau muda/\nputih, 120x60 cm',
                              style: TextStyle(color: Color(0xff6C6C6C)),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Rp1.909.000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 254,
                        width: 146,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Image.asset(
                              '/meja.png',
                              height: 146,
                            ),
                            Text(
                              'FARDAL/PAX',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Kombinasi lemari\npakaian, putih/hig...',
                              style: TextStyle(color: Color(0xff6C6C6C)),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Rp8.400.000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 254,
                        width: 146,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Image.asset(
                              '/kipas.png',
                              height: 146,
                            ),
                            Text(
                              'FARDAL/PAX',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Kombinasi lemari\npakaian, putih/hig...',
                              style: TextStyle(color: Color(0xff6C6C6C)),
                            ),
                            SizedBox(height: 12),
                            Text('Rp8.400.000')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Telusuri Koleksi Kami",
                      style: TextStyle(
                          color: Color(0xff1B1B1B),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                          color: Color(0xff0058AB),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 245,
                      width: 219,
                      color: Color(0xff4F707F),
                      child: Column(
                        children: [
                          Image.asset('/gurita.png'),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BLÅVINGAD',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Koleksi yang\nterinspirasi dari lautan\nuntuk menciptakan ...',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 245,
                      width: 219,
                      color: Color(0xff5E4238),
                      child: Column(
                        children: [
                          Image.asset('/natal.png'),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VINTERFINT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Koleksi VINTERFINT\nhadir dengan warna\ndan pola indah ...',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Penawaran Terkini',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0058AB)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      '/potongan.png',
                      width: 220,
                    ),
                    SizedBox(width: 12),
                    Image.asset(
                      '/potongan2.png',
                      width: 220,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
