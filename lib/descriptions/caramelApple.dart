import 'package:flutter/material.dart';

class CaramelApple extends StatefulWidget {
  @override
  _CaramelAppleState createState() => _CaramelAppleState();
}

class _CaramelAppleState extends State<CaramelApple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ///Cake Image Display///
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/caramelApple.png"),
                fit: BoxFit.cover,
              ),
            )),

        ///Title///
        Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: EdgeInsets.all(40.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .6)),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    "Caramel Apple Cake",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Topped with a layer of Caramel",
                    style: TextStyle(fontSize: 14.0,color: Colors.white)),
                ],
              ),
            )),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 40,
            ),
          ),
        )
      ],
    ));
  }
}
