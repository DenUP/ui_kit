import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class Login {
  Widget yandex(VoidCallback? onTap) {
    return _allButton(AppIcon.yandex(), "Войти с Yandex", onTap);
  }

  Widget vk(VoidCallback? onTap) {
    return _allButton(AppIcon.vk(), "Войти с Yandex", onTap);
  }

  Widget _allButton(Widget icon, String name, VoidCallback? onTap) {
    return SizedBox(
      width: 335,
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
            side: BorderSide(color: AppColor.inputStroke2, width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 16),
            Text(
              name,
              style: AppTextStyle.title3Medium.copyWith(color: AppColor.black),
            ),
          ],
        ),
      ),
    );
  }
}
