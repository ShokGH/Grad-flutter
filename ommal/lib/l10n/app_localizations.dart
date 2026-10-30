import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Create New Account'**
  String get signup;

  /// No description provided for @forget.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forget;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'Verify OTP'**
  String get otp;

  /// No description provided for @newpass.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newpass;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get profile;

  /// No description provided for @addaddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Location'**
  String get addaddress;

  /// No description provided for @addmoney.
  ///
  /// In en, this message translates to:
  /// **'Top Up Wallet'**
  String get addmoney;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @changeloc.
  ///
  /// In en, this message translates to:
  /// **'Change Location'**
  String get changeloc;

  /// No description provided for @bookservice.
  ///
  /// In en, this message translates to:
  /// **'Book a Service'**
  String get bookservice;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search Results'**
  String get search;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter Search'**
  String get filter;

  /// No description provided for @emergbook.
  ///
  /// In en, this message translates to:
  /// **'Request Emergency Service'**
  String get emergbook;

  /// No description provided for @bookconfirmed.
  ///
  /// In en, this message translates to:
  /// **'Booking Confirmed'**
  String get bookconfirmed;

  /// No description provided for @liveloc.
  ///
  /// In en, this message translates to:
  /// **'Track Technician'**
  String get liveloc;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rate the Service'**
  String get rating;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Messages & Chat'**
  String get chat;

  /// No description provided for @bookpost.
  ///
  /// In en, this message translates to:
  /// **'Bookings/Posts'**
  String get bookpost;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @changepass.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changepass;

  /// No description provided for @editprf.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editprf;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report a Problem'**
  String get report;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get mode;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @paymenttype.
  ///
  /// In en, this message translates to:
  /// **'Payment Type'**
  String get paymenttype;

  /// No description provided for @addcard.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get addcard;

  /// No description provided for @newpost.
  ///
  /// In en, this message translates to:
  /// **'New Repair Request'**
  String get newpost;

  /// No description provided for @postdetails.
  ///
  /// In en, this message translates to:
  /// **'Your Post Details'**
  String get postdetails;

  /// No description provided for @postoffers.
  ///
  /// In en, this message translates to:
  /// **'Post Offers'**
  String get postoffers;

  /// No description provided for @paymentmethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentmethod;

  /// No description provided for @qr.
  ///
  /// In en, this message translates to:
  /// **'Pay by QR'**
  String get qr;

  /// No description provided for @paymentfail.
  ///
  /// In en, this message translates to:
  /// **'Payment Failed'**
  String get paymentfail;

  /// No description provided for @digitalinvoice.
  ///
  /// In en, this message translates to:
  /// **'Digital Invoice'**
  String get digitalinvoice;

  /// No description provided for @bookfix.
  ///
  /// In en, this message translates to:
  /// **'Book Maintenance'**
  String get bookfix;

  /// No description provided for @avaliblework.
  ///
  /// In en, this message translates to:
  /// **'Available Jobs'**
  String get avaliblework;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share the App'**
  String get share;

  /// No description provided for @bonus.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get bonus;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Appointments & Tasks Schedule'**
  String get calendar;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
