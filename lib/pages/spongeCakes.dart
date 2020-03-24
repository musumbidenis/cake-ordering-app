import 'package:cakeordering/pages/fruitCakes.dart';
import 'package:cakeordering/second.dart';
import 'package:flutter/material.dart';

import 'chocolateCakes.dart';

class SpongeCakes extends StatelessWidget {
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  ),
                  child: Image.asset("assets/food1.jpg", fit: BoxFit.fitWidth,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, top: 40.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.0,
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 20.0,),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Mwajuma Cake House", style: TextStyle(fontSize: 20.0, color: Colors.black),),
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    children: <Widget>[
                    Icon(Icons.location_on, color: Colors.grey,),
                      SizedBox(width: 5.0,),
                      Text("34, Tom Mboya Street, Nairobi ", style: TextStyle(fontSize: 14.0, color: Colors.black),),

                  ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7.0, top: 3.0, bottom: 3.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.access_time, color: Colors.green,),
                          SizedBox(width: 5.0,),
                          Text("Quick Deliveries", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 14.0),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 5.0, bottom: 5.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
              child: Container(
                height: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(color: Colors.green),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return FruitCakes();
                                }));
                            },
                          child: Text("Fruit Cakes", style: TextStyle(
                            color: Colors.green, 
                            fontSize: 16.0, 
                            letterSpacing: 0.5),),
                        ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Center(
                          child: Text("Sponge Cakes", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.5
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(color: Colors.green),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return ChocolateCakes();
                                }));
                            },
                          child: Text("Chocolate Cakes", style: TextStyle(
                            color: Colors.green, 
                            fontSize: 16.0, 
                            letterSpacing: 0.5),),
                        ),
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topRight,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            child: Image.asset("assets/food2.jpg", fit: BoxFit.fitWidth,),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.7),
                            radius: 25.0,
                            child: Icon(Icons.favorite_border, color: Colors.white, size: 30.0,),
                          )
                      ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Goru Mango Waffle", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Continental", style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),),
                                ),
                            ],),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    border: new Border.all(color: Colors.green),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.add, color: Colors.green, size: 20.0,),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topRight,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return Second();
                                }));
                              },
                              child: Hero(
                                  tag: 'food',
                                  child: Image.asset("assets/food2.jpg", fit: BoxFit.fitWidth,)
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.7),
                            radius: 25.0,
                            child: Icon(Icons.favorite_border, color: Colors.white, size: 30.0,),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Asian Ramen Noodle", style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Co & Cookers", style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),),
                                ),
                              ],),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    border: new Border.all(color: Colors.green),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.add, color: Colors.green, size: 20.0,),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}