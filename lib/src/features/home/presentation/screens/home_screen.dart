import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/constants/label_keys.dart';
import '../../../../shared/presentation/bloc/language_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Route route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localization.getTranslatedValue(homeScreenKey))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localization.getTranslatedValue(homeScreenKey)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Change to Amharic (am)
                context.read<LanguageCubit>().changeLanguage('am');
              },
              child: const Text("Switch to Amharic"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Change to english (ti)
                context.read<LanguageCubit>().changeLanguage('en');
              },
              child: const Text("Switch to English"),
            ),
          ],
        ),
      ),
    );
  }
}