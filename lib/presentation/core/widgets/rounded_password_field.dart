import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_app/presentation/core/widgets/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FormFieldValidator validator;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: !_show,
        onChanged: widget.onChanged,
        cursorColor: Palette.darkBlue,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Palette.darkBlue,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _show ? Icons.visibility : Icons.visibility_off,
              color: Palette.darkBlue,
            ),
            onPressed: () {
              setState(() {
                _show = !_show;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
