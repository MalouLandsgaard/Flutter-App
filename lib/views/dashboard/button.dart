import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final Color color;
  final Color? textColor;
  final String text;
  final IconData? icon;
  const DefaultButton(
      {Key? key,
      required this.color,
      required this.text,
      this.icon,
      this.textColor})
      : super(key: key);

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: widget.color,
      ),
      alignment: Alignment.center,
      height: 30,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon,
              color: Colors.white, size: widget.icon != null ? 12 : 0),
          widget.icon != null
              ? SizedBox(
                  width: 5,
                )
              : Container(),
          Text(
            widget.text,
            style: TextStyle(
                color: widget.textColor ?? Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
