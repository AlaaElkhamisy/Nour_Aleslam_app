import 'package:flutter/material.dart';

class CustomDrodown extends StatelessWidget {
  const CustomDrodown(
      {super.key,
      required this.text,
      required this.value,
      this.onChanged,
      required this.items});
  final String text;
  final String? value;
  final void Function(String?)? onChanged;
  final List items;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: 480,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.brown.shade900, width: 3),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton<String>(
        focusColor: Colors.brown[300],
        style: TextStyle(color: Colors.brown[900], fontSize: 22),
        underline: SizedBox(),
        isExpanded: true,
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.black,
          size: 30,
        ),
        borderRadius: BorderRadius.circular(10),
        hint: Text(
          text,
          style: TextStyle(color: Colors.brown[900], fontSize: 22),
        ),
        value: value,
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
