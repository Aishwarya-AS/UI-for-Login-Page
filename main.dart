import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(top: 50,left: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/dot.jpeg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 75.0),
                    child: Row(
                      children: [
                        Text(
                          'dot',
                          style: GoogleFonts.comfortaa(
                            fontSize: 45.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'theme',
                          style: GoogleFonts.comfortaa(
                            fontSize: 45.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 40.0),
                        child: Text(
                          'Registration',
                          style: GoogleFonts.notoSans(
                            fontSize: 20.0,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    height: 35.0,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline,
                                size: 30.0,
                                color: Colors.yellow,
                              ),
                              labelText: "FULL NAME",
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffCDCDCD)),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.alternate_email,
                                size: 30.0,
                                color: Colors.yellow,
                              ),
                              labelText: "EMAIL",
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffCDCDCD)),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 30.0,
                                color: Colors.yellow,
                              ),
                              labelText: "PASSWORD",
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffCDCDCD)),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.lightGreen,Colors.green]
                      ),
                    ),
                    width: double.infinity,
                    height: 45.0,
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 11.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Gmail'),
                            color: Colors.white,
                            textColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Facebook'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Twitter'),
                            color: Colors.white,
                            textColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 130.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Have account?',
                            style: GoogleFonts.nunito(
                              fontSize: 10.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.nunito(
                              fontSize: 10.0,
                              color: Color(0xffFFBF00),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             ),
            Positioned(
              bottom: -33,
              right: -65,
              child: Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightGreen,
                ),
              ),
            ),
            Positioned(
              bottom: -90,
              right: 2,
              child: Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFBF00),
                ),
              ),
            ),
            Positioned(
              top: -15,
              left: -55,
              child: Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightGreen,
                ),
              ),
            ),
            Positioned(
              top: -75,
              left: 2,
              child: Container(
                width: 110,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFBF00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
