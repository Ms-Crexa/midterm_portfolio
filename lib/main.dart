import 'package:flutter/material.dart';
import 'package:midterm_portfolio/about.dart';
import 'package:midterm_portfolio/footer.dart';
import 'package:midterm_portfolio/maincontent.dart';
import 'package:midterm_portfolio/skills.dart';
import 'package:midterm_portfolio/contacts.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final Function(int) onMenuTap;

  const Appbar({super.key, required this.onMenuTap});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget _buildMenu(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    List<Widget> menuItems = [
      TextButton(
        onPressed: () => onMenuTap(0), // Home
        child: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      TextButton(
        onPressed: () => onMenuTap(1), // About
        child: const Text(
          'About',
          style: TextStyle(color: Colors.white),
        ),
      ),
      TextButton(
        onPressed: () => onMenuTap(2), // Skills
        child: const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
      ),
      TextButton(
        onPressed: () => onMenuTap(3), // Contact
        child: const Text(
          'Contact',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ];

    if (isMobile) {
      return Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
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
    return Container(
      color: const Color.fromARGB(255, 81, 95, 244),
      padding: EdgeInsets.only(
        left: isMobile ? 25 : 70,
        right: 30,
        top: 10,
      ),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(int sectionIndex) {
    double offset = 0;

    switch (sectionIndex) {
      case 0:
        offset = 0; // Home
        break;
      case 1:
        offset = 700; // About
        break;
      case 2:
        offset = 1500; // Skills
        break;
      case 3:
        offset = 2050; // Contact
        break;
    }

    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 95, 244),
      appBar: Appbar(onMenuTap: _scrollToSection),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Text('Home'),
              onTap: () => _scrollToSection(0),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () => _scrollToSection(1),
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () => _scrollToSection(2),
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () => _scrollToSection(3),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: const [
            Maincontent(), // Home Section
            About(), // About Section
            Skills(), // Skills Section
            Contacts(), // Contact Section
            Footer(), // Footer Section
          ],
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
