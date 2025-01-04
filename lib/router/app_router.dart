import 'package:auto_route/auto_route.dart';
import 'package:first_project/router/app_router.gr.dart';



@AutoRouterConfig()


class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: HomeRoute.page , initial: true),
  AutoRoute(page: ProfileRoute.page , ),
  AutoRoute(page: SettingsRoute.page),
  AutoRoute(page: AgirlikRoute.page),
  AutoRoute(page: TodoRoute.page),
  AutoRoute(page: WordCounterRoute.page),
  AutoRoute(page: MessageRoute.page),
   /// routes go here
 ];
}

final router = AppRouter();