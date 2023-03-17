import 'package:get/get.dart';

import '../modules/all_offers/bindings/all_offers_binding.dart';
import '../modules/all_offers/views/all_offers_view.dart';
import '../modules/drawer/bindings/drawer_binding.dart';
import '../modules/drawer/views/drawer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/offer/bindings/offer_binding.dart';
import '../modules/offer/views/offer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER,
      page: () => DrawerView(),
      binding: DrawerBinding(),
    ),
    GetPage(
      name: _Paths.ALL_OFFERS,
      page: () => AllOffersView(),
      binding: AllOffersBinding(),
    ),
    GetPage(
      name: _Paths.OFFER,
      page: () => const OfferView(),
      binding: OfferBinding(),
    ),
  ];
}
