import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Slider(
        value: _sliderValue,
        min: 0,
        max: 100,
        divisions: 10,
        label: '${_sliderValue.round()}',
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
        },
      ),
    );
  }
}