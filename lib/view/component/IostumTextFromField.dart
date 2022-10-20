import 'package:flutter/material.dart';

class CostumTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) valid;
  final String hint;
  final Icon icon;
  const CostumTextFromField({Key? key, required this.hint, required this.icon, required this.controller, required this.valid, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: TextFormField(
          validator: valid,
          controller: controller,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              hintText: hint,
              icon: icon,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ));
  }
}
