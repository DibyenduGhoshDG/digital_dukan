import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:DigitalDhukan/colorConstraints.dart';

class MyMoneyPage extends StatefulWidget {
  @override
  _MyMoneyPageState createState() => _MyMoneyPageState();
}

class _MyMoneyPageState extends State<MyMoneyPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Money'),
        elevation: 0.0,
        backgroundColor: ColorConst.green,
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.chartBar,
              color: Colors.white,
            ),
            iconSize: 15,
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.white,
            ),
            iconSize: 15,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: width,
            padding: EdgeInsets.symmetric(vertical: 5),
            color: ColorConst.green,
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (contex, index) {
                    return Container(
                      height: 35,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Center(child: Text('Today')),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    );
                  }),
            ),
          ),
          ToggleContainer(),
        ],
      ),
    );
  }
}

class ToggleContainer extends StatefulWidget {
  @override
  _ToggleContainerState createState() => _ToggleContainerState();
}

class _ToggleContainerState extends State<ToggleContainer> {
  double heightValue = 150.0;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          selected ? heightValue = 90 : heightValue = 150.0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: Container(
          width: width,
          height: heightValue,
          color: ColorConst.darkGreen,
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
                          'sales',
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
              !selected
                  ? Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
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
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
