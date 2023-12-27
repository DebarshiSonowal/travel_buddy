import 'package:flutter/material.dart';
import 'package:travel_buddy/Views/AccountScreen/account_screen.dart';
import 'package:travel_buddy/Views/BookingScreen/booking_screen.dart';
import 'package:travel_buddy/Views/HelpScreen/help_screen.dart';
import 'package:travel_buddy/Views/IntroScreen/intro_screen.dart';
import 'package:travel_buddy/Views/LogInScreen/login_screen.dart';
import 'package:travel_buddy/Views/OtpScreen/otp_screen.dart';
import 'package:travel_buddy/Views/SeatLayout/seat_layout.dart';
import '../Constants/routes.dart';
import '../Views/BookingConfirmation/booking_confirmation.dart';
import '../Views/InvoiceReceipt/invoice_receipt.dart';
import '../Views/MainScreen/main_screen.dart';
import '../Views/OlderBookings/older_bookings.dart';
import '../Views/PassengerInfo/passenger_info.dart';
import '../Views/PaymentScreen/payment_screen.dart';
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
      return FadeTransitionPageRouteBuilder(page: OtpScreen(mobile: settings.arguments as String,));
    case Routes.bookingScreen:
      return FadeTransitionPageRouteBuilder(page:  BookingScreen());
    case Routes.seatLayout:
      return FadeTransitionPageRouteBuilder(page: const SeatLayout());
    case Routes.passengerLayout:
      return FadeTransitionPageRouteBuilder(page: const PassengerInfo());
    case Routes.paymentScreen:
      return FadeTransitionPageRouteBuilder(page: const PaymentScreen());
    case Routes.bookingConfirmationScreen:
      return FadeTransitionPageRouteBuilder(page: const BookingConfirmation());
    case Routes.invoiceReceiptScreen:
      return FadeTransitionPageRouteBuilder(page: const InvoiceReceipt());
    case Routes.oldBookingScreen:
      return FadeTransitionPageRouteBuilder(page: const OlderBookingScreen());
    case Routes.helpScreen:
      return FadeTransitionPageRouteBuilder(page: const HelpScreen());
    case Routes.accountScreen:
      return FadeTransitionPageRouteBuilder(page: const AccountScreen());
    default:
      return FadeTransitionPageRouteBuilder(page: Container());
  }
}
