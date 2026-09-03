import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/scream/Sppiner/ProgressScream.dart';
import 'package:widgets_app/presentation/scream/animated/animated_screms.dart';
import 'package:widgets_app/presentation/scream/buttons/buttons_scream.dart';
import 'package:widgets_app/presentation/scream/carts/carts_screams.dart';
import 'package:widgets_app/presentation/scream/home/home_screams.dart';
import 'package:widgets_app/presentation/scream/snackbar/snackbar_scream.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreams.name,
      builder: (context, state) => const HomeScreams(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScream.name,
      builder: (context, state) => const ButtonsScream(),
    ),
    GoRoute(
      path: '/carts',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snack',
      name: SnackbarScream.name,
      builder: (context, state) => const SnackbarScream(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScrems.name,
      builder: (context, state) => const AnimatedScrems(),
    ),
  ],
);
