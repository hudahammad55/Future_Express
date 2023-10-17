import 'package:flutter/material.dart';

import '../palette.dart';

// ignore: must_be_immutable
class ExpressTextField extends StatelessWidget {
  final String hint;
  TextEditingController? controller;
  Widget? prefix;

  ExpressTextField({
    required this.hint,
    this.controller,
    this.prefix,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefix == null ? null:Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0,0,10,0),
            child: prefix,
          ),
          prefixIconConstraints: const BoxConstraints(
              maxWidth: 35, maxHeight: 35, minWidth: 35, minHeight: 35),
          fillColor: Palette.whiteColor,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(10,22,0,17),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Palette.greyColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Palette.greyColor, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Palette.primaryColor, width: 1))),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter password.";
        }

        return null;
      },
    );
  }
}
