import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planear/screen/main_screen/main_screen.dart';
import 'package:planear/screen/social/add_friend_screen.dart';
import 'package:planear/screen/splash_screen/splash_logo_screen.dart';
import 'package:planear/widgets/bottom_navigationbar.dart';
import 'package:planear/widgets/state_message_percent.dart';
import 'package:planear/widgets/state_message_qa.dart';
import 'package:planear/widgets/state_message_todo.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

const storage = FlutterSecureStorage();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('ko')],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}