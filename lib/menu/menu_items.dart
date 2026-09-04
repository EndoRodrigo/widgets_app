import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Personalizaciones de botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Contenedor de tarjetas en flutter',
    link: '/carts',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'ProgressIndicator',
    subTitle: 'spinner de carga fluter',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBar y dialogos',
    subTitle: 'Widgets en la parte inferor de la panatalla',
    link: '/snack',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stafull widgest anited',
    link: '/animated',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Ux Control + tile',
    subTitle: 'CheckBox Rdios or tile',
    link: '/ux',
    icon: Icons.check_box_rounded,
  ),
  MenuItems(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeño tutoral a la aplicacion',
    link: '/tutorial',
    icon: Icons.accessibility_new,
  ),
  MenuItems(
    title: 'Infinity scroll y pull',
    subTitle: 'Listas infinitas',
    link: '/scroll',
    icon: Icons.checklist_rtl_sharp,
  ),
];
