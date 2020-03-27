import 'package:cakeordering/descriptions/caramelApple.dart';
import 'package:cakeordering/pages/fruitCakes.dart';
import 'package:flutter/material.dart';
import 'spongeCakes.dart';

class ChocolateCakes extends StatelessWidget {
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
                  height: MediaQuery.of(context).size.height * 0.3,
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
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 40.0,),
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
                height: 40.0,
                child: ListView(

                  //Fruit Cakes Category//
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Center(
                          child: Text("Chocolate Cakes", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.5
                          ),),
                        ),
                      ),
                    ),

                    SizedBox(width: 10.0,),

                  ],
                ),
              ),
            ),

          ///Oreo Chocolate Cake///
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
                            child: Image.asset("assets/OreoChocolateCake.png", fit: BoxFit.fitWidth,),
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
                                child: Text("Oreo Chocolate Cake", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Topped with Crusted Oreos", style: TextStyle(
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
                                  return CaramelApple();
                                }));
                              },
                              child: Hero(
                                  tag: 'food',
                                  child: Image.asset("assets/chocolatePeanutButterCake.png", fit: BoxFit.fitWidth,)
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
                                  child: Text("Chocolate Peanut Butter", style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Cake with Butter Frosting", style: TextStyle(
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