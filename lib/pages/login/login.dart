import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/defaults/constants.dart';
import 'package:spotify_clone/defaults/defaults.dart';
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
                Expanded(
                  flex: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: xxl),
                        child: SvgPicture.asset(
                            'assets/icons/iconmonstr-spotify-1.svg',
                            color: white,
                            width: Constants().w8(context)
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 25,
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Millions of songs.', style: TextStyle(
                              fontSize: Constants().xxl(context),
                              fontWeight: bold
                            )),
                            Padding(
                              padding: EdgeInsets.only(top: Constants().v3(context)),
                              child: Text('Free on Spotify.', style: TextStyle(
                                fontSize: Constants().xxl(context),
                                fontWeight: bold
                              )),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
                Expanded(
                  flex: 50,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Constants().h7(context), right: Constants().h7(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Button(
                              onPressed:() {}, 
                              bgColor: green, 
                              fontColor: white, 
                              text: 'Sign up free'
                            )
                          ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Constants().h7(context), right: Constants().h7(context), top: Constants().v2(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedImageButton(
                              onPressed:() {}, 
                              color: green, 
                              fontColor: white, 
                              text: 'Continue with Facebook',
                              image: Image.asset('assets/images/Facebook.png')
                            )
                          ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Constants().h7(context), right: Constants().h7(context), top: Constants().v2(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedImageButton(
                              onPressed:() {}, 
                              color: green, 
                              fontColor: white, 
                              text: 'Continue with Apple',
                              image: Image.asset('assets/images/Apple.png')
                            )
                          ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Constants().h7(context), right: Constants().h7(context), top: Constants().v2(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedImageButton(
                              onPressed:() {}, 
                              color: green, 
                              fontColor: white, 
                              text: 'Continue with Google',
                              image: Image.asset('assets/images/Google.png')
                            )
                          ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Constants().h7(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Log in', style: TextStyle(
                              fontSize: Constants().m(context),
                              fontWeight: bold
                            ))
                          ]
                        ),
                      )
                    ]
                  )
                ),
                Spacer(
                  flex: 5
                )
              ],
            )
          )
        ),
    );
  }
}
