import 'package:flutter/material.dart';
import 'package:flutter_application_1/UAS/keranjang.dart';
import 'package:iconsax/iconsax.dart';
import 'package:like_button/like_button.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int count = 0;
  bool isWish = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 0.6,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Text(
              'ALEX/LAGKAPTEN',
              style: TextStyle(
                  color: Color(0xff1B1B1B),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(Icons.search, color: Colors.black),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.share_outlined, color: Colors.black),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart_outlined, color: Colors.black)
              ],
            )
          ],
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
                  '/detail.png',
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      '/detail1.png',
                      height: 64,
                    ),
                    Image.asset(
                      '/detail2.png',
                      height: 64,
                    ),
                    Image.asset(
                      '/detail3.png',
                      height: 64,
                    ),
                    Image.asset(
                      '/detail4.png',
                      height: 64,
                    ),
                    Image.asset(
                      '/detail5.png',
                      height: 64,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ALEX/LAGKAPTEN',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    LikeButton(
                      onTap: (isLiked) async {
                        setState(() {
                          isWish = true;
                        });
                        return !isLiked;
                      },
                      size: 40,
                      circleColor:
                          CircleColor(start: Colors.red, end: Colors.redAccent),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.redAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          child: isWish
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 32,
                                  key: ValueKey<bool>(isLiked),
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.grey,
                                  size: 32,
                                  key: ValueKey<bool>(isLiked),
                                ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Meja, hijau muda/putih, 120x60 cm',
                      style: TextStyle(
                        color: Color(0xff6C6C6C),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Rp1.909.000',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Iconsax.star1,
                      size: 18,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Text('4.5 | Terjual 116')
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Ruang terbatas bukan berarti Anda harus menolak\nbelajar atau bekerja dari rumah. Meia ini memakan ',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border.all(color: Color(0xffE7E7E7))),
        child: Padding(
            padding:
                const EdgeInsets.only(top: 24, bottom: 17, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE7E7E7)),
                      borderRadius: BorderRadius.circular(1)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (count > 1) {
                                count = count - 1;
                              }
                            });
                          },
                          icon: Icon(
                            Iconsax.minus,
                            size: 26,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${count}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Icon(
                            Iconsax.add,
                            size: 26,
                          )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0058AB),
                  ),
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: TextButton(
                    onPressed: () {
                      // Navigasi ke halaman baru saat tombol ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Keranjang(),
                        ),
                      );
                    },
                    child: Text(
                      'Tambah Keranjang',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
