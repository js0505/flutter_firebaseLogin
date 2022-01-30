import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.image,
    this.text,
    this.radius,
    this.onPressed,
    this.style,
  }) : super(key: key);

  final Widget? image;
  final Widget? text;
  final ButtonStyle? style;
  final double? radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              image!,
              text!,
              Opacity(
                opacity: 0.0,
                child: image!,
              ),
            ],
          ),
        ),
        style: style,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius!),
        ),
      ),
    );
  }
}
