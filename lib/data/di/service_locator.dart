import 'package:get_it/get_it.dart';
import 'package:patel_samaj_app/common/widgets/app_loader.dart';
import 'package:patel_samaj_app/router/app_router.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt
    ..registerSingleton<AppRouter>(AppRouter())
    ..registerSingleton<AppLoader>(AppLoader());
}
