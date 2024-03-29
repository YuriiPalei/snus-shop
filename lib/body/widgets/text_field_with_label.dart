import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatefulWidget {
  const TextFieldWithLabel(
      {Key? key, required this.label, required this.value, this.controller})
      : super(key: key);

  final String label;
  final String value;
  final TextEditingController? controller;

  @override
  State<TextFieldWithLabel> createState() => _TextFieldWithLabelState();
}

class _TextFieldWithLabelState extends State<TextFieldWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${widget.label}:",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(widget.value),
          // TextField(
          //   controller: widget.controller,
          //   decoration: InputDecoration(hintText: "Enter ${widget.label}"),
          // ),
        ],
      ),
    );
  }
}
