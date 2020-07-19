import 'package:dottheme/CustomWidgets/registerScreenTextfields.dart';
import 'package:dottheme/CustomWidgets/signUpButton.dart';
import 'package:dottheme/CustomWidgets/socialRegisterationButtons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///[resizeToAvoidBottomInset] is also used to hide the overflow message while opening keyboard
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 50, left: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/dot.jpeg"),
                  ),
                ),
              ),

              /// avoid using padding and margins everywhere
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                /// instead try and learn how to use these properties and crossAxisAlignment
                children: [
                  Text(
                    'dot',
                    style: GoogleFonts.comfortaa(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'theme',
                    style: GoogleFonts.comfortaa(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 40.0),
                    child: Text(
                      'Registration',
                      style: GoogleFonts.notoSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),

              /// Since all the TextField here a re similar almost i have extracted them into a custom widget
              /// only icon and there labelText is differing so we will take them as parameters
              RegisterScreenTextField(
                iconData: Icons.person_outline,
                labelText: 'Full name',
              ),
              RegisterScreenTextField(
                iconData: Icons.alternate_email,
                labelText: 'Email',
              ),
              RegisterScreenTextField(
                iconData: Icons.lock,
                labelText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              SignUpButton(),
              const SizedBox(
                height: 8,
              ),
              SocialRegisterButtons(),
              /// You should always do like i have did above with SignUpButton, RegisterScreenTextField, and SocialRegisterationButtons
              /// this makes code more readable and maintainable
              /// you can also extract the below one Have a account? sign in into another widget but i have left it for you

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have account?',
                      style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Sign in',
                      style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFBF00),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
    );
  }
}
