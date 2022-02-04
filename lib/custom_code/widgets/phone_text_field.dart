// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code

class PhoneTextField extends StatefulWidget {
  PhoneTextField({
    Key key,
    this.width,
    this.height,
    this.number,
  }) : super(key: key);

  final double width;
  final double height;
  String number;

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (value) {
          widget.number = value;
        },
        decoration: InputDecoration(
          focusColor: Colors.red,
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: const Text("+91"),
        ));
  }
}
