import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class BuildTextFormFeild extends StatefulWidget {
  const BuildTextFormFeild({
    super.key,
    required this.controller,
    required this.label,
    required this.obsecure,
    required this.keyboardType,
    this.suffex,
    this.prefex, 
  });

  final TextEditingController controller;
  final String label;
  final bool obsecure;
  final TextInputType keyboardType;
  final Widget? suffex;
  final Widget? prefex;

  @override
  State<BuildTextFormFeild> createState() => _BuildTextFormFeildState();
}

class _BuildTextFormFeildState extends State<BuildTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obsecure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        label: Text(widget.label),
        suffixIcon: widget.suffex,
        filled: true,
        fillColor: Color.fromRGBO(249, 250, 250, 1),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(230, 233, 234, 1)),
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: customColor['lightGreen']!),
        ),
        floatingLabelStyle: TextStyle(color: customColor['lightGreen']),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This feild is required';
        } else if (!value.contains('@')) {
          return 'E-mail should contain "@"';
        }
        return null;
      },
    );
  }
}
