import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final title;
  const RoundButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
