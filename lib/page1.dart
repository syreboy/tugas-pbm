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
            "Cerita Aku Pusing",
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
                  fit: BoxFit.cover, image: AssetImage("image/lulu.jpg")),
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
                  "Dalam perkembangan teknologi saat ini informasi sangat rentan terhadap serangan dan gangguan dari pihak lain. Saat pengirim dan penerima bertukar informasi melalui SMS, Email atau jenis chatting lainnya, lalu lintas informasi tersebut tidaklah terjamin keamanannya contohnya serangan man in the middle, seseorang dapat membaca, menyisipkan, ataupun mengubah data antara dua pihak yang sedang bertukar informasi atau berkomunikasi, seseorang tersebut menempatkan dirinya di tengah pembicaraan dan menyamar sebagai orang lain (M. Mustari, 2010).",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Salah satu teknik pengamanan dalam penyampaian informasi adalah dengan melakukan enkripsi dan dekripsi terhadap informasi tersebut, yang dikenal dengan teknik kriptografi. Kritografi adalah ilmu seni untuk menjaga kerahasian dan keamanan suatu data atau informasi ketika informasi dikirim dari suatu tempat ke tempat yang lain (Ariyus, 2008). Prinsip dasar pengamanan kriptografi adalah proses enkripsi dan dekripsi.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 2, fontSize: 16),
                ),
              ),
            )
          ],
        ));
  }
}
