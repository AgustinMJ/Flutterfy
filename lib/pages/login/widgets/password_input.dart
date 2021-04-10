import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';

class PasswordInput extends StatefulWidget {
  PasswordInput({this.labelText});

  final String labelText;

  @override
  PasswordInputState createState() =>
      PasswordInputState(labelText: this.labelText);
}

class PasswordInputState extends State<PasswordInput> {
  PasswordInputState({this.labelText});

  final String labelText;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: showPassword ? false : true,
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
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: Icon(
                    showPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Constants.lightGrey,
                    size: 40,
                  ),
                ))));
  }
}
