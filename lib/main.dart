// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() => runApp(Cat());

class Cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cat",
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.menu)),
          title: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        decorationThickness:20,
                        decorationStyle: TextDecorationStyle.double, 
                        decorationColor: Color.fromRGBO(242, 143, 5, 0.996)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          style: TextStyle(
                            color: Colors.redAccent, 
                            fontSize: 25
                          ),
                          text: "P"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.blueAccent, 
                            fontSize: 21
                          ),
                          text: "U"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.pink, 
                            fontSize: 19
                          ),
                          text: "P"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.purpleAccent, 
                            fontSize: 16
                          ),
                          text: "P"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.cyan, 
                            fontSize: 13
                          ),
                          text: "Y"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.deepOrange, 
                            fontSize: 30
                          ),
                          text: "!"
                        ),
                      ]
                    )),
          flexibleSpace: SafeArea(
            child: Icon(Icons.photo_camera),            
            minimum: EdgeInsets.all(20)),
            actions:<Widget> [              
              IconButton(onPressed: (){},
               icon: Icon(Icons.share),),
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.info)),
              Padding(padding: EdgeInsets.all(16.0)),
            ],
            backgroundColor: Colors.lightGreenAccent,
            bottom: PreferredSize(
              // ignore: avoid_unnecessary_containers
              child: Container(
                // color: Colors.greenAccent,
                height: 50,
                decoration: BoxDecoration(       
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightGreenAccent,Colors.white ],
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter),                     
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        decorationThickness:20,
                        decorationStyle: TextDecorationStyle.double, 
                        decorationColor: Color.fromRGBO(242, 143, 5, 0.996)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          style: TextStyle(
                            color: Colors.redAccent, 
                            fontSize: 13
                          ),
                          text: "B"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.blueAccent, 
                            fontSize: 16
                          ),
                          text: "o"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.pink, 
                            fontSize: 17
                          ),
                          text: "t"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.purpleAccent, 
                            fontSize: 20
                          ),
                          text: "t"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.cyan, 
                            fontSize: 15
                          ),
                          text: "o"
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Colors.black54, 
                            fontSize: 20
                          ),
                          text: "m"
                        ),
                      ]
                    )),                
                ),
              ),
              preferredSize: Size.fromHeight(50),),
        ),
        body:Home() ,
      ),
    );
  }
}


