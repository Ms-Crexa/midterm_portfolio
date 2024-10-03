import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(top: 70),
      height: screenHeight,
      width: screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 80,
            height: 5,
            color: const Color.fromARGB(255, 81, 95, 244),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Development',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 81, 95, 244),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing:
                        10, // Vertical gap between rows if items overflow
                    children: [
                      Text('Python'),
                      Text('JavaScript'),
                      Text('TypeScript'),
                      Text('ReactJs'),
                      Text('VueJs'),
                      Text('NextJs'),
                      Text('HTML'),
                      Text('CSS'),
                    ],
                  ),
                  SizedBox(height: 30), // Spacing between sections
                  Text(
                    'Design',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 81, 95, 244),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  SizedBox(height: 10), // Spacing between title and skills
                  Wrap(
                    spacing: 10, // Horizontal gap between items
                    children: [
                      Text('Figma'),
                      Text('Canva'),
                      Text('Photoshop'),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 60),
              Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMNjMOyoBDLZN_iPoHfTMT1ltlhWjotM-4RqgAHkKGZE3ijMlEyVfu31F8GB9RnUqBr9I&usqp=CAU'))
            ],
          )
        ],
      ),
    );
  }
}
