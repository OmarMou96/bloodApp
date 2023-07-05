import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final bool obsecureText;
  final bool? enabled;
  final Color? bgColor ;
  final Icon? prefixIcon ;

   TextFieldItem({Key? key , required this.name ,
  required this.controller ,
  required this.obsecureText,
  this.enabled,
  this.bgColor,
  this.prefixIcon,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      child: TextFormField(

        enabled: enabled ?? true,
        controller: controller,
        obscureText: obsecureText,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: bgColor ?? Colors.transparent,
          labelText: name,
          labelStyle: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 15), // add padding to adjust icon
            child: prefixIcon ?? const SizedBox(),
          ),
        ),
      ),
    );
  }

}
