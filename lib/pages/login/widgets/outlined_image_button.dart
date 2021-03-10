import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';
import 'package:spotify_clone/defaults/defaults.dart';

class OutlinedImageButton extends StatefulWidget {
  OutlinedImageButton({this.onPressed, this.color, this.fontColor, this.text, this.image});

  final Function onPressed;
  final Color color;
  final Color fontColor;
  final String text;
  final Image image;

  @override
  OutlinedImageButtonState createState() => OutlinedImageButtonState(this.onPressed, this.color, this.fontColor, this.text, this.image);
}

class OutlinedImageButtonState extends State<OutlinedImageButton> {
  OutlinedImageButtonState(this.onPressed, this.color, this.fontColor, this.text, this.image);

  final Function onPressed;
  final Color color;
  final Color fontColor;
  final String text;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: Constants().a8(context),
        child: OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith((context) {
                return BorderSide(color: grey, width: 1);
              }),
              shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                return RoundedRectangleBorder(borderRadius: BorderRadius.circular(40));
              }),
            ),
            onPressed: onPressed,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: image,
                ),
                Expanded(
                  flex: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(text, style: TextStyle(
                        color: fontColor,
                        fontSize: Constants().m(context),
                        fontWeight: bold
                      )),
                    ],
                  ),
                ),
                Spacer(
                  flex: 10
                )
              ],
            )
          ),
      ),
    );
  }
}