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

    final isMobile = screenWidth < 600;

    final double textSize = isMobile ? screenWidth * 0.3 : screenWidth * 0.15;
    final double imageSize = isMobile ? screenWidth * 0.5 : screenWidth * 0.4;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.84,
      margin: EdgeInsets.only(
        top: screenHeight * 0.1,
        left: screenWidth * 0.08,
        right: screenWidth * 0.08,
      ),
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
                      fontSize: textSize,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset:
                              Offset(screenWidth * 0.015, screenHeight * 0.015),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'LLO.',
                    style: TextStyle(
                      fontSize: textSize,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset:
                              Offset(screenWidth * 0.015, screenHeight * 0.015),
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
            child: Image.asset(
              'lib/assets/rose.png',
              width: imageSize,
              height: imageSize,
            ),
          ),
        ],
      ),
    );
  }
}
