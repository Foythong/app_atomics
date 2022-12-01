import 'package:flutter/material.dart';

class MytextField extends StatelessWidget {
  const MytextField(
      {required this.fildname,
      required this.myController,
      this.myIcon = Icons.person,
      this.prefixIconColor = Colors.grey,
      this.email = "tony@starkindustries.com",
      super.key});

  final TextEditingController myController;
  final String fildname;
  final IconData myIcon;
  final Color prefixIconColor;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some enter';
          } else
            null;
        },
        controller: myController,
        decoration: InputDecoration(
            labelText: fildname,
            prefixIcon: Icon(myIcon, color: prefixIconColor),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      ),
    );
  }
}

class formPass extends StatelessWidget {
  const formPass({required this.myControllerPass,required this.Textpass, this.myIcon = Icons.person,
      this.prefixIconColor = Colors.grey, super.key});

  final TextEditingController myControllerPass;
  final String Textpass;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          return null;
        },
        controller: myControllerPass,
        obscureText: true,
        decoration: InputDecoration(
        labelText: Textpass,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      );
  }
}
