import 'package:flutter/material.dart';

class SocialBox extends StatelessWidget {
  final String asset;

  const SocialBox({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Center(child: Image.asset(asset, width: 22)),
    );
  }
}
