import 'package:DigitalDhukan/View/DashBoard/pages/MyMoneyPage.dart';
import 'package:DigitalDhukan/View/DashBoard/pages/myProducts.dart';
import 'package:DigitalDhukan/View/DashBoard/pages/settingsPage.dart';
import 'package:DigitalDhukan/View/DashBoard/pages/storePage.dart';
import 'package:DigitalDhukan/View/DashBoard/pages/whatsappPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashbordPage extends StatefulWidget {
  @override
  _DashbordPageState createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  int currentIndex = 0;
  final tabs = [
    StorePage(),
    MyMoneyPage(),
    MyProductPage(),
    WhatsAppPage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[800],
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.store,
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 1),
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.rupeeSign,
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 1),
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.list,
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 1),
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 1),
              )),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.cog,
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 1),
              )),
        ],
      ),
    );
  }
}
