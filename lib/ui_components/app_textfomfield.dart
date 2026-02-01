import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_text_style.dart';

class AppTextfomfield extends StatefulWidget {
  final String? value;
  final String? hintText;
  const AppTextfomfield({super.key, this.value, this.hintText});

  @override
  State<AppTextfomfield> createState() => _AppTextfomfieldState();
}

class _AppTextfomfieldState extends State<AppTextfomfield> {
  late TextEditingController _controller;
  bool _isFocus = false;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 335,
      child: FocusScope(
        child: Focus(
          onFocusChange: (value) {
            setState(() {
              _isFocus = value;
            });
          },
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.inputBg2,
              hintText: widget.hintText,
              hintStyle: AppTextStyle.textRegular.copyWith(
                color: AppColor.caption,
              ),
              border: _border(),
              enabledBorder: _border(),
              errorBorder: _border(),
              focusedBorder: _border(),
            ),
            controller: _controller,
          ),
        ),
      ),
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(width: 1, color: _colorBorder()),
    );
  }

  Color _colorBorder() {
    if (_isFocus) {
      return AppColor.accent;
    }
    return AppColor.inputStroke2;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
