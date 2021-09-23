import 'package:flutter/material.dart';
import 'start.dart';
import 'dart:math';


void main()
{
  runApp(MaterialApp(

    home:  Start(),
  ));
}




class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);


  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override

  double value = 0;

  Widget build(BuildContext context) {


    var query = MediaQuery.of(context);
    var height = query.size.height;
    var width =  query.size.width;





    return Scaffold(



    body: Stack(

    children: <Widget>[


      TweenAnimationBuilder(
         tween: Tween<double>(begin: 0 , end: value),
         duration: Duration(microseconds: 5),
         curve: Curves.easeInCubic,
         builder: (_,double val, __)
          {
            return(Transform(

              transform: Matrix4.identity()
              ..setEntry(3,2,0.001)
              ..setEntry(3,2,0.400 * val)
              ..rotateY((pi/6) * val)

            )
            );
          }

      ),





      // GestureDetector(
      //   onTap: ()
      //       {
      //         setState(()
      //         {
      //           value == 0 ? value = 1 : value = 0;
      //         }
      //
      //
      //         );
      //       }
      //
      //
      // )


    ]
    ),

         // drawerEnableOpenDragGesture: false,
        drawer: new NavBar(),
        drawerEdgeDragWidth: 1000,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
            ' Home',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.menu), onPressed: () => Scaffold.of(context).openDrawer(),),
          //   // IconButton(icon: Icon(Icons.message), onPressed: () {}),
          // ],

          leading: Builder(

            builder: (context) => IconButton(
              icon: new Icon(
                Icons.menu,
                color: Colors.transparent,
                size: 0,

              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),

        );


  }
}



