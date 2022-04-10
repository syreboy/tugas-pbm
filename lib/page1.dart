import 'dart:html';

import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Roro Jongrang",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: tinggi * 0.015,
              width: lebar * 10,
              color: Color(0xffe1e1e1),
            ),
            Container(
              child: const Image(
                  fit: BoxFit.cover, image: AssetImage("image/jongrang.jpg")),
              height: tinggi * 0.35,
              width: lebar * 10,
            ),
            Container(
              height: tinggi * 0.015,
              width: lebar * 10,
              color: Color(0xffe1e1e1),
            ),
            // ElevatedButton(
            //     onPressed: () {},
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(
            //           vertical: 15.0, horizontal: 10),
            //       child: Text("Play", style: TextStyle(color: Colors.black)),
            //     )),
            Container(
                child: Text(
                  "Play Audio Text...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 3.5,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                height: tinggi * 0.09,
                color: Colors.white),
            Container(
              height: tinggi * 0.015,
              width: lebar * 10,
              color: Color(0xffe1e1e1),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Alkisah di Jawa Tengah ada sebuah kerajaan bernama Pengging. Sang raja mempunyai seorang putra bernama Joko Bandung. Joko Bandung adalah pemuda perkasa dan mempunyai ilmu kesaktian yang tinggi, akan tetapi ia enggan menikah, ia ingin menguasai prambanan.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Prambanan dipimpin oleh raja Boko yang tubuhnya tinggi dan besar sehingga dia dianggap sebagai keturunan raksasa. Perang antara Pengging dan Prambanan pun terjadi, setelah pertarungan besar itu terjadi raja Boko pun mati di tangan Bandung Bodnowoso dan akhirnya prajurit Prambanan pun menyerahkan diri.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Bandung Bondowoso pun diantar ke dalam istana dan melihat seorang putri cantik bernama Roro Jongrang. Joko Bandung langsung jatuh cinta dan ingin menikahinya. Roro Jongrang pun mengatakan 'Hamba bersedia diperistri asalkan kau mampu membuat 1000 candi dan 2 buah sumur yang sangat dalam.'",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Badung Bondowoso pun membuat semua itu dengan dibantu para jin dan makhluk ghaib lainnya. Roro Jonggrang melihat itu dan ia pun terkejut, akhirnya memanggil dayang-dayang istana untuk membantunya membakar kayu dan tumpukan jerami juga memukul-memukul alu dan lesung.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Bunyi lesung dan bakaran jerami membuat ayam jantan berkokok dan para makhluk halus pun menghentikan pekerjaannya dan Bandung Bondowoso mengahampiri Roro Jonggrang dan ia berkaat 'Kalau kau tidak ingin aku nikahi bilang saja, malah kau gunakan tipu muslihat. Dasar kau ini keras seperti batu, dan Roro Jonggrang pun berubah menjadi batu.'",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            )
          ],
        ));
  }
}
