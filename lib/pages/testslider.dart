import 'package:flutter/material.dart';

class SwitchContainerButton extends StatefulWidget {
  @override
  _SwitchContainerButtonState createState() => _SwitchContainerButtonState();
}

class _SwitchContainerButtonState extends State<SwitchContainerButton> {
  bool _isContainerSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          color: _isContainerSwitched? Colors.red : Colors.blue,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isContainerSwitched =!_isContainerSwitched;
            });
          },
          child: Text('Switch Container'),
        ),
      ],
    );
  }
}