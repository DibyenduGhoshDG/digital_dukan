import 'package:DigitalDhukan/View/DashBoard/pages/addProduct.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:DigitalDhukan/colorConstraints.dart';

class MyProductPage extends StatefulWidget {
  @override
  _MyProductPageState createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Products'),
        backgroundColor: ColorConst.green,
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.white,
            ),
            iconSize: 15, onPressed: () {  },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.questionCircle,
              color: Colors.white,
            ),
            iconSize: 15, onPressed: () {  },
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: height * 0.16,
                          height: height * 0.16,
                          decoration: BoxDecoration(
                            color: ColorConst.lightGray,
                            border: Border.all(style: BorderStyle.solid),
                          ),
                          child: Image.asset(
                            'images/shop.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Text(
                              'Digital Shop',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              '70',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Switch(
                        value: switchValue,
                        onChanged: (bool newvalue) {
                          setState(() {
                            switchValue = !switchValue;
                          });
                        }),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 10),
          ),
         Container(
                  width: width,
                  height: 40,
                  color: ColorConst.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View your shope as customer  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
          Positioned(
            bottom: 30,
            child: Container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: ColorConst.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline_rounded,
                              color: ColorConst.white,
                            ),
                            Text(
                              '  Add products',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProductPage()));
                    },
                  ),
                  Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConst.green,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: ColorConst.green,
                          ),
                          Text(
                            '  Share Shop',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
