import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        /// you used shape here I replaced it with borderRadius
        /// shape is good when you want it to be a full circle or rect etc in container &
        /// it is used in [RaisedButton] and [FlatButton]
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightGreen, Colors.green],
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 8.0,
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          'Sign up',
          style: TextStyle(fontSize: 20.0),
        ),
        textColor: Colors.white,
      ),
    );
  }
}
