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

    // Calculate the base size for responsiveness
    final double textSize =
        screenWidth * 0.15; // Text size is 15% of screen width
    final double imageSize =
        screenWidth * 0.3; // Image size is 30% of screen width

    return Container(
      width: screenWidth,
      height: screenHeight,
      margin: EdgeInsets.only(
        top: screenHeight * 0.1, // 10% of screen height
        left: screenWidth * 0.08, // 8% of screen width
        right: screenWidth * 0.15, // 15% of screen width
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
                      fontSize: textSize, // Responsive font size
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(screenWidth * 0.03,
                              screenHeight * 0.03), // Responsive shadow offset
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'LLO.',
                    style: TextStyle(
                      fontSize: textSize, // Responsive font size
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(screenWidth * 0.015,
                              screenHeight * 0.015), // Responsive shadow offset
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
              width: imageSize, // Responsive image width
              height: imageSize * 1.33, // Maintain aspect ratio (600x800)
            ),
          ),
        ],
      ),
    );
  }
}
