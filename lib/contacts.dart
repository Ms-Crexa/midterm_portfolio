import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        double horizontalPadding = screenWidth > 1200
            ? screenWidth * 0.15
            : screenWidth > 800
                ? screenWidth * 0.1
                : screenWidth * 0.05;

        double titleFontSize = screenWidth > 600 ? 40 : 30;
        double labelFontSize = screenWidth > 600 ? 20 : 16;
        double spacing = screenWidth > 600 ? 30 : 15;

        return Container(
          padding: const EdgeInsets.only(top: 70),
          width: screenWidth,
          height: screenHeight,
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 80,
                  height: 5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 81, 95, 244),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 3),
              Container(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: screenWidth > 600
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _buildContactInfo(labelFontSize, spacing),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: _buildContactForm(spacing),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildContactInfo(labelFontSize, spacing),
                          SizedBox(height: spacing * 2),
                          _buildContactForm(spacing),
                        ],
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContactInfo(double labelFontSize, double spacing) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
            color: const Color.fromARGB(255, 81, 95, 244),
            fontWeight: FontWeight.w700,
            fontSize: labelFontSize,
          ),
        ),
        const Text('mrjhlprs@gmail.com'),
        SizedBox(height: spacing),
        Text(
          'Contact',
          style: TextStyle(
            color: const Color.fromARGB(255, 81, 95, 244),
            fontWeight: FontWeight.w700,
            fontSize: labelFontSize,
          ),
        ),
        const Text('0975 998 3569'),
        SizedBox(height: spacing),
        Text(
          'Address',
          style: TextStyle(
            color: const Color.fromARGB(255, 81, 95, 244),
            fontWeight: FontWeight.w700,
            fontSize: labelFontSize,
          ),
        ),
        const Text('Phase 1, Ecoland, Davao City'),
      ],
    );
  }

  Widget _buildContactForm(double spacing) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: spacing),
        const TextField(
          maxLines: 4,
          decoration: InputDecoration(
            labelText: 'Enter your message',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: spacing),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ),
      ],
    );
  }
}
