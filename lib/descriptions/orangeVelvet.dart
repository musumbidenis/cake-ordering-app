import 'package:cakeordering/cart.dart';
import 'package:flutter/material.dart';

class OrangeVelvet extends StatefulWidget {
  @override
  _OrangeVelvetState createState() => _OrangeVelvetState();
}

class _OrangeVelvetState extends State<OrangeVelvet> {
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
                      image: AssetImage("assets/Orange-Velvet-cake.png"),
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
                          "Orange Velvet Cake",
                          style: TextStyle(color: Colors.white, fontSize: 35.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("with Chocolate Buttercream frosting",
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
                                    "\Kshs. 850",
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
                    "A moist and tender crumbed orange cake with a simple but delicious Chocolate Buttercream frosting. The cake gets its Citrus flovour punch from the finely minced zest of Oranges incorporated into butter.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 17.0),
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cart(title: "Orange Velvet Cake",subTitle: "with Chocolate Buttercream frosting",price: 800,),
                              ));
                        },
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
}
