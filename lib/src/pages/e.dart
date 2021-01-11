import 'package:animations_app/src/pages/popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class epagina extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      title: Text('app Eric'),
      actions: <Widget>[
        IconButton(
          icon: FaIcon(FontAwesomeIcons.googlePay),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> popuppage()));
          },
      ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
    child: FaIcon(FontAwesomeIcons.dog),
        onPressed: (){},
      ),
      bottomNavigationBar: barraabajo(),
    );
  }
}

class barraabajo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items:[
        BottomNavigationBarItem(
          title: Text('bones'),
            icon: FaIcon(FontAwesomeIcons.bone)
        ),

        BottomNavigationBarItem(
            title: Text('bones'),
            icon: FaIcon(FontAwesomeIcons.bell)
        ),

        BottomNavigationBarItem(
            title: Text('bones'),
            icon: FaIcon(FontAwesomeIcons.bitcoin)
        )

      ]
    );
  }
}