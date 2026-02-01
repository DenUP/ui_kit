import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AppIcon {
  static SvgPicture check({Color? color, double? size}) =>
      _icon('check', color: color, size: size);
  static SvgPicture chevronDown({Color? color, double? size}) =>
      _icon('chevron-down', color: color, size: size);
  static SvgPicture chevronLeft({Color? color, double? size}) =>
      _icon('chevron-left', color: color, size: size);
  static SvgPicture close({Color? color, double? size}) =>
      _icon('close', color: color, size: size);
  static SvgPicture delete({Color? color, double? size}) =>
      _icon('delete', color: color, size: size);
  static SvgPicture dismiss({Color? color, double? size}) =>
      _icon('dismiss', color: color, size: size);
  static SvgPicture download({Color? color, double? size}) =>
      _icon('download', color: color, size: size);
  static SvgPicture eyeOff({Color? color, double? size}) =>
      _icon('eye_off', color: color, size: size);
  static SvgPicture eyeOn({Color? color, double? size}) =>
      _icon('eye_on', color: color, size: size);
  static SvgPicture fileText({Color? color, double? size}) =>
      _icon('file-text', color: color, size: size);
  static SvgPicture filter({Color? color, double? size}) =>
      _icon('filter', color: color, size: size);
  static SvgPicture map({Color? color, double? size}) =>
      _icon('map', color: color, size: size);
  static SvgPicture minus({Color? color, double? size}) =>
      _icon('minus', color: color, size: size);
  static SvgPicture messageCircle({Color? color, double? size}) =>
      _icon('message-circle', color: color, size: size);
  static SvgPicture moreHorizontal({Color? color, double? size}) =>
      _icon('more-horizontal', color: color, size: size);
  static SvgPicture paperclip({Color? color, double? size}) =>
      _icon('paperclip', color: color, size: size);
  static SvgPicture plus({Color? color, double? size}) =>
      _icon('plus', color: color, size: size);
  static SvgPicture search({Color? color, double? size}) =>
      _icon('search', color: color, size: size);
  static SvgPicture send({Color? color, double? size}) =>
      _icon('send', color: color, size: size);
  static SvgPicture shoppingCart({Color? color, double? size}) =>
      _icon('shopping-cart', color: color, size: size);
}

SvgPicture _icon(String name, {Color? color, double? size}) {
  return SvgPicture.asset(
    "assets/icon/$name.svg",
    width: size,
    height: size,
    colorFilter: color != null
        ? ColorFilter.mode(color, BlendMode.srcATop)
        : null,
    package: 'ui_kit',
  );
}
