import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:DigitalDhukan/colorConstraints.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: ColorConst.green,
      ),
      body: Container(
            width: width,
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                ProfileWidget(),
                SizedBox(
                  height: 5,
                ),
                SecondContainer(),
                SizedBox(
                  height: 10,
                ),
                ThirdContainer(),
              ]),
            ),
          ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: ColorConst.lightGray,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                  color: ColorConst.green,
                ),
                Text(
                  '+ Add Logo',
                  style: TextStyle(
                      color: ColorConst.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ],
            )),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shope Name',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  'Edit my business details',
                  style: TextStyle(
                    color: ColorConst.green,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 20,
                  color: ColorConst.green,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class SecondContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(text: 'Store Status: '),
              TextSpan(
                  text: 'Open', style: TextStyle(fontWeight: FontWeight.bold)),
            ])),
            Switch(value: true,activeColor: ColorConst.green, onChanged: (bool value) {  },),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(text: 'Store Status: '),
              TextSpan(
                  text: 'Open', style: TextStyle(fontWeight: FontWeight.bold)),
            ])),
            Switch(value: true,activeColor: ColorConst.green, onChanged: (bool value) {  },),
          ],
        ),
        Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  color: ColorConst.green,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              alignment: Alignment.center,
              child: Text(
                'Add your products',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
      ],
    );
  }
}

class ThirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Refer and Earn'),
          trailing: Container(
              width: 100,
              height: 20,
              color: ColorConst.red,
              alignment: Alignment.center,
              child: Text(
                'Win Reward',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
        ),
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Refer and Earn'),
        ),
        ListTile(
          leading: Icon(Icons.details),
          title: Text('Refer and Earn'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Refer and Earn'),
        ),
        ListTile(
          leading: Icon(Icons.trip_origin_sharp),
          title: Text('Refer and Earn'),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Refer and Earn'),
        ),
      ],
    );
  }
}
