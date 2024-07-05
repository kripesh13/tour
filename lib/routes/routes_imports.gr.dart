// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:tour_destiny/View/Auth/Login_Screen_Module/login_screen.dart'
    as _i6;
import 'package:tour_destiny/View/Auth/Splash_Module/splash_Screen.dart' as _i8;
import 'package:tour_destiny/View/pages/Account_Settings_Module/account_settngs_screen.dart'
    as _i1;
import 'package:tour_destiny/View/pages/Details_Module/details_screen.dart'
    as _i3;
import 'package:tour_destiny/View/Screen/Booking_Module/booking_screen.dart'
    as _i2;
import 'package:tour_destiny/View/Screen/BottomNavbar/home_display_screen.dart'
    as _i4;
import 'package:tour_destiny/View/Screen/Home_Screen_Module/home_screen.dart'
    as _i5;
import 'package:tour_destiny/View/Screen/Profile_Module/profile_screen.dart'
    as _i7;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AccountSettingsScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountSettingsScreen(),
      );
    },
    BookingScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookingScreen(),
      );
    },
    DetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsScreenRouteArgs>(
          orElse: () => const DetailsScreenRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailsScreen(
          key: args.key,
          des: args.des,
          imageList: args.imageList,
          image: args.image,
          ratings: args.ratings,
          name: args.name,
          price: args.price,
        ),
      );
    },
    HomeDisplayScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDisplayScreenRouteArgs>(
          orElse: () => const HomeDisplayScreenRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeDisplayScreen(key: args.key),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginScreen(key: args.key),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountSettingsScreen]
class AccountSettingsScreenRoute extends _i9.PageRouteInfo<void> {
  const AccountSettingsScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AccountSettingsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSettingsScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookingScreen]
class BookingScreenRoute extends _i9.PageRouteInfo<void> {
  const BookingScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BookingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DetailsScreen]
class DetailsScreenRoute extends _i9.PageRouteInfo<DetailsScreenRouteArgs> {
  DetailsScreenRoute({
    _i10.Key? key,
    String? des,
    List<String>? imageList,
    String? image,
    String? ratings,
    String? name,
    String? price,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailsScreenRoute.name,
          args: DetailsScreenRouteArgs(
            key: key,
            des: des,
            imageList: imageList,
            image: image,
            ratings: ratings,
            name: name,
            price: price,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsScreenRoute';

  static const _i9.PageInfo<DetailsScreenRouteArgs> page =
      _i9.PageInfo<DetailsScreenRouteArgs>(name);
}

class DetailsScreenRouteArgs {
  const DetailsScreenRouteArgs({
    this.key,
    this.des,
    this.imageList,
    this.image,
    this.ratings,
    this.name,
    this.price,
  });

  final _i10.Key? key;

  final String? des;

  final List<String>? imageList;

  final String? image;

  final String? ratings;

  final String? name;

  final String? price;

  @override
  String toString() {
    return 'DetailsScreenRouteArgs{key: $key, des: $des, imageList: $imageList, image: $image, ratings: $ratings, name: $name, price: $price}';
  }
}

/// generated route for
/// [_i4.HomeDisplayScreen]
class HomeDisplayScreenRoute
    extends _i9.PageRouteInfo<HomeDisplayScreenRouteArgs> {
  HomeDisplayScreenRoute({
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeDisplayScreenRoute.name,
          args: HomeDisplayScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeDisplayScreenRoute';

  static const _i9.PageInfo<HomeDisplayScreenRouteArgs> page =
      _i9.PageInfo<HomeDisplayScreenRouteArgs>(name);
}

class HomeDisplayScreenRouteArgs {
  const HomeDisplayScreenRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeDisplayScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginScreen]
class LoginScreenRoute extends _i9.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginScreenRoute.name,
          args: LoginScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i9.PageInfo<LoginScreenRouteArgs> page =
      _i9.PageInfo<LoginScreenRouteArgs>(name);
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreenRoute extends _i9.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashScreen]
class SplashScreenRoute extends _i9.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
