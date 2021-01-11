import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class popuppage extends StatefulWidget {
  @override
  _popuppageState createState() => _popuppageState();
}

class _popuppageState extends State<popuppage> {
bool activar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: (){
        setState (() {
        activar = true;
        });
        }
      ),




      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: activar,
        from:40,
        duration: Duration(seconds: 1),
        child: FaIcon(FontAwesomeIcons.googlePay, color: Colors.white, size: 40)
        ),
      ),
    );
  }
}