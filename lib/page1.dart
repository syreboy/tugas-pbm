import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int maxduration = 100;
  int currentpos = 0;
  String textHolder = "Speed: Normal";
  double speed = 1;
  String currentpostlabel = "00:00";
  String maxdurationlabel = "00:00";
  String audioasset = "audio/STORY1.mp3";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      ByteData bytes = await rootBundle.load(audioasset);
      audiobytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);

      player.onDurationChanged.listen((Duration d) {
        maxduration = d.inMilliseconds;

        int mhours = Duration(milliseconds: maxduration).inHours;
        int mminutes = Duration(milliseconds: maxduration).inMinutes;
        int mseconds = Duration(milliseconds: maxduration).inSeconds;

        int hhours = mhours;
        int hminutes = mminutes - (mhours * 60);
        int hseconds = mseconds - (mminutes * 60 + mhours * 60 * 60);

        maxdurationlabel = "$hhours:$hminutes:$hseconds";

        setState(() {});
      });

      player.onAudioPositionChanged.listen((Duration p) {
        currentpos = p.inMilliseconds;

        int shours = Duration(milliseconds: currentpos).inHours;
        int sminutes = Duration(milliseconds: currentpos).inMinutes;
        int sseconds = Duration(milliseconds: currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {});
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Roro Jongrang",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: tinggi * 0.015,
              width: lebar,
              color: Color(0xffe1e1e1),
            ),
            Container(
              child: const Image(
                  fit: BoxFit.cover, image: AssetImage("image/jongrang.jpg")),
              height: tinggi * 0.35,
              width: lebar,
            ),
            Container(
              height: tinggi * 0.015,
              width: lebar,
              color: Color(0xffe1e1e1),
            ),
            Container(
              height: tinggi * 0.08,
              width: lebar,
              child: Center(
                child: Wrap(spacing: 10, children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        if (speed > 1 && speed <= 2) {
                          player.setPlaybackRate(1.0);
                          speed = speed / 2;
                          setState(() {
                            textHolder = "Speed: Normal";
                          });
                        } else if (speed > 2 && speed <= 4) {
                          player.setPlaybackRate(1.5);
                          speed = speed / 2;
                          setState(() {
                            textHolder = "Speed: $speed" + "X";
                          });
                        } else if (speed == 1) {
                          player.setPlaybackRate(0.5);
                          speed = 1 / 2;
                          setState(() {
                            textHolder = "Speed: 0.5X";
                          });
                        } else if (speed <= 0.5) {
                          print("Minimum Speed");
                          setState(() {
                            textHolder = "Speed: 0.5X";
                          });
                        }
                      },
                      child: Icon(
                        Icons.fast_rewind,
                        size: 38,
                        color: Colors.black,
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () async {
                        if (!isplaying && !audioplayed) {
                          int result = await player.playBytes(audiobytes);
                          if (result == 1) {
                            //play success
                            setState(() {
                              isplaying = true;
                              audioplayed = true;
                            });
                          } else {
                            print("Error while playing audio.");
                          }
                        } else if (audioplayed && !isplaying) {
                          int result = await player.resume();
                          if (result == 1) {
                            //resume success
                            setState(() {
                              isplaying = true;
                              audioplayed = true;
                            });
                          } else {
                            print("Error on resume audio.");
                          }
                        } else {
                          int result = await player.pause();
                          if (result == 1) {
                            //pause success
                            setState(() {
                              isplaying = false;
                            });
                          } else {
                            print("Error on pause audio.");
                          }
                        }
                      },
                      child: Icon(
                        isplaying ? Icons.pause : Icons.play_arrow,
                        size: 38,
                        color: Colors.black,
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        if (speed < 2 && speed > 0.5) {
                          player.setPlaybackRate(1.5);
                          speed = speed * 2;
                          setState(() {
                            textHolder = "Speed: $speed" + "X";
                          });
                        } else if (speed < 4 && speed >= 2) {
                          player.setPlaybackRate(2.0);
                          speed = speed * 2;
                          setState(() {
                            textHolder = "Speed: $speed" + "X";
                          });
                        } else if (speed == 0.5) {
                          player.setPlaybackRate(1.0);
                          speed = speed * 2;
                          setState(() {
                            textHolder = "Speed: Normal";
                          });
                        } else if (speed >= 4) {
                          print("Maximum Speed");
                        }
                      },
                      child: Icon(
                        Icons.fast_forward,
                        size: 38,
                        color: Colors.black,
                      )),
                ]),
              ),
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
