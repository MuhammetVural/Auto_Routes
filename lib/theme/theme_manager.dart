import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeManagerProvider = StateNotifierProvider<ThemeManager, ThemeMode>(
  (ref) => ThemeManager(),
);

class ThemeManager extends StateNotifier<ThemeMode> {

ThemeManager() : super(ThemeMode.light); 


void toggleTheme(bool isDarkMode){
  state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
}





}