import 'package:flutter/material.dart';

class RangeSliderNew extends StatefulWidget {
  RangeSliderNew({super.key, required this.obj});

  // final low;
  // final high;
  var obj;
  @override
  State<RangeSliderNew> createState() => _RangeSliderNewState();
}

class _RangeSliderNewState extends State<RangeSliderNew> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6 * 0.5,
      child: RangeSlider(
          labels: RangeLabels(widget.obj.start.round().toString(),
              widget.obj.end.round().toString()),
          min: 0,
          max: 100,
          divisions: 10,
          values: widget.obj,
          activeColor: Colors.orange,
          onChanged: (values) {
            setState(() {
              print(values.start);
              widget.obj = values.toString();
            });
          }),
    );
  }
}
