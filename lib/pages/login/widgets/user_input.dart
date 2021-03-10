import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/defaults.dart';

class UserInput extends StatelessWidget{
  UserInput({this.labelText, this.prefixIcon});

  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
          child: Icon(
            prefixIcon,
            color: lightGrey,
            size: 40,)
        )
        /* prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10),
          child: Icon(
            prefixIcon,
            color: Colors.black,
            size: 40,)
        ) */
      )
    );
  }
}