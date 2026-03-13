import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
 const  CustomTextFormField({super.key , required this.maxLines , required this.content , this.submit});
  final int maxLines;
  final String content;
  final Function(String)? submit;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: submit,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: content,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.all(16),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      maxLines: maxLines,
    );
  }
}
