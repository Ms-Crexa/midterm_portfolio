import 'package:flutter/material.dart';
import 'package:midterm_portfolio/maincontent.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget _buildMenu(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    List<Widget> menuItems = [
      TextButton(
          onPressed: () {},
          child: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'About',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'Portfolio',
            style: TextStyle(color: Colors.white),
          )),
      TextButton(
          onPressed: () {},
          child: Text(
            'Contact',
            style: TextStyle(color: Colors.white),
          )),
    ];

    if (isMobile) {
      return Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu),
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
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 95, 244),
        title: Text(
          'Ninya Paraiso',
          style: TextStyle(color: Colors.white),
        ),
        actions: [_buildMenu(context)],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 95, 244),
      appBar: Appbar(),
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
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Skills'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Portfolio'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {},
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
