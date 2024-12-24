import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'src/core/routes/routes.dart';
import 'src/core/theme/app_theme.dart';
import 'src/core/utils/helper.dart';
import 'src/shared/services/notification_service.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.data.isNotEmpty) {
    // await Firebase.initializeApp();
    NotificationService.instance.showFirebaseNotification(message);
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  /// Firebase Messaging background handling
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  /// Initialize local notifications
  // NotificationService.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Template',
      navigatorKey: Helper.navigatorKey,
      scaffoldMessengerKey: Helper.scaffoldMessengerKey,
      theme: appTheme,
      darkTheme: darkAppTheme,
      onGenerateRoute: Routes.onGenerateRouted,
      initialRoute: Routes.home,
    );
  }
}
