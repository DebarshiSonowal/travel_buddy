import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Router/navigator.dart';

import '../../../Constants/constants.dart';
import '../../../Constants/routes.dart';

class MainScreenBottomWidget extends StatelessWidget {
  const MainScreenBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      child: BottomNavigationBar(
        onTap: (val){
          switch (val) {
            case 1:
              Navigation.instance.navigate(Routes.oldBookingScreen);
              break;
            case 2:
              break;
            case 3:
              break;
            default:
              break;
          }
        },
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.roboto().copyWith(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        selectedFontSize: 10.sp,
        unselectedFontSize: 8.sp,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.roboto().copyWith(
          color: Colors.black,
        ),
        backgroundColor: Constants.primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            label: "My Bookings",
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            label: "Help",
            icon: Icon(
              Icons.help,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            label: "Account",
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
