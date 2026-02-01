import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:ui_kit/app_color.dart';
import 'package:ui_kit/app_text_style.dart';

class AppTextfomfield extends StatefulWidget {
  final String? value;
  final String? hintText;
  final bool isBorder;
  final Function(String)? onTap;
  const AppTextfomfield({
    super.key,
    this.value,
    this.hintText,
    this.isBorder = false,
    this.onTap,
  });

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
  void didUpdateWidget(covariant AppTextfomfield oldWidget) {
    if (widget.value != oldWidget.value) {
      setState(() {
        _controller.text = widget.value ?? '';
      });
    }
    super.didUpdateWidget(oldWidget);
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
            onChanged: (value) {
              setState(() {
                _controller.text = value;
                widget.onTap?.call(value);
              });
            },
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
    if (widget.isBorder && _controller.text.isNotEmpty) {
      return AppColor.icons;
    }
    return AppColor.inputStroke2;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
