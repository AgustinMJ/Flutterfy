import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';
import 'package:spotify_clone/defaults/defaults.dart';

class ImageButton extends StatefulWidget {
  ImageButton(this.onPressed, this.bgColor, this.fontColor, this.text, this.icon);

  final Function onPressed;
  final Color bgColor;
  final Color fontColor;
  final String text;
  final Image icon;

  @override
  ImageButtonState createState() => ImageButtonState(this.onPressed, this.bgColor, this.fontColor, this.text, this.icon);
}

class ImageButtonState extends State<ImageButton> {
  ImageButtonState(this.onPressed, this.bgColor, this.fontColor, this.text, this.icon);

  final Function onPressed;
  final Color bgColor;
  final Color fontColor;
  final String text;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Container() 
                ),
                Expanded(
                  flex: 2,
                  child: icon 
                ),
                Expanded(
                  flex: 8,
                  child: Text(text, style: TextStyle(
                    color: fontColor,
                    fontSize: Constants().m(context),
                    fontWeight: bold
                  )),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}