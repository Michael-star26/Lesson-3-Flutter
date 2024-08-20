// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  Cat createState() => Cat();
}
class Cat extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Button(),
                    Divider(),
                    const ContainerWithBoxDecoration(),
                    Divider(),
                    const ColumnWidget(),
                    Divider(),
                    const RowWidget(),
                    Divider(),
                    const ColumnAndRowNestingWidget(),
                    Divider(),
                    ButtonsTrial(),
                    Divider(),
                    Row(
                      children:<Widget> [
                        TextButton(
                          onPressed: (){}, 
                          child: Text("Icon")), 
                        TextButton(
                          onPressed: (){}, 
                          child: Icon(Icons.search_off))
                      ],
                    ),  
                    Divider(),
                    Row(
                      children:<Widget> [
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text("Elevated")), 
                          Padding(padding: EdgeInsets.all(16.0)),  
                          ElevatedButton(
                            onPressed: (){}, 
                            child: Icon(Icons.save), 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue
                            ),
                            )
                      ],
                    )            
 // BottomNavigationBar(items: items), 
              ]),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          // label:Text ("Puppy"),
          onPressed: () {},
          child: Icon(Icons.play_arrow),
          ),
          bottomNavigationBar: BottomAppBar(
            // hasNotch:true,
            shape: CircularNotchedRectangle(),
            notchMargin: 1,
            color: Colors.lightGreenAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.play_arrow), 
                Icon(Icons.pause),
                Icon(Icons.stop),
                Icon(Icons.access_time),
                Padding(padding: EdgeInsets.all(32.0))
              ],
            ),
          ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.check))
      ],
    );
  }
}





class ButtonsTrial extends StatelessWidget {
  const ButtonsTrial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment.start;
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.download),
          hoverColor: Colors.amber,
          color: Colors.greenAccent,
          splashRadius: 10,
          // tooltip: AutofillHints.location,
          iconSize: 50,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          hoverColor: Colors.pink,
          color: Colors.indigo,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.villa),
          hoverColor: Colors.yellow,
          color: Colors.pink,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.folder_zip),
          hoverColor: Colors.red,
          color: Colors.orange,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit_off),
          hoverColor: Colors.pink.shade900,
          color: Colors.orange.shade100,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.image),
          hoverColor: Colors.red,
          color: Colors.lightGreenAccent,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.access_time),
          hoverColor: Colors.blue,
          color: Colors.lightBlueAccent,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.bento),
          hoverColor: Colors.deepOrangeAccent,
          color: Colors.orange,
        ),
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text("Column 1"),
        Divider(color: Colors.red, thickness: 2),
        Text("Column 2"),
        Divider(color: Colors.orange, thickness: 4),
        Text("Column 3"),
        Divider(color: Colors.green, thickness: 3),
        Text("Column 4"),
        Divider(color: Colors.blue, thickness: 5),
        Text("Column 5"),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                      decorationThickness: 5,
                    ),
                    children: <TextSpan>[TextSpan(text: "Row 1")])),
            Padding(padding: EdgeInsets.all(16.0)),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      decorationThickness: 6,
                    ),
                    children: <TextSpan>[TextSpan(text: "Row 2")])),
            Padding(padding: EdgeInsets.all(16.0)),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 13,
                    decorationThickness: 5,
                  ),
                  children: <TextSpan>[TextSpan(text: "Row 3")]),
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 17,
                      decorationThickness: 4,
                    ),
                    children: <TextSpan>[TextSpan(text: "Row 4")])),
            Padding(padding: EdgeInsets.all(16.0)),
          ],
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  decorationThickness: 5,
                ),
                children: <TextSpan>[TextSpan(text: "Row 1")])),
        Padding(padding: EdgeInsets.all(16.0)),
        RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 16,
                  decorationThickness: 1,
                ),
                children: <TextSpan>[TextSpan(text: "Row 2")])),
        Padding(padding: EdgeInsets.all(16.0)),
        RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.tealAccent,
                fontSize: 13,
                decorationThickness: 3,
              ),
              children: <TextSpan>[TextSpan(text: "Row 3")]),
        ),
        Padding(padding: EdgeInsets.all(16.0)),
        RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 17,
                  decorationThickness: 4,
                ),
                children: <TextSpan>[TextSpan(text: "Row 4")])),
        Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text("Column 1"),
        Divider(color: Colors.redAccent, thickness: 1),
        Text("Column 2"),
        Divider(color: Colors.pink, thickness: 2),
        Text("Column 3"),
        Divider(color: Colors.cyanAccent, thickness: 3),
        Text("Column 4"),
        Divider(color: Colors.lightGreenAccent, thickness: 4),
      ],
    );
  }
}

class ContainerWithBoxDecoration extends StatelessWidget {
  const ContainerWithBoxDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment.center;
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.pink, Colors.white70],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(30))),
      child: RichText(
          text: TextSpan(
              style:
                  TextStyle(fontSize: 20, decorationColor: Colors.orangeAccent),
              text: "Here's My Happiness")),
    );
  }
}

