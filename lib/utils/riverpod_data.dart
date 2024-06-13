import 'package:easy_riverpod_eample_app/models/theme_switcher.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverPodisLight = StateProvider<bool>((ref){
  return false;
});

final riverPodModelisLight = ChangeNotifierProvider<ThemeSwitcher>((ref) {
  return ThemeSwitcher(isLight: true);
});
