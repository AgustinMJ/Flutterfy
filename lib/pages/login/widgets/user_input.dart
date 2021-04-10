import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';

class UserInput extends StatelessWidget {
  UserInput({this.labelText, this.prefixIcon});

  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: Constants.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: Constants.h3, vertical: Constants.v3),
            filled: true,
            fillColor: Constants.grey,
            labelText: labelText,
            labelStyle:
                TextStyle(fontSize: Constants.m, color: Constants.lightGrey),
            hintText: labelText,
            hintStyle:
                TextStyle(fontSize: Constants.m, color: Constants.lightGrey),
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
                  color: Constants.lightGrey,
                  size: 40,
                ))));
  }
}
