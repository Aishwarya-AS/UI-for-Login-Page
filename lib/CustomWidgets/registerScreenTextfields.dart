import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreenTextField extends StatelessWidget {
  /// Declare the variables whose values you want later
  final IconData iconData;
  final String labelText;

  /// Initialize a constructor so that you can use [RegisterScreenTextField] widget
  /// wherever you want
  const RegisterScreenTextField({this.iconData, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // you had specified height here.... reason for overlapping labelText and ourTypedText... i just removed height
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      // you used Row and Expanded widget unnecessarily I removed them too.
      child: TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData, // passing iconData variable here
            size: 30.0,
            color: Color(0xffFFBF00),
          ),
          labelText: labelText, // passing labelText variable here
          labelStyle: GoogleFonts.nunito(
            fontSize: 10.0,
            color: Colors.grey,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffCDCDCD)),
          ),
        ),
      ),
    );
  }
}
