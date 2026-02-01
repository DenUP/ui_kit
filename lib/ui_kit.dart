import 'package:ui_kit/ui_components/app_textfomfield.dart';
import 'package:ui_kit/ui_components/button/big_button.dart';
import 'package:ui_kit/ui_components/button/chips_button.dart';
import 'package:ui_kit/ui_components/button/small_button.dart';

export 'app_text_style.dart';
export 'app_color.dart';
export 'app_icon.dart';

class UiKit {
  BigButton get bigButton => BigButton();
  SmallButton get smallButton => SmallButton();
  ChipsButton get chipsButton => ChipsButton();
}

final ui = UiKit();
