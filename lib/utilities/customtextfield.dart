import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextInputType type;
  final int maxLines;

  const CustomTextFormField({
    Key? key,
    this.style,
    this.hintStyle,
    this.errorStyle,
    this.errorBorder,
    required this.controller,
    this.maxLines = 1,
    this.type = TextInputType.text,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.enabledBorder,
    this.focusedBorder,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;
  bool passwordsMatch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        maxLines: widget.maxLines,
        keyboardType: widget.type,
        controller: widget.controller,
        onChanged: (value) {
          final password = widget.controller.text;
          final confirmPassword = value;
          setState(() {
            passwordsMatch = password == confirmPassword && password.isNotEmpty;
          });
        },
        decoration: InputDecoration(
          hintStyle: widget.hintStyle,
          errorStyle: widget.errorStyle,
          errorBorder: widget.errorBorder,
          hintText: widget.hintText,
          enabledBorder: widget.enabledBorder,
          focusedBorder: widget.focusedBorder,
          prefixIcon: widget.prefixIcon,
         suffixIcon: buildSuffixIcon(),
        ),
        obscureText: widget.obscureText && _obscureText,
        validator: widget.validator,
      ),
    );
  }

  Widget? buildSuffixIcon() {
    if (widget.obscureText) {
      return IconButton(
        icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    } else if (passwordsMatch) {
      return SizedBox.shrink();
    } else {
      return null;
    }
  }
}
