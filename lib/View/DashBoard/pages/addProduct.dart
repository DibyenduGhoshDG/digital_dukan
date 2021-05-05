import 'dart:io';
import 'package:DigitalDhukan/colorConstraints.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  final ts = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: ColorConst.green,
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          backgroundColor: ColorConst.green,
          title: Text(
            'Add Product',
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      FirstListViewContainer(),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '(you can add upto four products image)',
                        style: ts,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'What do people call you?',
                                labelText: 'Name *',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'What do people call you?',
                                labelText: 'Name *',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'What do people call you?',
                                labelText: 'Name *',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'What do people call you?',
                                labelText: 'Name *',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                child: Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            color: ColorConst.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        alignment: Alignment.center,
                        child: Text(
                          'Add your products',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class FirstListViewContainer extends StatefulWidget {
  @override
  _FirstListViewContainerState createState() => _FirstListViewContainerState();
}

class _FirstListViewContainerState extends State<FirstListViewContainer> {
  File? image;
  final picker = ImagePicker();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ts = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ColorConst.green,
    );
    return Container(
      width: size.width,
      height: size.height * 0.14,
      child: Scrollbar(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  await getImage();
                  setState(() {
                    if (image != null) {
                      isLoading = false;
                    }
                  });
                },
                child: !isLoading
                    ? Container(
                        width: size.height * 0.14,
                        decoration: BoxDecoration(
                          color: ColorConst.lightGray,
                          border: Border.all(style: BorderStyle.solid),
                        ),
                        child: image == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    size: 30,
                                    color: ColorConst.green,
                                  ),
                                  Text(
                                    '+ Add Images',
                                    style: ts,
                                  ),
                                ],
                              )
                            : Image.asset(image!.path))
                    : CircularProgressIndicator());
          },
          separatorBuilder: (context, index) {
            return Container(
              width: 10,
              child: Divider(),
            );
          },
        ),
      ),
    );
  }

  Future<void> getImage() async {
    var getImageUrl = await picker.getImage(source: ImageSource.gallery);
    if (getImageUrl != null) {
      image = File(getImageUrl.path);
    } else {
      print('there is no image');
    }
  }
}
