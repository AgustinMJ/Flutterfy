import 'package:flutter/material.dart';
import 'package:spotify_clone/defaults/constants.dart';

class OutlinedImageButton extends StatefulWidget {
  OutlinedImageButton(
      {this.onPressed, this.color, this.fontColor, this.text, this.image});

  final Function onPressed;
  final Color color;
  final Color fontColor;
  final String text;
  final Image image;

  @override
  OutlinedImageButtonState createState() => OutlinedImageButtonState(
      this.onPressed, this.color, this.fontColor, this.text, this.image);
}

class OutlinedImageButtonState extends State<OutlinedImageButton> {
  OutlinedImageButtonState(
      this.onPressed, this.color, this.fontColor, this.text, this.image);

  final Function onPressed;
  final Color color;
  final Color fontColor;
  final String text;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: Constants.a8,
        child: OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith((context) {
                return BorderSide(color: Constants.grey, width: 1);
              }),
              shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40));
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
                      Text(text,
                          style: TextStyle(
                              color: fontColor,
                              fontSize: Constants.m,
                              fontWeight: Constants.bold)),
                    ],
                  ),
                ),
                Spacer(flex: 10)
              ],
            )),
      ),
    );
  }
}
