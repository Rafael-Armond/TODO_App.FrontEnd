import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function fieldValidator;
  final double borderRadius;

  CustomTextFormField(
      {@required this.labelText,
      this.hint,
      this.prefix,
      this.suffix,
      this.obscure = false,
      this.textInputType,
      this.onChanged,
      this.enabled,
      this.controller,
      this.inputType,
      this.fieldValidator,
      this.borderRadius = 32});
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.prefix != null ? null : const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          suffixIcon: widget.suffix,
          prefixIcon: widget.prefix,
          border: InputBorder.none,
        ),
        controller: widget.controller,
        keyboardType: widget.inputType,
        textAlignVertical: TextAlignVertical.center,
        obscureText: widget.obscure,
        validator: widget.fieldValidator,
      ),
    );
  }
}
