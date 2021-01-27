import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';

class BTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final String hintText;
  final String labelText;
  final bool isPassword;
  final bool isTextArea;
  final bool isBorderLess;
  final bool isComposed;
  final String helperText;
  final bool readOnly;
  final Function(String) validator;
  final String initialValue;
  final Function onTap;
  final Function(String) onChanged;
  final Function(String) onSaved;
  final Function(String) onFieldSubmitted;
  final List<TextInputFormatter> inputFormatters;
  final int maxLength;
  final BorderSide borderSide;

  BTextFormField(
      {this.controller,
      this.hintText,
      this.labelText,
      this.isPassword = false,
      this.isTextArea = false,
      this.isBorderLess = true,
      this.isComposed = true,
      this.readOnly = false,
      this.keyboardType,
      this.prefixIcon,
      this.helperText,
      this.suffixIcon,
      this.validator,
      this.initialValue,
      this.onTap,
      this.onChanged,
      this.onSaved,
      this.maxLength = 7,
      this.inputFormatters,
      this.onFieldSubmitted,
      this.borderSide});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal(size: 20), vertical: vertical(size: 8)),
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: kFormFillTextColor),
        validator: validator,
        controller: controller,
        readOnly: this.readOnly,
        initialValue: initialValue,
        onTap: onTap,
        onSaved: onSaved,
        inputFormatters: inputFormatters,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: isPassword,
        maxLength: maxLength,
        minLines: isTextArea ? 4 : 1,
        maxLines: isTextArea ? 5 : 1,
        decoration: InputDecoration(
          helperText: helperText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText,
          counterText: "",
          hintStyle: TextStyle(fontSize: getProportionateScreenWidth(17)),
          //floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
