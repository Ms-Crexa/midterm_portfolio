import 'package:flutter/material.dart';
import 'package:midterm_portfolio/maincontent.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget _buildMenu(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    List<Widget> menuItems = [
      TextButton(onPressed: () {}, child: Text('Home')),
      TextButton(onPressed: () {}, child: Text('About')),
      TextButton(onPressed: () {}, child: Text('Skills')),
      TextButton(onPressed: () {}, child: Text('Portfolio')),
      TextButton(onPressed: () {}, child: Text('Contact')),
    ];

    if (isMobile) {
      return Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu),
          onPressed: () =>
              Scaffold.of(context).openEndDrawer(), // Open right-side drawer
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
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 114, 127, 143),
      title: Text('Ninya Paraiso'),
      actions: [_buildMenu(context)],
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 127, 143),
      appBar: Appbar(),
      endDrawer: Drawer(
        // Right-side drawer
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
              title: Text('Home'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              title: Text('Skills'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              title: Text('Portfolio'),
              onTap: () {
                // Handle navigation
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                // Handle navigation
              },
            ),
          ],
        ),
      ),
      body: Maincontent(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}
