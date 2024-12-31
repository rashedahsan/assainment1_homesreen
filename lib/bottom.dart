import 'package:assainment1_homesreen/ui/homesreen.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  int _Homesreen = 0;
  final List<Widget> _pages = [Homesreen()];

  void _onItemTapped(int index) {
    setState(() {
      _Homesreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [Homesreen()],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(4, 16, 4, 4),
        margin: EdgeInsets.only(left: 16, top: 24, right: 8, bottom: 0),
        decoration: BoxDecoration(
            color: Color(0xFF1C212A), borderRadius: BorderRadius.circular(41)),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: _Homesreen,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/Home.png")),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/Desktop.png")),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/Download.png")),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/User.png")),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
