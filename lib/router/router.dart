import 'package:auto_route/auto_route.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/page/login_page.dart';
import 'package:task_manager_app/presentation/feature/splash_page/splash_page.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/page/todo_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRoute extends _$AppRoute {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true, path: '/'),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: TodoRoute.page),
      ];
}
