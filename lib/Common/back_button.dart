import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Router/navigator.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigation.instance.goBack();
      },
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        padding: EdgeInsets.all(2.w),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 12.sp,
        ),
      ),
    );
  }
}