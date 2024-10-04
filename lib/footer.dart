import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              Text(
                'About',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              Text(
                'Skills',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              Text(
                'Portfolio',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              Text(
                'Contact',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'NINYA PARAISO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'I\'m Ninya Paraiso and this is my personal website.',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
