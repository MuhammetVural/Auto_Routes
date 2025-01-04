import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/router/app_router.gr.dart';
import 'package:first_project/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavigationProvider = StateProvider<int>((ref) => 0);
    final currentIndex = ref.watch(bottomNavigationProvider);

    // Alt sekme için sayfalar

    final theme = Theme.of(context);
    final themeMode = ref.watch(themeManagerProvider);
    final themeModeNotifier = ref.read(themeManagerProvider.notifier);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){

          ref.read(bottomNavigationProvider.notifier).state = index;

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Assets.images.abaout.image(),
            SvgPicture.asset(//burada sadece colorFilter ile temayı aktarabiliyorsun.
              Assets.icons.add,
              colorFilter:
                  ColorFilter.mode(theme.iconTheme.color!, BlendMode.srcIn),
            ),
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
            Switch(
                value: themeMode == ThemeMode.dark,
                onChanged: (isDarkMode) {
                  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                  themeModeNotifier.state =
                      isDarkMode ? ThemeMode.dark : ThemeMode.light;
                }),
                ElevatedButton(
              onPressed: () {
                context.router.push(MessageRoute());
              },
              child: Text(
                'Api Connect',
              ),
            ),
                
          ],
        ),
      ),
    );
  }
}
