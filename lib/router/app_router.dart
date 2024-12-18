// ignore_for_file: constant_identifier_names

import 'package:auto_route/auto_route.dart';
import 'package:patel_samaj_app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: false),
        AutoRoute(page: DashboardRoute.page, path: DASHBOARD, initial: true),
        AutoRoute(page: FamilyRoute.page, path: FAMILY),
        AutoRoute(page: OccupationRoute.page, path: OCCUPATION, initial: false),
        AutoRoute(page: PostsRoute.page, path: POST),
        AutoRoute(page: SearchMemberRoute.page, path: SEARCH_MEMBER),
        AutoRoute(page: UserProfile.page, path: PROFILE, initial: false),
        AutoRoute(page: MessagesRoute.page, path: MESSAGES),
        AutoRoute(page: ChatRoute.page, path: CHAT),
        AutoRoute(page: NewMessageRoute.page, path: NEW_MESSAGE),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: DirectoryRoute.page),
        AutoRoute(page: PickCountryCityRoute.page),
        AutoRoute(page: MemberListRoute.page),
        AutoRoute(page: RateAppRoute.page),
        AutoRoute(page: NotificationControlRoute.page),
        AutoRoute(page: AdvertisementRoute.page),
        AutoRoute(page: SocialOrganizationRoute.page),
        AutoRoute(page: SocialMemberListRoute.page),
        AutoRoute(page: AdminCommitteeRoute.page),
      ];

  static const String DASHBOARD = '/dashboard';
  static const String FAMILY = '/family';
  static const String OCCUPATION = '/occupation';
  static const String POST = '/post';
  static const String PROFILE = '/profile';
  static const String MESSAGES = '/messages';
  static const String CHAT = '/chat';
  static const String NEW_MESSAGE = '/new_message';
  static const String SEARCH_MEMBER = '/search_member';
}
