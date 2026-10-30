import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ommal/features/sharedscreens/landing/landing1_screen.dart';
import 'package:ommal/l10n/app_localizations.dart';

const Color primaryColor = Color(0xFF003647);
const Color secondaryColor = Color(0xFF19778F);
const Color secondaryLightColor = Color(0xFFEAF3F5);
const Color greyTextColor = Color(0xFF737373);
const Color backgroundColor = Color(0xFFF5F5F5);
const Color lightGreyColor = Color(0xFFF5F5F5);
const Color textColor = Color(0xFF091F24);
const Color strokeBorderColor = Color(0xFFDEDEDE);
const Color boxFillColor = Color(0xFFF9F9F9);

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      secondaryContainer: secondaryLightColor,
      onSecondaryContainer: textColor,
      surface: backgroundColor,
      onSurface: textColor,
      error: Color(0xFFB00020),
      onError: Colors.white,
    );

    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      // 1. Force Arabic as the app locale
      locale: const Locale('ar'),
      // 2. Declare supported locales
      supportedLocales: const [Locale('ar'), Locale('en')],
      // 3. Add the localization delegates (needed for Material widgets)
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // supportedLocales: AppLocalizations.supportedLocales, alrady done, incase you need automated version!
      // 4. Set the text direction explicitly to RTL
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      theme: ThemeData(
        fontFamily: 'cairo',
        colorScheme: colorScheme,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: textColor),
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: greyTextColor),
          titleLarge: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w800,
            color: primaryColor,
            fontSize: 22,
          ),
          elevation: 0,
        ),
        dividerTheme: const DividerThemeData(color: strokeBorderColor),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: boxFillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: strokeBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: secondaryColor, width: 2),
          ),
        ),
        cardTheme: CardThemeData(
          color: boxFillColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: strokeBorderColor),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: secondaryColor,
            side: const BorderSide(color: primaryColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const Landing1Screen(),
    );
  }
}
