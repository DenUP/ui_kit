import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BottomNavigator {
  Widget build({int initialIndex = 0, ValueChanged<int>? onTap}) {
    return _TappBar(initialIndex: initialIndex);
  }
}

class _TappBar extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int>? onTap;
  const _TappBar({super.key, required this.initialIndex, this.onTap});

  @override
  State<_TappBar> createState() => _TappBarState();
}

class _TappBarState extends State<_TappBar> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x4DA0A0A0),
            blurRadius: 20,
            offset: Offset(0, -0.5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          widget.onTap?.call(value);
        },
        items: [
          BottomNavigationBarItem(icon: AppIcon.check(), label: 'Главная'),
          BottomNavigationBarItem(icon: AppIcon.check(), label: 'Каталог'),
          BottomNavigationBarItem(icon: AppIcon.check(), label: 'Проекты'),
          BottomNavigationBarItem(icon: AppIcon.check(), label: 'Профиль'),
        ],
      ),
    );
  }
}
