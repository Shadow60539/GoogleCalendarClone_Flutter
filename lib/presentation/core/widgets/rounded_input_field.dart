import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_app/presentation/core/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final FormFieldValidator validator;
  final TextEditingController controller;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        cursorColor: Palette.darkBlue,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Palette.darkBlue,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
