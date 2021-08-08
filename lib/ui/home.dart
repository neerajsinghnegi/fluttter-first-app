import 'package:flutter/material.dart';

myApp() {
  //press
  MyCallPress() {
    print("clicked..");
  }

  //icons
  var MyIcon = Icon(Icons.supervised_user_circle);
  var MyCallIcon = Icon(Icons.call);
  var MyLocationIcon = Icon(Icons.directions);
  var MyActionCallButton = IconButton(
    icon: MyCallIcon,
    onPressed: MyCallPress,
  );
  var MyActionDirectionButtion = IconButton(
    icon: MyLocationIcon,
    onPressed: MyCallPress,
  );

  var MyText = Text(
    'Hello Neeraj',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  var MyAppBar = AppBar(
    title: MyText,
    backgroundColor: Colors.cyan,
    leading: MyIcon,
    actions: <Widget>[MyActionDirectionButtion, MyActionCallButton],
  );

  var url =
      'https://www.eexploria.com/wp-content/uploads/2012/04/black-and-white-portrait-photos.jpg';
  var MyImageService = Image.network(
    url,
    width: double.infinity,
  );
  var MyHome = Scaffold(
    appBar: MyAppBar,
    body: MyImageService,
  );
  var design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
