import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/inspiration.dart';
import 'package:flutter_application_1/UAS/model.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  static List<product> list_product = [
    product('assets/wishlist1.png', 'ALEX', 'Unit laci, abu-abu toska,\n36x70',
        1350000),
    product('assets/wishlist2.png', 'MILLBERGET', 'Kursi putar, murum hitam',
        1799000),
    product('assets/wishlist3.png', 'SONGESAND',
        'Rngk tmpt tdr dg 2 ktk penyimpanan,\n cokelat, 160x200 cm', 3499000),
    product(
        'assets/wishlist4.png', 'HEKTAR', 'Lampu lantai, abu-abu tua', 1299000),
  ];

  List<product> display_product = List.of(list_product);
  bool resultFound = true;

  void updateListProduct(String value) {
    setState(() {
      display_product = list_product
          .where((element) =>
              element.text.toLowerCase().contains(value.toLowerCase()))
          .toList();
      resultFound = display_product.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 140,
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
                    Row(
                      children: [
                        Text(
                          'Wishlist',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: 26),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black,
                          size: 26,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                TextField(
                  onChanged: (value) => updateListProduct(value),
                  decoration: InputDecoration(
                    hintText: 'Cari barang diwishlist',
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
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4 Barang',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.list_outlined),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                  child: resultFound
                      ? ListView.builder(
                          itemCount: display_product.length,
                          itemBuilder: (context, index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  display_product[index].img,
                                  height: 99,
                                ),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      display_product[index].text,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      display_product[index].subtext,
                                      style: TextStyle(
                                          color: Color(0xff6C6C6C),
                                          fontSize: 14),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id_ID',
                                              symbol: 'Rp.',
                                              decimalDigits: 0)
                                          .format(display_product[index].harga)
                                          .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      height: 38,
                                      width: 265,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xff0058AB)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Tambah Ke Keranjang',
                                          style: TextStyle(
                                              color: Color(0xff0058AB),
                                              fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Gap(24),
                                  ],
                                ),
                                SizedBox(width: 50),
                                Icon(Icons.more_vert_outlined)
                              ],
                            );
                          },
                        )
                      : Center(
                          child: Text('not found'),
                        ))
            ],
          ),
        ));
  }
}
