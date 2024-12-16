// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:patel_samaj_app/modules/auth/login_screen.dart' as _i4;
import 'package:patel_samaj_app/modules/dashboard/dashboard.dart' as _i2;
import 'package:patel_samaj_app/modules/family/family.dart' as _i3;
import 'package:patel_samaj_app/modules/messages/chat_screen.dart' as _i1;
import 'package:patel_samaj_app/modules/messages/messages.dart' as _i5;
import 'package:patel_samaj_app/modules/messages/new_message.dart' as _i6;
import 'package:patel_samaj_app/modules/occupation/occupations.dart' as _i7;
import 'package:patel_samaj_app/modules/post/posts_screen.dart' as _i8;
import 'package:patel_samaj_app/modules/profile/user_profile.dart' as _i10;
import 'package:patel_samaj_app/modules/splash/splash_screen.dart' as _i9;

/// generated route for
/// [_i1.ChatScreen]
class ChatRoute extends _i11.PageRouteInfo<void> {
  const ChatRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChatScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i11.PageRouteInfo<void> {
  const DashboardRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.FamilyScreen]
class FamilyRoute extends _i11.PageRouteInfo<void> {
  const FamilyRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FamilyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FamilyRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.FamilyScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MessagesScreen]
class MessagesRoute extends _i11.PageRouteInfo<void> {
  const MessagesRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MessagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessagesRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.MessagesScreen();
    },
  );
}

/// generated route for
/// [_i6.NewMessageScreen]
class NewMessageRoute extends _i11.PageRouteInfo<void> {
  const NewMessageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewMessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewMessageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.NewMessageScreen();
    },
  );
}

/// generated route for
/// [_i7.OccupationScreen]
class OccupationRoute extends _i11.PageRouteInfo<OccupationRouteArgs> {
  OccupationRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          OccupationRoute.name,
          args: OccupationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OccupationRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OccupationRouteArgs>(
          orElse: () => const OccupationRouteArgs());
      return _i7.OccupationScreen(key: args.key);
    },
  );
}

class OccupationRouteArgs {
  const OccupationRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'OccupationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.PostsScreen]
class PostsRoute extends _i11.PageRouteInfo<void> {
  const PostsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.PostsScreen();
    },
  );
}

/// generated route for
/// [_i9.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashScreen();
    },
  );
}

/// generated route for
/// [_i10.UserProfile]
class UserProfile extends _i11.PageRouteInfo<void> {
  const UserProfile({List<_i11.PageRouteInfo>? children})
      : super(
          UserProfile.name,
          initialChildren: children,
        );

  static const String name = 'UserProfile';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.UserProfile();
    },
  );
}
