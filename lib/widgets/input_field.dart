import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final bool obscure;

  const InputField({super.key, required this.label, this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black45),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
