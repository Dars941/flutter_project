import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final  controller;
  final String hintText ;
  final String labelText;
  final bool obscureText;
  final String obsuringCharacter;

  LoginTextField(
      {
        required this.controller,
        required this.hintText,
        required this.labelText,
        required this.obscureText,
        required this.obsuringCharacter,
      }
      );
 // const LoginTextField(Set set, {Key? key, required this.hintText, required this.labelText, required this.obscureText}) : super(key: key);





  @override
  Widget build(BuildContext context) {




    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        scrollPadding: EdgeInsets.only(bottom: 220),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius:
              BorderRadius.all(Radius.circular(12))),
          fillColor: Colors.black,
          filled: true,
          hintText: hintText,
          labelText: labelText,

          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.yellow),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.yellow),
              borderRadius:
              BorderRadius.all(Radius.circular(12))),
        ),
      ),
    );
  }
}
