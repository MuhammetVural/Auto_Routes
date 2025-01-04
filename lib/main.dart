import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/pages/homepage/home_page.dart';
import 'package:first_project/providers/agirlik_state.dart';
import 'package:first_project/router/app_router.dart';
import 'package:first_project/theme/theme_constants.dart';
import 'package:first_project/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp( ProviderScope(
    child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('tr')],
        path: 'assets/language', // <-- change the path of the translation files 
        fallbackLocale: Locale('tr'),
        saveLocale: true,
        startLocale: Locale('tr'),
      child: MyApp()),
  ));
    WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends ConsumerWidget {
   MyApp({super.key});
  final _appRoute = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeManagerProvider);
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: _appRoute.config(),
    );
  }
}



