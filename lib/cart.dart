import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

class Cart extends StatefulWidget {
  final String title;
  final String subTitle;
  final int price;
  Cart({Key key, @required this.title,@required this.subTitle,@required this.price}): super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  String _notification;

  TextEditingController writingController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                )),
                child: Image.asset(
                  "assets/deliver-removebg-preview.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 40.0),
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 35.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(widget.subTitle, style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),

          ///Divider///
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
            child: Divider(
              color: Colors.grey.withOpacity(0.2),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: writingController,
                  decoration: InputDecoration(
                    labelText: 'What to be wrtten on top of the cake',
                    labelStyle: TextStyle(fontSize: 18),
                  ),
                ),
                TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: 'Delivery Address',
                    labelStyle: TextStyle(fontSize: 18),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height:15),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 17.0),
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: (){
                        _sendSMS("message", ['0713710887']);
                        },
                      color: Colors.green,
                      child: Text("PLACE ORDER",
                          style: TextStyle(color: Colors.white)),
                    )),
              ],
            ),
          ),
        ])));
  }

  ///Send SMS Function///
  _sendSMS(String message, List<String> recipents) async {
    String title = 'Cake Type: ' + widget.title;
    String phone = "            Phone Number: " + phoneController.text;
    String address = "               Delivery Address: " + addressController.text;
    String writing = "                                                       Writing on top: " + writingController.text;
    String message = title + phone + address + writing;

    try {
      String _result = await sendSMS(message: message, recipients: recipents);
      setState(() => _notification = _result);
    } catch (error) {
      setState(() => _notification = error.toString());
    }
  }
}
