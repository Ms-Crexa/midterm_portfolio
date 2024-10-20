import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      width: screenWidth,
      height: screenHeight,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth < 600 ? 40 : 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 80,
            height: 5,
            color: const Color.fromARGB(255, 81, 95, 244),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: screenWidth > 850 ? 850 : screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                screenWidth < 800
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                              radius: 100,
                              backgroundImage:
                                  AssetImage('lib/assets/rose2.jpg')),
                          const SizedBox(height: 30),
                          _buildTextContent(screenWidth < 800),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                              radius: 150,
                              backgroundImage:
                                  AssetImage('lib/assets/rose2.jpg')),
                          _buildTextContent(screenWidth < 800),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContent(bool isMobile) {
    return SizedBox(
      width: 400,
      child: Column(
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            'I am Ninya Paraiso',
            style: TextStyle(
              color: const Color.fromARGB(255, 81, 95, 244),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Text(
            'Software Developer',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 15),
          const Text(
            'I’m a dedicated software developer with expertise in building dynamic applications using Vue.js, Flutter, and React. I focus on creating intuitive user experiences and solving complex problems through code. Always eager to learn and adapt, I strive to stay updated with the latest industry trends.',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment:
                isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  _launchUrl('https://github.com/Ms-Crexa');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  _launchUrl('https://www.linkedin.com/in/ninya-paraiso');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.behance),
                onPressed: () {
                  _launchUrl('https://www.behance.net/marjhealouparaiso');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
