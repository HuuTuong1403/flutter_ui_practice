import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/lang/translation_service.dart';
import 'package:flutter_ui_practice/src/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Practice Flutter UI Design',
    locale: TranslationService.locale,
    transitionDuration: Duration(milliseconds: 500),
    defaultTransition: Transition.leftToRight,
    translations: TranslationService(),
    fallbackLocale: TranslationService.fallbackLocale,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}
