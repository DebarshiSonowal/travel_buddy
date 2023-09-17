import 'package:flutter/material.dart';
import 'package:travel_buddy/Views/BookingScreen/booking_screen.dart';
import 'package:travel_buddy/Views/IntroScreen/intro_screen.dart';
import 'package:travel_buddy/Views/LogInScreen/login_screen.dart';
import 'package:travel_buddy/Views/OtpScreen/otp_screen.dart';
import 'package:travel_buddy/Views/SeatLayout/seat_layout.dart';
import '../Constants/routes.dart';
import '../Views/MainScreen/main_screen.dart';
import '../Views/PassengerInfo/passenger_info.dart';
import '../Views/SplashScreen/splash_screen.dart';
import '../Widgets/transition_builder.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashScreen:
      return FadeTransitionPageRouteBuilder(page: const SplashScreen());
    case Routes.mainScreen:
      return FadeTransitionPageRouteBuilder(page: const MainScreen());
    case Routes.introScreen:
      return FadeTransitionPageRouteBuilder(page: const IntroScreen());
    case Routes.loginScreen:
      return FadeTransitionPageRouteBuilder(page: const LoginScreen());
    case Routes.otpScreen:
      return FadeTransitionPageRouteBuilder(page: const OtpScreen());
    case Routes.bookingScreen:
      return FadeTransitionPageRouteBuilder(page: const BookingScreen());
    case Routes.seatLayout:
      return FadeTransitionPageRouteBuilder(page: const SeatLayout());
    case Routes.passengerLayout:
      return FadeTransitionPageRouteBuilder(page: const PassengerInfo());
    // case Routes.searchScreen:
    //   return FadeTransitionPageRouteBuilder(page:  SearchPage(type: settings.arguments as int));
    //
    // //edit
    // case Routes.editOrderItem:
    //   return FadeTransitionPageRouteBuilder(
    //       page: EditOrderAddProduct(id: settings.arguments as int));
    // case Routes.editOrderCart:
    //   return FadeTransitionPageRouteBuilder(page: EditCartScreen(id: settings.arguments as int));
    default:
      return FadeTransitionPageRouteBuilder(page: Container());
  }
}
