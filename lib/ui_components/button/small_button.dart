import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SmallButton {
  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      fixedSize: Size(96, 40),
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    );
  }

  Widget accent({
    required String name,
    VoidCallback? onTap,
    bool isActive = true,
  }) {
    return ElevatedButton(
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all<Color>(
          isActive ? AppColor.accent : AppColor.accentInactive,
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
      onPressed: isActive ? onTap : null,
      child: _text(name),
    );
  }

  Widget noAccent({required String name, VoidCallback? onTap}) {
    return ElevatedButton(
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        foregroundColor: WidgetStateProperty.all<Color>(AppColor.accent),

        side: WidgetStateProperty.all(
          BorderSide(color: AppColor.accent, width: 1),
        ),
      ),
      onPressed: onTap,
      child: _text(name),
    );
  }

  Widget unAccent({required String name, VoidCallback? onTap}) {
    return ElevatedButton(
      style: _buttonStyle().copyWith(
        backgroundColor: WidgetStateProperty.all<Color>(AppColor.inputBg),
        foregroundColor: WidgetStateProperty.all<Color>(AppColor.black),
      ),
      onPressed: onTap,
      child: _text(name),
    );
  }

  Widget _text(String name) {
    return Text(name, style: AppTextStyle.captionSemibold);
  }
}
