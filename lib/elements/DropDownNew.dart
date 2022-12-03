import 'package:flutter/material.dart';
import 'package:rent/elements/data.dart';

class dropDownNew extends StatefulWidget {
  dropDownNew({
    Key? key,
    required this.items,
    required this.d,
    required this.hint,
  }) : super(key: key);
  List<String> items;
  var hint;
  var city;
  late InputData d;

  @override
  State<dropDownNew> createState() => _dropDownNewState();
}

class _dropDownNewState extends State<dropDownNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // width: double.infinity,
      width: 200,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.6),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton(
          // value: city,
          hint: Text(widget.hint),
          // value: widget.d != Null ? widget.d.toString() : 'select',
          underline: Container(),
          items: widget.items
              .map((String items) =>
                  DropdownMenuItem(value: items, child: Text(items)))
              .toList(),
          onChanged: (value) {
            setState(() {
              print(value);
              widget.d.setCity(widget.items, value.toString());
            });
          }),
    );
  }
}
