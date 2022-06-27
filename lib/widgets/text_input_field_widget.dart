import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, this.label, this.obscureText = false});

  final String? label;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        border: const OutlineInputBorder(),
      ),
      obscureText: obscureText,
    );
  }
}
