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
      await launchUrl(uri,
          mode: LaunchMode
              .externalApplication); // For opening in external browser
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 90),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'About',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 80,
            height: 5,
            color: const Color.fromARGB(255, 81, 95, 244),
          ),
          const SizedBox(height: 80),
          SizedBox(
            width: 850,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMNjMOyoBDLZN_iPoHfTMT1ltlhWjotM-4RqgAHkKGZE3ijMlEyVfu31F8GB9RnUqBr9I&usqp=CAU',
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'I am Ninya Paraiso',
                      style: TextStyle(
                          color: Color.fromARGB(255, 81, 95, 244),
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                    const Text(
                      'Software Developer',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      width: 460,
                      child: Text(
                          'I’m a dedicated software developer with expertise in building dynamic applications using Vue.js, Flutter, and React. I focus on creating intuitive user experiences and solving complex problems through code. Always eager to learn and adapt, I strive to stay updated with the latest industry trends.'),
                    ),
                    const SizedBox(height: 30),
                    Row(
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
                            _launchUrl(
                                'https://www.linkedin.com/in/ninya-paraiso');
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.behance),
                          onPressed: () {
                            _launchUrl(
                                'https://www.behance.net/marjhealouparaiso');
                          },
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
