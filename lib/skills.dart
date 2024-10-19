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
      height: screenHeight,
      width: screenWidth,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            height: 100,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    skillsGrid(),
                    const SizedBox(width: 60),
                    Image.network(
                      'https://images.vexels.com/media/users/3/291888/isolated/preview/2b24611a5c1798cdaf0ac67a72170075-decorative-blue-flowers.png',
                      width: screenWidth * 0.3,
                    ),
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    skillsGrid(),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://images.vexels.com/media/users/3/291888/isolated/preview/2b24611a5c1798cdaf0ac67a72170075-decorative-blue-flowers.png',
                      width: screenWidth * 0.6,
                    ),
                  ],
                );
              }
            },
          )
        ],
      ),
    );
  }

  Widget skillsGrid() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Development',
          style: TextStyle(
              color: Color.fromARGB(255, 81, 95, 244),
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
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
        SizedBox(height: 30),
        Text(
          'Design',
          style: TextStyle(
              color: Color.fromARGB(255, 81, 95, 244),
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 10,
          children: [
            Text('Figma'),
            Text('Canva'),
            Text('Photoshop'),
          ],
        ),
      ],
    );
  }
}
