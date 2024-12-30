import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/generated/localization_manager.dart';
import 'package:first_project/router/app_router.gr.dart';
import 'package:first_project/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Assets.images.abaout.image(),
            SvgPicture.asset(Assets.icons.add),
            ElevatedButton(
              onPressed: () {
                context.router.push(ProfileRoute());
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(AgirlikRoute());
              },
              child: Text('agirlik.agirlik'.tr()),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(SettingsRoute());
              },
              child: Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(TodoRoute());
              },
              child: Text(
                'agirlik.todo'.tr(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(WordCounterRoute());
              },
              child: Text(
                'Kelime Sınırı',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
