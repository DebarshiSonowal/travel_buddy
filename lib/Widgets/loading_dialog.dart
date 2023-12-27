

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
// import 'package:pos_system/Constants/constants.dart';



class LoadingDialog extends StatelessWidget {
  LoadingDialog(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.h,
      width: 4.h,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
  }
}
