// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom widget code
class ToggleSwitch extends StatefulWidget {
  ToggleSwitch({
    Key key,
    this.width,
    this.height,
    this.value,
  }) : super(key: key);

  final double width;
  final double height;
  bool value;

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.red,
      value: widget.value,
      onChanged: (value) {
        setState(() {
          widget.value = value;
        });
      },
    );
  }
}
