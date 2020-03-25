import 'package:cakeordering/pages/chocolateCakes.dart';
import 'package:cakeordering/pages/spongeCakes.dart';
import 'package:cakeordering/second.dart';
import 'package:flutter/material.dart';

class FruitCakes extends StatefulWidget {
  FruitCakes({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FruitCakesState createState() => _FruitCakesState();
}

class _FruitCakesState extends State<FruitCakes> {

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
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  ),
                  child: Image.asset("assets/Cover.png", fit: BoxFit.fitWidth,),
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
          
          ///Divider///
            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 5.0, bottom: 5.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),

          ///Categories List///
            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    //Fruit Cakes Category//
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Center(
                          child: Text("Fruit Cakes", style: TextStyle(color: Colors.white, fontSize: 16.0, letterSpacing: 0.5),),
                        ),
                      ),
                    ),

                    SizedBox(width: 10.0,),

                    //Sponge Cakes Category//
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return SpongeCakes();
                                }));
                              },
                          child: Text("Sponge Cakes", style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.0,
                            letterSpacing: 0.5
                          ),),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10.0,),

                    //Chocolate Cakes Category//
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return ChocolateCakes();
                                }));
                              },
                          child: Text("Chocolate Cakes", style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.0,
                            letterSpacing: 0.5
                          ),),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10.0,),

                  ],
                ),
              ),
            ),

          ///Caramel Apple///
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
                            child: Image.asset("assets/caramelApple.png", fit: BoxFit.fitWidth,),
                          ),
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
                                child: Text("Caramel Apple Cake", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Topped with a layer of Caramel", style: TextStyle(
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
 
          ///Orange Velvet///
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
                                  child: Image.asset("assets/Orange-Velvet-cake.png", fit: BoxFit.fitWidth,)
                              ),
                            ),
                          ),
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
                                  child: Text("Orange Velvet Cake", style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("With Chocolate Buttercream frosting", style: TextStyle(
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

          ///Lemon Ginger///
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
                            child: Image.asset("assets/LemonGingerCake.png", fit: BoxFit.fitWidth,),
                          ),
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
                                child: Text("Lemon Ginger Cake", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("With the fresh Aroma of Ginger", style: TextStyle(
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

          ///Pineaple Coconut///
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
                            child: Image.asset("assets/PineappleCoconutCake.png", fit: BoxFit.fitWidth,),
                          ),
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
                                child: Text("Pineapple Cococnut Cake", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Topped with a creamy rich Coconut Buttercream", style: TextStyle(
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