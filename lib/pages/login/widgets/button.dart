import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';
import 'package:spotify_clone/defaults/defaults.dart';

class Button extends StatefulWidget {
  Button({this.onPressed, this.bgColor, this.fontColor, this.text});

  final Function onPressed;
  final Color bgColor;
  final Color fontColor;
  final String text;

  @override
  ButtonState createState() => ButtonState(this.onPressed, this.bgColor, this.fontColor, this.text);
}

class ButtonState extends State<Button> {
  ButtonState(this.onPressed, this.bgColor, this.fontColor, this.text);

  final Function onPressed;
  final Color bgColor;
  final Color fontColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: Constants().a8(context),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return bgColor.withOpacity(0.5);
                  return bgColor;
                },
              ),
            ),
            child: Text(text, style: TextStyle(
              color: fontColor,
              fontSize: Constants().m(context),
              fontWeight: bold
            ))
          ),
        ),
      ),
    );
  }
}