import 'package:DigitalDhukan/Controller/DashBordController.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:DigitalDhukan/colorConstraints.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  var dashBordController = Get.put(DashBordController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Orders'),
          backgroundColor: ColorConst.green,
          bottom: dashBordController.isChartShow.value
              ? PreferredSize(
                  preferredSize: Size(100, 200),
                  child: Container(
                    height: 200,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'sale',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConst.darkWhite,
                                    ),
                                  ),
                                  Text('0',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: ColorConst.white,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 40,
                                width: 1,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'sale',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConst.darkWhite,
                                    ),
                                  ),
                                  Text('0',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: ColorConst.white,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'sale',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConst.darkWhite,
                                    ),
                                  ),
                                  Text('0',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: ColorConst.white,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 40,
                                width: 1,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'sale',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConst.darkWhite,
                                    ),
                                  ),
                                  Text('0',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: ColorConst.white,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : null,
          actions: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.chartBar,
                color: Colors.white,
              ),
              iconSize: 15,
              onPressed: () {
                dashBordController.toggleChart();
              },
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.search,
                color: Colors.white,
              ),
              iconSize: 15,
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.questionCircle,
                color: Colors.white,
              ),
              iconSize: 15,
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: 1.sw,
              height: 1.sh,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Congratulation your shope is now online.',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 1.sw,
                    height: 300,
                    decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Image.asset(
                      'images/shop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 1.sw,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorConst.red,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Image.asset(
                      'images/shop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 1.sw,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorConst.lightGray,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Image.asset(
                      'images/shop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 1.sw,
                    height: 100,
                    decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Image.asset(
                      'images/shop.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ]),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 50,
              right: 50,
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                    color: ColorConst.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                alignment: Alignment.center,
                child: Text(
                  'Add your products',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
