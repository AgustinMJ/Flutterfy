import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/defaults/constants.dart';
import 'package:spotify_clone/pages/login/widgets/button.dart';
import 'package:spotify_clone/pages/login/widgets/outlined_image_button.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: Constants.v7, top: Constants.v7),
                child: SvgPicture.asset('assets/icons/iconmonstr-spotify-1.svg',
                    color: Constants.white, width: Constants.w8),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Millions of songs.',
                      style: TextStyle(
                          fontSize: Constants.xxl, fontWeight: Constants.bold)),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Constants.v3, bottom: Constants.v7 * 3),
                    child: Text('Free on Spotify.',
                        style: TextStyle(
                            fontSize: Constants.xxl,
                            fontWeight: Constants.bold)),
                  ),
                ],
              ),
            ],
          ),
          Column(children: [
            Padding(
              padding: EdgeInsets.only(left: Constants.h7, right: Constants.h7),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Button(
                    onPressed: () {},
                    bgColor: Constants.green,
                    fontColor: Constants.white,
                    text: 'Sign up free')
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Constants.h7, right: Constants.h7, top: Constants.v2),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedImageButton(
                    onPressed: () {},
                    color: Constants.green,
                    fontColor: Constants.white,
                    text: 'Continue with Facebook',
                    image: Image.asset('assets/images/Facebook.png'))
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Constants.h7, right: Constants.h7, top: Constants.v2),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedImageButton(
                    onPressed: () {},
                    color: Constants.green,
                    fontColor: Constants.white,
                    text: 'Continue with Apple',
                    image: Image.asset('assets/images/Apple.png'))
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Constants.h7, right: Constants.h7, top: Constants.v2),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedImageButton(
                    onPressed: () {},
                    color: Constants.green,
                    fontColor: Constants.white,
                    text: 'Continue with Google',
                    image: Image.asset('assets/images/Google.png'))
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: Constants.h7),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Log in',
                    style: TextStyle(
                        fontSize: Constants.m, fontWeight: Constants.bold))
              ]),
            )
          ]),
        ],
      ))),
    );
  }
}
