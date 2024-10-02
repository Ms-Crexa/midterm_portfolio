import 'package:flutter/material.dart';

class Maincontent extends StatefulWidget {
  const Maincontent({super.key});

  @override
  _MaincontentState createState() => _MaincontentState();
}

class _MaincontentState extends State<Maincontent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 100, left: 80, right: 150),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HE',
                    style: TextStyle(
                      fontSize: 160,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(10.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'LLO.',
                    style: TextStyle(
                      fontSize: 160,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.network(
              'https://placehold.co/600x800.png',
            ),
          ),
        ],
      ),
    );
  }
}
