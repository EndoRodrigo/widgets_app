import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/scream/Sppiner/ProgressScream.dart';
import 'package:widgets_app/presentation/scream/animated/animated_screms.dart';
import 'package:widgets_app/presentation/scream/buttons/buttons_scream.dart';
import 'package:widgets_app/presentation/scream/carts/carts_screams.dart';
import 'package:widgets_app/presentation/scream/home/home_screams.dart';
import 'package:widgets_app/presentation/scream/scroll/scrol_infinity.dart';
import 'package:widgets_app/presentation/scream/snackbar/snackbar_scream.dart';
import 'package:widgets_app/presentation/scream/tutorial/tutorial_scream.dart';

import '../../presentation/scream/control/ui_controles.dart';

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
    GoRoute(
      path: '/ux',
      name: UiControles.name,
      builder: (context, state) => const UiControles(),
    ),
    GoRoute(
      path: '/tutorial',
      name: TutorialScream.name,
      builder: (context, state) => const TutorialScream(),
    ),
    GoRoute(
      path: '/scroll',
      name: ScrolInfinity.name,
      builder: (context, state) => const ScrolInfinity(),
    ),
  ],
);
