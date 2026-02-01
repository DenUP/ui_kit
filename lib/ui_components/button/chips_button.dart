import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ChipsButton {
  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      fixedSize: Size(129, 48),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    );
  }

  Widget accent({required String name, VoidCallback? onTap}) {
    return ElevatedButton(
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all<Color>(AppColor.accent),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
      onPressed: onTap,
      child: _text(name),
    );
  }

  Widget unAccent({required String name, VoidCallback? onTap}) {
    return ElevatedButton(
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all<Color>(AppColor.inputBg2),
        foregroundColor: WidgetStateProperty.all<Color>(AppColor.description2),
      ),
      onPressed: onTap,
      child: _text(name),
    );
  }

  Widget _text(String name) {
    return Text(name, style: AppTextStyle.textMedium);
  }
}
