import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CaramelApple extends StatefulWidget {
  @override
  _CaramelAppleState createState() => _CaramelAppleState();
}

class _CaramelAppleState extends State<CaramelApple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ///Cake Image Display///
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/caramelApple.png"),
                      fit: BoxFit.cover,
                    ),
                  )),

              ///Title, Sub-title & Pricing///
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: EdgeInsets.all(40.0),
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(58, 66, 86, .6)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        Text(
                          "Caramel Apple Cake",
                          style: TextStyle(color: Colors.white, fontSize: 35.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Topped with a layer of Caramel",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white)),
                        SizedBox(height: 60.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Text(
                                    "\Kshs. 800",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),

              ///Back-button///
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
              ),
            ],
          ),

          ///Description Details///
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "A spiced cake topped with a layer of Caramel and then crushed apples. This cake is gorgeous, perfect for every fall festivity you have coming your way.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 17.0),
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        onPressed: () => _onClick(context),
                        color: Colors.green,
                        child: Text("PURCHASE",
                            style: TextStyle(color: Colors.white)),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Activates Purchase Button//
  _onClick(context) {
    Alert(
        context: context,
        title: "Caramel Apple Cake",
        content: Container(
          padding: EdgeInsets.symmetric(horizontal:20, vertical:30),
          height: MediaQuery.of(context).size.height *0.40,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
          ],
        ),
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}
