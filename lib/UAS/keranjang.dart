// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/home.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  int jumlahA = 1;
  int hargaA = 1350000;

  int jumlah = 1;
  int harga = 1499000;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0.6,
        title: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  Text(
                    'Keranjang',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 260),
                  Icon(
                    Iconsax.heart4,
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
            padding: const EdgeInsets.only(left: 45, right: 24, top: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2',
                      style: TextStyle(color: Color(0xff1B1B1B)),
                    ),
                    SizedBox(width: 6),
                    Text(
                      'barang',
                      style: TextStyle(color: Color(0xff6C6C6C)),
                    ),
                    SizedBox(width: 276),
                    Text(
                      'Hapus semua',
                      style: TextStyle(color: Color(0xff0058AB)),
                    )
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      '/wishlist1.png',
                      height: 99,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ALEX',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Unit laci, abu-abu toska,\n36x70',
                          style:
                              TextStyle(color: Color(0xff6C6C6C), fontSize: 14),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Rp1.350.000',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffE7E7E7)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Icon(Iconsax.trash),
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              height: 38,
                              width: 183,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffE7E7E7)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (jumlahA > 0) {
                                          jumlahA--;
                                          hargaA = hargaA - 1350000;
                                        }
                                      });
                                    },
                                    child: Icon(Iconsax.minus4),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    jumlahA.toString(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(width: 25),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        jumlahA++;
                                        hargaA = hargaA + 1350000;
                                      });
                                    },
                                    child: Icon(Iconsax.add),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      '/wishlist5.png',
                      height: 99,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MACKAPÄR',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                          style:
                              TextStyle(color: Color(0xff6C6C6C), fontSize: 14),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Rp1.499.000  ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffE7E7E7)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Icon(Iconsax.trash),
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              height: 38,
                              width: 183,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffE7E7E7)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (jumlah > 0) {
                                          jumlah--;
                                          harga = harga - 1499000;
                                        }
                                      });
                                    },
                                    child: Icon(Iconsax.minus4),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    jumlah.toString(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(width: 25),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        jumlah++;
                                        harga = harga + 1499000;
                                      });
                                    },
                                    child: Icon(Iconsax.add),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 300),
          Container(
            height: 100,
            width: 600,
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.grey)),
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(color: Color(0xff6C6C6C)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          NumberFormat.currency(
                                  locale: 'id_ID',
                                  symbol: 'Rp.',
                                  decimalDigits: 0)
                              .format(harga + hargaA)
                              .toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      height: 56,
                      width: 181,
                      decoration: BoxDecoration(color: Color(0xff0058AB)),
                      child: Center(
                        child: Text(
                          'Beli',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
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
