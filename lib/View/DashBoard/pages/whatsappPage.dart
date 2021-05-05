import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:DigitalDhukan/colorConstraints.dart';

class WhatsAppPage extends StatefulWidget {
  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Promote on WhatsApp'),
        backgroundColor: ColorConst.green,
      ),
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width,
                  height: 300,
                  child: ListView.separated(
                    reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return Container(
                          width: 20,
                          height: 300,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                            color: ColorConst.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              width: width,
              child: Center(
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  alignment: Alignment.center,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  FaIcon(FontAwesomeIcons.whatsapp,color: ColorConst.white,),
                  Text(
                  '  Share Shop',
                  style:
                      TextStyle(color:  ColorConst.white, fontWeight: FontWeight.bold),
                ),
                ],)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
