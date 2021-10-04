import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DropDown extends StatefulWidget {
  const DropDown({
    Key? key,
  })  :


        super(key: key);


  @override
  _MyState createState() => _MyState();
}
class _MyState extends State<DropDown>
{
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(

        height: 50,
        width:70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isDense: true,
            dropdownColor: Colors.white,
            style: TextStyle(
              color: Colors.black,

            ),
            elevation: 0,
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text("1"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("2"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("3"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("4"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("5"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("6"),
                value: 6,
              )
            ],

            onChanged: (int? value) {
              setState(() {
                _value = value;
              });
            },
          ),
        )
    );


  }
}