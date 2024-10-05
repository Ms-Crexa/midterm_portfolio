import 'package:flutter/material.dart';
import 'package:midterm_portfolio/about.dart';
import 'package:midterm_portfolio/footer.dart';
import 'package:midterm_portfolio/maincontent.dart';
import 'package:midterm_portfolio/skills.dart';
import 'package:midterm_portfolio/contacts.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Widget _buildMenu(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    List<Widget> menuItems = [
      TextButton(
          onPressed: () {},
          child: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: const Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: const Text(
            'Portfolio',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: const Text(
            'Contact',
            style: TextStyle(color: Colors.white),
          )),
    ];

    if (isMobile) {
      return Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: menuItems,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    return Padding(
      padding: EdgeInsets.only(left: isMobile ? 25 : 70, right: 30),
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 95, 244),
        title: const Text(
          'Ninya Paraiso',
          style: TextStyle(color: Colors.white),
        ),
        actions: [_buildMenu(context)],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 95, 244),
      appBar: const Appbar(),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Portfolio'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Maincontent(),
              About(),
              Skills(),
              Contacts(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}
