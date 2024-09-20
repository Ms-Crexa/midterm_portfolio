import 'package:flutter/material.dart';

class Maincontent extends StatefulWidget {
  const Maincontent({Key? key}) : super(key: key);

  @override
  _MaincontentState createState() => _MaincontentState();
}

class _MaincontentState extends State<Maincontent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HE',
                      style: TextStyle(
                        fontSize: 90, // Bigger font size
                        fontWeight: FontWeight.bold, // Bolder text
                        color: Colors.blue, // Blue color
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color:
                                Colors.black.withOpacity(0.5), // Shadow color
                            offset: Offset(5.0, 5.0), // Shadow position
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'LLO.',
                      style: TextStyle(
                        fontSize: 90, // Bigger font size
                        fontWeight: FontWeight.bold, // Bolder text
                        color: Colors.blue, // Blue color
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color:
                                Colors.black.withOpacity(0.5), // Shadow color
                            offset: Offset(5.0, 5.0), // Shadow position
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.network(
              'https://d2bzx2vuetkzse.cloudfront.net/fit-in/0x450/unshoppable_producs/f7b9d7e3-5e5b-4b5c-802b-2a6882a25ea5.png')
        ],
      ),
    );
  }
}
