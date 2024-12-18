// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:patel_samaj_app/modules/auth/login_screen.dart' as _i4;
import 'package:patel_samaj_app/modules/dashboard/dashboard.dart' as _i2;
import 'package:patel_samaj_app/modules/family/family.dart' as _i3;
import 'package:patel_samaj_app/modules/messages/chat_screen.dart' as _i1;
import 'package:patel_samaj_app/modules/messages/messages.dart' as _i5;
import 'package:patel_samaj_app/modules/messages/new_message.dart' as _i6;
import 'package:patel_samaj_app/modules/messages/search_member.dart' as _i9;
import 'package:patel_samaj_app/modules/occupation/occupations.dart' as _i7;
import 'package:patel_samaj_app/modules/post/posts_screen.dart' as _i8;
import 'package:patel_samaj_app/modules/profile/user_profile.dart' as _i11;
import 'package:patel_samaj_app/modules/splash/splash_screen.dart' as _i10;

/// generated route for
/// [_i1.ChatScreen]
class ChatRoute extends _i12.PageRouteInfo<void> {
  const ChatRoute({List<_i12.PageRouteInfo>? children})
=======
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:patel_samaj_app/modules/admin+commitee/admin_commitee_screen.dart'
    as _i1;
import 'package:patel_samaj_app/modules/advertistment/advertisement_screen.dart'
    as _i2;
import 'package:patel_samaj_app/modules/auth/login_screen.dart' as _i7;
import 'package:patel_samaj_app/modules/digital+admin/digitial_admin_members_screen.dart'
    as _i3;
import 'package:patel_samaj_app/modules/digital+admin/digitial_admin_screen.dart'
    as _i4;
import 'package:patel_samaj_app/modules/digital+admin/pick_area_screen.dart'
    as _i11;
import 'package:patel_samaj_app/modules/directory/directory_screen.dart' as _i5;
import 'package:patel_samaj_app/modules/directory/member_list_screen.dart'
    as _i8;
import 'package:patel_samaj_app/modules/directory/pick_country+city_screen.dart'
    as _i12;
import 'package:patel_samaj_app/modules/notifications/notification_control_screen.dart'
    as _i9;
import 'package:patel_samaj_app/modules/photo+gallery/our_event_screen.dart'
    as _i6;
import 'package:patel_samaj_app/modules/photo+gallery/photo_gallery_screen.dart'
    as _i10;
import 'package:patel_samaj_app/modules/rate/rate_screen.dart' as _i13;
import 'package:patel_samaj_app/modules/social+organisation/social_member_list.dart'
    as _i14;
import 'package:patel_samaj_app/modules/social+organisation/social_organisation_screen.dart'
    as _i15;
import 'package:patel_samaj_app/modules/splash/splash_screen.dart' as _i16;

/// generated route for
/// [_i1.AdminCommitteeScreen]
class AdminCommitteeRoute extends _i17.PageRouteInfo<void> {
  const AdminCommitteeRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChatScreen();
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i2.DashboardScreen]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i2.AdvertisementScreen]
class AdvertisementRoute extends _i17.PageRouteInfo<void> {
  const AdvertisementRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i3.FamilyScreen]
class FamilyRoute extends _i12.PageRouteInfo<void> {
  const FamilyRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i3.DigitalAdminMembersScreen]
class DigitalAdminMembersRoute extends _i17.PageRouteInfo<void> {
  const DigitalAdminMembersRoute({List<_i17.PageRouteInfo>? children})
      : super(
          DigitalAdminMembersRoute.name,
          initialChildren: children,
        );

  static const String name = 'DigitalAdminMembersRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i3.DigitalAdminMembersScreen();
    },
  );
}

/// generated route for
/// [_i4.DigitalAdminScreen]
class DigitalAdminRoute extends _i17.PageRouteInfo<void> {
  const DigitalAdminRoute({List<_i17.PageRouteInfo>? children})
      : super(
          DigitalAdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'DigitalAdminRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i4.DigitalAdminScreen();
    },
  );
}

/// generated route for
/// [_i5.DirectoryScreen]
class DirectoryRoute extends _i17.PageRouteInfo<void> {
  const DirectoryRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          FamilyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FamilyRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return const _i3.FamilyScreen();
=======
      return const _i5.DirectoryScreen();
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

/// generated route for
/// [_i6.GalleryCategoryScreen]
class GalleryCategoryRoute
    extends _i17.PageRouteInfo<GalleryCategoryRouteArgs> {
  GalleryCategoryRoute({
    _i18.Key? key,
    bool isEvent = false,
    bool isActivity = false,
    bool isProject = false,
    bool isOtherGallery = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          GalleryCategoryRoute.name,
          args: GalleryCategoryRouteArgs(
            key: key,
            isEvent: isEvent,
            isActivity: isActivity,
            isProject: isProject,
            isOtherGallery: isOtherGallery,
          ),
          initialChildren: children,
        );

  static const String name = 'GalleryCategoryRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GalleryCategoryRouteArgs>(
          orElse: () => const GalleryCategoryRouteArgs());
      return _i6.GalleryCategoryScreen(
        key: args.key,
        isEvent: args.isEvent,
        isActivity: args.isActivity,
        isProject: args.isProject,
        isOtherGallery: args.isOtherGallery,
      );
    },
  );
}

class GalleryCategoryRouteArgs {
  const GalleryCategoryRouteArgs({
    this.key,
    this.isEvent = false,
    this.isActivity = false,
    this.isProject = false,
    this.isOtherGallery = false,
  });

  final _i18.Key? key;

  final bool isEvent;

  final bool isActivity;

  final bool isProject;

  final bool isOtherGallery;

  @override
  String toString() {
    return 'GalleryCategoryRouteArgs{key: $key, isEvent: $isEvent, isActivity: $isActivity, isProject: $isProject, isOtherGallery: $isOtherGallery}';
  }
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginScreen();
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i5.MessagesScreen]
class MessagesRoute extends _i12.PageRouteInfo<void> {
  const MessagesRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i8.MemberListScreen]
class MemberListRoute extends _i17.PageRouteInfo<void> {
  const MemberListRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          MessagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessagesRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return const _i5.MessagesScreen();
=======
      return const _i8.MemberListScreen();
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i6.NewMessageScreen]
class NewMessageRoute extends _i12.PageRouteInfo<void> {
  const NewMessageRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i9.NotificationControlScreen]
class NotificationControlRoute extends _i17.PageRouteInfo<void> {
  const NotificationControlRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          NewMessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewMessageRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return const _i6.NewMessageScreen();
=======
      return const _i9.NotificationControlScreen();
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i7.OccupationScreen]
class OccupationRoute extends _i12.PageRouteInfo<OccupationRouteArgs> {
  OccupationRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
=======
/// [_i10.PhotoGalleryScreen]
class PhotoGalleryRoute extends _i17.PageRouteInfo<void> {
  const PhotoGalleryRoute({List<_i17.PageRouteInfo>? children})
      : super(
          PhotoGalleryRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotoGalleryRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i10.PhotoGalleryScreen();
    },
  );
}

/// generated route for
/// [_i11.PickAreaScreen]
class PickAreaRoute extends _i17.PageRouteInfo<PickAreaRouteArgs> {
  PickAreaRoute({
    _i18.Key? key,
    bool isVillage = false,
    bool isMandal = false,
    bool isMandalOthers = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PickAreaRoute.name,
          args: PickAreaRouteArgs(
            key: key,
            isVillage: isVillage,
            isMandal: isMandal,
            isMandalOthers: isMandalOthers,
          ),
          initialChildren: children,
        );

  static const String name = 'PickAreaRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PickAreaRouteArgs>(
          orElse: () => const PickAreaRouteArgs());
      return _i11.PickAreaScreen(
        key: args.key,
        isVillage: args.isVillage,
        isMandal: args.isMandal,
        isMandalOthers: args.isMandalOthers,
      );
    },
  );
}

class PickAreaRouteArgs {
  const PickAreaRouteArgs({
    this.key,
    this.isVillage = false,
    this.isMandal = false,
    this.isMandalOthers = false,
  });

  final _i18.Key? key;

  final bool isVillage;

  final bool isMandal;

  final bool isMandalOthers;

  @override
  String toString() {
    return 'PickAreaRouteArgs{key: $key, isVillage: $isVillage, isMandal: $isMandal, isMandalOthers: $isMandalOthers}';
  }
}

/// generated route for
/// [_i12.PickCountryCityScreen]
class PickCountryCityRoute
    extends _i17.PageRouteInfo<PickCountryCityRouteArgs> {
  PickCountryCityRoute({
    _i18.Key? key,
    bool isCountry = true,
    List<_i17.PageRouteInfo>? children,
>>>>>>> c57796f (Enhance app routing and localization)
  }) : super(
          OccupationRoute.name,
          args: OccupationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OccupationRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      final args = data.argsAs<OccupationRouteArgs>(
          orElse: () => const OccupationRouteArgs());
      return _i7.OccupationScreen(key: args.key);
=======
      final args = data.argsAs<PickCountryCityRouteArgs>(
          orElse: () => const PickCountryCityRouteArgs());
      return _i12.PickCountryCityScreen(
        key: args.key,
        isCountry: args.isCountry,
      );
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

class OccupationRouteArgs {
  const OccupationRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'OccupationRouteArgs{key: $key}';
  }
}

/// generated route for
<<<<<<< HEAD
/// [_i8.PostsScreen]
class PostsRoute extends _i12.PageRouteInfo<void> {
  const PostsRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i13.RateAppScreen]
class RateAppRoute extends _i17.PageRouteInfo<void> {
  const RateAppRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return const _i8.PostsScreen();
=======
      return const _i13.RateAppScreen();
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i9.SearchMemberScreen]
class SearchMemberRoute extends _i12.PageRouteInfo<void> {
  const SearchMemberRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i14.SocialMemberListScreen]
class SocialMemberListRoute
    extends _i17.PageRouteInfo<SocialMemberListRouteArgs> {
  SocialMemberListRoute({
    _i18.Key? key,
    required String organizationName,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          SocialMemberListRoute.name,
          args: SocialMemberListRouteArgs(
            key: key,
            organizationName: organizationName,
          ),
          initialChildren: children,
        );

  static const String name = 'SocialMemberListRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SocialMemberListRouteArgs>();
      return _i14.SocialMemberListScreen(
        key: args.key,
        organizationName: args.organizationName,
      );
    },
  );
}

class SocialMemberListRouteArgs {
  const SocialMemberListRouteArgs({
    this.key,
    required this.organizationName,
  });

  final _i18.Key? key;

  final String organizationName;

  @override
  String toString() {
    return 'SocialMemberListRouteArgs{key: $key, organizationName: $organizationName}';
  }
}

/// generated route for
/// [_i15.SocialOrganizationScreen]
class SocialOrganizationRoute extends _i17.PageRouteInfo<void> {
  const SocialOrganizationRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          SearchMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchMemberRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return const _i9.SearchMemberScreen();
=======
      return const _i15.SocialOrganizationScreen();
>>>>>>> c57796f (Enhance app routing and localization)
    },
  );
}

/// generated route for
<<<<<<< HEAD
/// [_i10.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i16.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
>>>>>>> c57796f (Enhance app routing and localization)
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i16.SplashScreen();
    },
  );
}

/// generated route for
/// [_i11.UserProfile]
class UserProfile extends _i12.PageRouteInfo<void> {
  const UserProfile({List<_i12.PageRouteInfo>? children})
      : super(
          UserProfile.name,
          initialChildren: children,
        );

  static const String name = 'UserProfile';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.UserProfile();
    },
  );
}
