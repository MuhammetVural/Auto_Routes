// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:first_project/pages/agirlik/agirlik_page.dart' as _i1;
import 'package:first_project/pages/homepage/home_page.dart' as _i2;
import 'package:first_project/pages/profile/profile_page.dart' as _i3;
import 'package:first_project/pages/settings/settings_page.dart' as _i4;
import 'package:first_project/pages/todo/todo_page.dart' as _i5;
import 'package:first_project/pages/word_counter_page.dart' as _i6;

/// generated route for
/// [_i1.AgirlikPage]
class AgirlikRoute extends _i7.PageRouteInfo<void> {
  const AgirlikRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AgirlikRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgirlikRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AgirlikPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return  _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfilePage();
    },
  );
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsPage();
    },
  );
}

/// generated route for
/// [_i5.TodoPage]
class TodoRoute extends _i7.PageRouteInfo<void> {
  const TodoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TodoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.TodoPage();
    },
  );
}

/// generated route for
/// [_i6.WordCounterPage]
class WordCounterRoute extends _i7.PageRouteInfo<void> {
  const WordCounterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WordCounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'WordCounterRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return _i6.WordCounterPage();
    },
  );
}
