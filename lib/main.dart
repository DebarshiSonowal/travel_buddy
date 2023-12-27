import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Helper/storage.dart';
import 'package:travel_buddy/Repository/repository.dart';

import 'Router/navigator.dart';
import 'Router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Storage.instance.initializeStorage();
  runApp(const ProviderScope(child: MyApp()));
}

final repositoryProvider = ChangeNotifierProvider((ref) => Repository());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Travel Buddy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Constants.primaryColor),
          useMaterial3: true,
        ),
        navigatorKey: Navigation.instance.navigatorKey,
        onGenerateRoute: generateRoute,
      );
    });
  }
}
