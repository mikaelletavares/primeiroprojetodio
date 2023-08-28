import 'package:flutter/material.dart';
import 'package:primeiroprojetodio/screens/about_screen.dart';

class EndScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EndScreenState();
  }
}

class _EndScreenState extends State<EndScreen> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  void initState() {
    super.initState();
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
                width: 200,
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
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Thank you for\n seeing this far!\n See you soon!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                        backgroundColor: Color.fromRGBO(46, 158, 183, 1.0),
                        elevation: 0,
                        highlightElevation: 0,
                        onPressed: () {
                          toggleFavorite();
                        },
                        child: isFavorite
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
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
