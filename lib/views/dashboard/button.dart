import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final Color color;
  final String text;
  final IconData? icon;
  const DefaultButton(
      {Key? key, required this.color, required this.text, this.icon})
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
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
