import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/bottom_tab.dart';
import 'package:flutter_3_dajare/view_model/authentication_view_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationViewModel>(
          create: (_) => AuthenticationViewModel(),
        ),
      ],
      child: Builder(builder: (newContext) {
        bool isLogin =
            Provider.of<AuthenticationViewModel>(newContext, listen: false)
                .isLogin;
        if (isLogin) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale("en"),
              Locale("ja"),
            ],
            locale: const Locale('ja', 'JP'),
            initialRoute: '/home',
            routes: {
              '/home': (_) => BottomTab(),
              '/login': (_) => const Center(child: Text('ログインしてね')),
            },
          );
        }
        return FutureBuilder<bool>(
          future:
              Provider.of<AuthenticationViewModel>(newContext, listen: false)
                  .fetchMyData(),
          builder: (_, snapshot) {
            final String initialRoute;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              initialRoute = snapshot.data! ? '/home' : '/login';
            } else {
              initialRoute = '/login';
            }
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: initialRoute,
              routes: {
                '/home': (_) => BottomTab(),
                '/login': (_) => const Center(child: Text('ログインしてね')),
              },
            );
          },
        );
      }),
    );
  }
}
