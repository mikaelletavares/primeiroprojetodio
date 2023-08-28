import 'package:flutter/material.dart';
import 'package:primeiroprojetodio/screens/about_screen.dart';
import 'package:primeiroprojetodio/screens/end_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class AboutMeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutMeScreenState();
  }
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  @override
  void initState() {
    super.initState();
  }

  _openLinkedIn() async {
    if (Platform.isAndroid) {
      await launchUrl(
          Uri.parse('https://www.linkedin.com/in/mikaelle-tavares/'));
    } else if (Platform.isIOS) {}
  }

  _openInstagram() async {
    if (Platform.isAndroid) {
      await launchUrl(Uri.parse('https://www.instagram.com/mikahlt/'));
    } else if (Platform.isIOS) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://img.freepik.com/fotos-premium/uma-mulher-de-cabelo-rosa-e-ceu-azul-com-nuvens_950633-254.jpg?w=2000',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutScreen(),
                              ),
                            );
                          },
                          child: const Icon(Icons.keyboard_arrow_left_rounded),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/80829487?v=4"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'MIKAELLE LARISSA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Web and mobile\n front-end developer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: _openLinkedIn,
                            child: const Image(
                                width: 40,
                                height: 40,
                                image: NetworkImage(
                                    "https://static-00.iconduck.com/assets.00/linkedin-icon-1024x1024-net2o24e.png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: _openInstagram,
                            child: const Image(
                                width: 40,
                                height: 40,
                                image: NetworkImage(
                                    "https://cpaq.ufms.br/files/2022/03/Instagram-logo-free-download-PNG-e1647376733700.png")),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                        backgroundColor: Color.fromRGBO(46, 158, 183, 1.0),
                        elevation: 0,
                        highlightElevation: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EndScreen(),
                            ),
                          );
                        },
                        child: const Icon(Icons.keyboard_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
