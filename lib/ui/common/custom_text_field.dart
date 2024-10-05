import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shopping_gift_app/constant/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required Key key,
      required this.onTap,
      required this.label,
      required this.onSubmitted,
      required this.onChanged,
      required this.controller,
      this.enabled = true,
      required this.placeholder,
      required this.keyboardType,
      required this.suffixIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.filled = true,
      required this.prefixIcon,
      this.errorMaxLines = 1,
      this.maxLines = 1,
      this.focusedColor = ThemeColor,
      this.errorText = '',
      required this.padding,
      this.valid = true,
      required this.inputFormatters})
      : super(key: key);

  final TextEditingController controller;
  final String placeholder;
  final String errorText;
  final String label;
  final bool filled;
  final int errorMaxLines;
  final int maxLines;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final void Function(String) onSubmitted;
  final void Function(String) onChanged;
  final bool enabled;
  final bool valid;
  final bool readOnly;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback onTap;
  final Color focusedColor;
  final EdgeInsets padding;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: ThemeColor,
        controller: controller,
        textInputAction: TextInputAction.go,
        onSubmitted: onSubmitted,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        onChanged: onChanged,
        decoration: InputDecoration(
          errorText: valid ? null : errorText,
          errorMaxLines: errorMaxLines,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: filled,
          fillColor: ThemeTextColorLightest,
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusedColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              )),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
          // counter: SizedBox.shrink(),
          hintText: placeholder,
          labelText: label,
          isDense: true,
          contentPadding: padding,
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
        enabled: enabled,
        readOnly: readOnly,
        autocorrect: false,
        onTap: onTap);
  }
}
