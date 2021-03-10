import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/defaults.dart';

class PasswordInput extends StatefulWidget{
  PasswordInput({this.labelText});

  final String labelText;

  @override
  PasswordInputState createState() => PasswordInputState(labelText: this.labelText);
}

class PasswordInputState extends State<PasswordInput> {
  PasswordInputState({this.labelText});

  final String labelText;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: showPassword ? false : true,
      style: TextStyle(
        color: white
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(s),
        filled: true,
        fillColor: grey,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: m,
          color: lightGrey
        ),
        hintText: labelText,
        hintStyle: TextStyle(
          fontSize: m,
          color: lightGrey
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(0),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10),
          child: InkWell(
            onTap: () { 
              setState(() {
              showPassword = !showPassword;
              });
            },
            child: Icon(
              showPassword ? Icons.visibility_outlined : 
                Icons.visibility_off_outlined,
              color: lightGrey,
              size: 40,),
          )
        )
      )
    );
  }
}