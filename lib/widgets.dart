import 'package:flutter/material.dart';

Widget defaolTextFormField({
  String? labelText,
  Icon? prefix,
  Icon? suffix,
  Icon? icon,
  String? hintText,
  String? helperText,
}) =>
    TextFormField(
      decoration: InputDecoration(
        icon: icon,
        labelText: labelText,
        helperText: helperText,
        hintText: hintText,
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
      ),
    );
