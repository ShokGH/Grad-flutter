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
  /// **'Log in'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Create new account'**
  String get signup;

  /// No description provided for @forget.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forget;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'Verify code'**
  String get otp;

  /// No description provided for @newpass.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newpass;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'My account'**
  String get profile;

  /// No description provided for @addaddress.
  ///
  /// In en, this message translates to:
  /// **'Set your location'**
  String get addaddress;

  /// No description provided for @addmoney.
  ///
  /// In en, this message translates to:
  /// **'Top up wallet'**
  String get addmoney;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @changeloc.
  ///
  /// In en, this message translates to:
  /// **'Change location'**
  String get changeloc;

  /// No description provided for @bookservice.
  ///
  /// In en, this message translates to:
  /// **'Book a service'**
  String get bookservice;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search results'**
  String get search;

  /// No description provided for @searchfilter.
  ///
  /// In en, this message translates to:
  /// **'Filter search'**
  String get searchfilter;

  /// No description provided for @emergbook.
  ///
  /// In en, this message translates to:
  /// **'Request emergency service'**
  String get emergbook;

  /// No description provided for @bookconfirmed.
  ///
  /// In en, this message translates to:
  /// **'Booking confirmed'**
  String get bookconfirmed;

  /// No description provided for @liveloc.
  ///
  /// In en, this message translates to:
  /// **'Track technician'**
  String get liveloc;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rate the service'**
  String get rating;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Messages & chat'**
  String get chat;

  /// No description provided for @bookpost.
  ///
  /// In en, this message translates to:
  /// **'Bookings / Posts'**
  String get bookpost;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @changepass.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get changepass;

  /// No description provided for @editprf.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editprf;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report a problem'**
  String get report;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get mode;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @paymenttype.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymenttype;

  /// No description provided for @addcard.
  ///
  /// In en, this message translates to:
  /// **'Add card'**
  String get addcard;

  /// No description provided for @newpost.
  ///
  /// In en, this message translates to:
  /// **'New repair request'**
  String get newpost;

  /// No description provided for @postdetails.
  ///
  /// In en, this message translates to:
  /// **'Your post details'**
  String get postdetails;

  /// No description provided for @postoffers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get postoffers;

  /// No description provided for @paymentmethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymentmethod;

  /// No description provided for @qr.
  ///
  /// In en, this message translates to:
  /// **'Pay by QR'**
  String get qr;

  /// No description provided for @paymentfail.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentfail;

  /// No description provided for @digitalinvoice.
  ///
  /// In en, this message translates to:
  /// **'Digital invoice'**
  String get digitalinvoice;

  /// No description provided for @bookfix.
  ///
  /// In en, this message translates to:
  /// **'Book maintenance'**
  String get bookfix;

  /// No description provided for @avaliblework.
  ///
  /// In en, this message translates to:
  /// **'Available work'**
  String get avaliblework;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share the app'**
  String get share;

  /// No description provided for @bonus.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get bonus;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Schedule & tasks'**
  String get calendar;

  /// No description provided for @workerprf.
  ///
  /// In en, this message translates to:
  /// **'Service Provider Profile'**
  String get workerprf;

  /// No description provided for @searchresultdetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get searchresultdetails;

  /// No description provided for @landin1title.
  ///
  /// In en, this message translates to:
  /// **'Skilled work, trusted service — made easy.'**
  String get landin1title;

  /// No description provided for @landin1subtitle.
  ///
  /// In en, this message translates to:
  /// **'Find skilled, reliable workers for your home, office, or business — or get more work opportunities as an independent professional.'**
  String get landin1subtitle;

  /// No description provided for @landin2title.
  ///
  /// In en, this message translates to:
  /// **'How do you want to use San3a?'**
  String get landin2title;

  /// No description provided for @landin2cardtitle1.
  ///
  /// In en, this message translates to:
  /// **'Find a technician'**
  String get landin2cardtitle1;

  /// No description provided for @landin2cardtitle2.
  ///
  /// In en, this message translates to:
  /// **'Explore new work opportunities'**
  String get landin2cardtitle2;

  /// No description provided for @landin2cardsubtitle1.
  ///
  /// In en, this message translates to:
  /// **'Plumbing, electrical, AC maintenance, carpentry, painting, home appliance repair, furniture moving, and more.'**
  String get landin2cardsubtitle1;

  /// No description provided for @landin2cardsubtitle2.
  ///
  /// In en, this message translates to:
  /// **'Create your profile, receive nearby job requests, build your reputation, and get paid securely.'**
  String get landin2cardsubtitle2;

  /// No description provided for @wlandingtitle.
  ///
  /// In en, this message translates to:
  /// **'Get more jobs.'**
  String get wlandingtitle;

  /// No description provided for @wlandingsubtitle.
  ///
  /// In en, this message translates to:
  /// **'San3a connects you with customers who need your skills. Find nearby jobs, send quotes, manage your schedule, and get paid securely — all in one simple app.'**
  String get wlandingsubtitle;

  /// No description provided for @clandingtitle.
  ///
  /// In en, this message translates to:
  /// **'Get the right professional at the right price.'**
  String get clandingtitle;

  /// No description provided for @clandingsubtitle.
  ///
  /// In en, this message translates to:
  /// **'San3a uses AI to help you find the right worker, understand fair prices, and make confident decisions.'**
  String get clandingsubtitle;

  /// No description provided for @landingbtn1.
  ///
  /// In en, this message translates to:
  /// **'Continue >'**
  String get landingbtn1;

  /// No description provided for @landingbtn2.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get landingbtn2;

  /// No description provided for @createaccount.
  ///
  /// In en, this message translates to:
  /// **'Create a San3a account'**
  String get createaccount;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullname;

  /// No description provided for @fullnameex.
  ///
  /// In en, this message translates to:
  /// **'Example: Ahmed Mohamed Ali'**
  String get fullnameex;

  /// No description provided for @phonenumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get phonenumber;

  /// No description provided for @phonenumberex.
  ///
  /// In en, this message translates to:
  /// **'Example: 01xxxxxxxxx'**
  String get phonenumberex;

  /// No description provided for @gmail.
  ///
  /// In en, this message translates to:
  /// **'Email (optional)'**
  String get gmail;

  /// No description provided for @gmailex.
  ///
  /// In en, this message translates to:
  /// **'Example: ahmed@mail.com'**
  String get gmailex;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirmpassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmpassword;

  /// No description provided for @createaccountbtn.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createaccountbtn;

  /// No description provided for @alrhvaccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alrhvaccount;

  /// No description provided for @loginTS.
  ///
  /// In en, this message translates to:
  /// **'Log in to use San3a'**
  String get loginTS;

  /// No description provided for @phoneoremail.
  ///
  /// In en, this message translates to:
  /// **'Mobile or email'**
  String get phoneoremail;

  /// No description provided for @phoneoremailex.
  ///
  /// In en, this message translates to:
  /// **'01xxxxxxxxx or your email'**
  String get phoneoremailex;

  /// No description provided for @rememberme.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberme;

  /// No description provided for @forgetpassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgetpassword;

  /// No description provided for @firsttime.
  ///
  /// In en, this message translates to:
  /// **'First time using the app?'**
  String get firsttime;

  /// No description provided for @createaccoun.
  ///
  /// In en, this message translates to:
  /// **'Sign up now'**
  String get createaccoun;

  /// No description provided for @passwordex.
  ///
  /// In en, this message translates to:
  /// **'Numbers, letters and symbols'**
  String get passwordex;

  /// No description provided for @homewelcomeC.
  ///
  /// In en, this message translates to:
  /// **'Welcome back, Omar'**
  String get homewelcomeC;

  /// No description provided for @homelocation.
  ///
  /// In en, this message translates to:
  /// **'Alexandria'**
  String get homelocation;

  /// No description provided for @homemoney.
  ///
  /// In en, this message translates to:
  /// **'EGP 00.00'**
  String get homemoney;

  /// No description provided for @homesearchhintC.
  ///
  /// In en, this message translates to:
  /// **'What are you looking for? (plumber, electrician)'**
  String get homesearchhintC;

  /// No description provided for @homewelcomeW.
  ///
  /// In en, this message translates to:
  /// **'Welcome back, Aly'**
  String get homewelcomeW;

  /// No description provided for @homesearchhintW.
  ///
  /// In en, this message translates to:
  /// **'Search for a job...'**
  String get homesearchhintW;

  /// No description provided for @homeemserhead.
  ///
  /// In en, this message translates to:
  /// **'Emergency service'**
  String get homeemserhead;

  /// No description provided for @homeemsertitle.
  ///
  /// In en, this message translates to:
  /// **'Technicians ready any time'**
  String get homeemsertitle;

  /// No description provided for @homeemsersubtitle.
  ///
  /// In en, this message translates to:
  /// **'For urgent cases'**
  String get homeemsersubtitle;

  /// No description provided for @homeemserbtn.
  ///
  /// In en, this message translates to:
  /// **'Book emergency now'**
  String get homeemserbtn;

  /// No description provided for @homeaihead.
  ///
  /// In en, this message translates to:
  /// **'✨ Try before you hire'**
  String get homeaihead;

  /// No description provided for @homeaititle.
  ///
  /// In en, this message translates to:
  /// **'Try fixing it yourself'**
  String get homeaititle;

  /// No description provided for @homeaisubtitle.
  ///
  /// In en, this message translates to:
  /// **'Try solving the problem yourself before calling a technician'**
  String get homeaisubtitle;

  /// No description provided for @homeaibtn.
  ///
  /// In en, this message translates to:
  /// **'Try it yourself'**
  String get homeaibtn;

  /// No description provided for @homeposts.
  ///
  /// In en, this message translates to:
  /// **'Worker posts'**
  String get homeposts;

  /// No description provided for @homepostsub.
  ///
  /// In en, this message translates to:
  /// **'See technicians showcasing their work and services.'**
  String get homepostsub;

  /// No description provided for @homeposttitle.
  ///
  /// In en, this message translates to:
  /// **'Full apartment plumbing maintenance and renovation'**
  String get homeposttitle;

  /// No description provided for @homepostbtn.
  ///
  /// In en, this message translates to:
  /// **'Post details'**
  String get homepostbtn;

  /// No description provided for @homepostprf.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Ramadan'**
  String get homepostprf;

  /// No description provided for @homepostprfloc.
  ///
  /// In en, this message translates to:
  /// **'• Cairo'**
  String get homepostprfloc;

  /// No description provided for @homepostsviewall.
  ///
  /// In en, this message translates to:
  /// **'View all work'**
  String get homepostsviewall;

  /// No description provided for @changelocaddloc.
  ///
  /// In en, this message translates to:
  /// **'Request to another location'**
  String get changelocaddloc;

  /// No description provided for @changeloccity.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get changeloccity;

  /// No description provided for @changelocaddress.
  ///
  /// In en, this message translates to:
  /// **'5480 Alexandria'**
  String get changelocaddress;

  /// No description provided for @changelocbtn.
  ///
  /// In en, this message translates to:
  /// **'Confirm location'**
  String get changelocbtn;

  /// No description provided for @addmoneysub.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount you want to add to your wallet balance'**
  String get addmoneysub;

  /// No description provided for @addmoneyamount.
  ///
  /// In en, this message translates to:
  /// **'Top-up amount'**
  String get addmoneyamount;

  /// No description provided for @addmoneyamounttextfeild.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get addmoneyamounttextfeild;

  /// No description provided for @addmoneytype.
  ///
  /// In en, this message translates to:
  /// **'Choose a top-up method'**
  String get addmoneytype;

  /// No description provided for @addmoneyaddcard.
  ///
  /// In en, this message translates to:
  /// **'+ Add card'**
  String get addmoneyaddcard;

  /// No description provided for @addmoneybtn.
  ///
  /// In en, this message translates to:
  /// **'Top up balance'**
  String get addmoneybtn;

  /// No description provided for @searchfilters1.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get searchfilters1;

  /// No description provided for @searchfilters2.
  ///
  /// In en, this message translates to:
  /// **'Alexandria'**
  String get searchfilters2;

  /// No description provided for @searchnoresults.
  ///
  /// In en, this message translates to:
  /// **'No maintenance services in Alexandria yet'**
  String get searchnoresults;

  /// No description provided for @searchnoresultssudgestion.
  ///
  /// In en, this message translates to:
  /// **'You might find some in other governorates'**
  String get searchnoresultssudgestion;

  /// No description provided for @searchnoresultsbtn.
  ///
  /// In en, this message translates to:
  /// **'Show all governorates'**
  String get searchnoresultsbtn;

  /// No description provided for @searchcardtitle.
  ///
  /// In en, this message translates to:
  /// **'Home electrician — installation & maintenance'**
  String get searchcardtitle;

  /// No description provided for @searchcardprice.
  ///
  /// In en, this message translates to:
  /// **'EGP 260'**
  String get searchcardprice;

  /// No description provided for @searchcardprf.
  ///
  /// In en, this message translates to:
  /// **'Mohamed Ahmed'**
  String get searchcardprf;

  /// No description provided for @searchcardprfdesc.
  ///
  /// In en, this message translates to:
  /// **'Home electrician | El Asafra'**
  String get searchcardprfdesc;

  /// No description provided for @searchfilterorder.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get searchfilterorder;

  /// No description provided for @searchfilterorder1.
  ///
  /// In en, this message translates to:
  /// **'Highest rated'**
  String get searchfilterorder1;

  /// No description provided for @searchfilterorder2.
  ///
  /// In en, this message translates to:
  /// **'Nearest'**
  String get searchfilterorder2;

  /// No description provided for @searchfilterorder3.
  ///
  /// In en, this message translates to:
  /// **'Lowest price'**
  String get searchfilterorder3;

  /// No description provided for @searchfiltergovernate.
  ///
  /// In en, this message translates to:
  /// **'Governorate'**
  String get searchfiltergovernate;

  /// No description provided for @searchfiltercity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get searchfiltercity;

  /// No description provided for @searchfilterapplybtn.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get searchfilterapplybtn;

  /// No description provided for @searchfilterresetbtn.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get searchfilterresetbtn;

  /// No description provided for @searchresultdetailsestimatedprice.
  ///
  /// In en, this message translates to:
  /// **'Inspection price'**
  String get searchresultdetailsestimatedprice;

  /// No description provided for @searchresultdetailsworkerstatus.
  ///
  /// In en, this message translates to:
  /// **'Available for work'**
  String get searchresultdetailsworkerstatus;

  /// No description provided for @searchresultdetailsdesc.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get searchresultdetailsdesc;

  /// No description provided for @searchresultdetailsdescrip.
  ///
  /// In en, this message translates to:
  /// **'Professional painter for surface prep, finishing, and wall painting, plus all types of modern decor such as installing panelling, chipboard, wood substitutes, marble substitutes, and stone substitutes. Also handles all paints and decorative finishes like stucco, antique, and velvet, with all decor types at a fair price, high quality, and fixed appointments.'**
  String get searchresultdetailsdescrip;

  /// No description provided for @searchresultdetailsworkerspec.
  ///
  /// In en, this message translates to:
  /// **'What exactly he does'**
  String get searchresultdetailsworkerspec;

  /// No description provided for @searchresultdetailsworkerspec1.
  ///
  /// In en, this message translates to:
  /// **'Wall and ceiling painting'**
  String get searchresultdetailsworkerspec1;

  /// No description provided for @searchresultdetailsworkerspec2.
  ///
  /// In en, this message translates to:
  /// **'Wallpaper installation'**
  String get searchresultdetailsworkerspec2;

  /// No description provided for @searchresultdetailsworkerspec3.
  ///
  /// In en, this message translates to:
  /// **'Velvet and suede finishes'**
  String get searchresultdetailsworkerspec3;

  /// No description provided for @searchresultdetailsworkerspec4.
  ///
  /// In en, this message translates to:
  /// **'Wooden door painting'**
  String get searchresultdetailsworkerspec4;

  /// No description provided for @searchresultdetailsworkerspec5.
  ///
  /// In en, this message translates to:
  /// **'Damp and peeling treatment'**
  String get searchresultdetailsworkerspec5;

  /// No description provided for @searchresultdetailsworkerspec6.
  ///
  /// In en, this message translates to:
  /// **'Wall insulation'**
  String get searchresultdetailsworkerspec6;

  /// No description provided for @searchresultdetailsworkerspec7.
  ///
  /// In en, this message translates to:
  /// **'Modern murals and decor'**
  String get searchresultdetailsworkerspec7;

  /// No description provided for @searchresultdetailsbtn.
  ///
  /// In en, this message translates to:
  /// **'Book the service now'**
  String get searchresultdetailsbtn;

  /// No description provided for @workerprfname.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Mohamed'**
  String get workerprfname;

  /// No description provided for @workerprfloc.
  ///
  /// In en, this message translates to:
  /// **'Moharam Bek, Alexandria'**
  String get workerprfloc;

  /// No description provided for @workerprfbookbtn.
  ///
  /// In en, this message translates to:
  /// **'Book now'**
  String get workerprfbookbtn;

  /// No description provided for @workerprfchatbtn.
  ///
  /// In en, this message translates to:
  /// **'Chat with technician'**
  String get workerprfchatbtn;

  /// No description provided for @workerprfrate.
  ///
  /// In en, this message translates to:
  /// **'4.9'**
  String get workerprfrate;

  /// No description provided for @workerprfcompser.
  ///
  /// In en, this message translates to:
  /// **'142'**
  String get workerprfcompser;

  /// No description provided for @workerprfexp.
  ///
  /// In en, this message translates to:
  /// **'+5'**
  String get workerprfexp;

  /// No description provided for @workerprfratetitle.
  ///
  /// In en, this message translates to:
  /// **'Years of experience'**
  String get workerprfratetitle;

  /// No description provided for @workerprfcompsertitle.
  ///
  /// In en, this message translates to:
  /// **'Services completed'**
  String get workerprfcompsertitle;

  /// No description provided for @workerprfexptitle.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get workerprfexptitle;

  /// No description provided for @workerprfabout.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get workerprfabout;

  /// No description provided for @workerprfabout1.
  ///
  /// In en, this message translates to:
  /// **'Wall and ceiling painting'**
  String get workerprfabout1;

  /// No description provided for @workerprfabout2.
  ///
  /// In en, this message translates to:
  /// **'Damp and peeling treatment'**
  String get workerprfabout2;

  /// No description provided for @workerprfabout3.
  ///
  /// In en, this message translates to:
  /// **'Modern murals and decor'**
  String get workerprfabout3;

  /// No description provided for @workerprfprevwork.
  ///
  /// In en, this message translates to:
  /// **'Previous work'**
  String get workerprfprevwork;

  /// No description provided for @workerrating.
  ///
  /// In en, this message translates to:
  /// **'Customer reviews'**
  String get workerrating;

  /// No description provided for @workerratingnone.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet'**
  String get workerratingnone;

  /// No description provided for @workerratingnonesub.
  ///
  /// In en, this message translates to:
  /// **'Write the first review after the service is done.'**
  String get workerratingnonesub;

  /// No description provided for @bookserviceaddphoto.
  ///
  /// In en, this message translates to:
  /// **'Attach a photo of the problem (optional)'**
  String get bookserviceaddphoto;

  /// No description provided for @bookserviceaddphotosub.
  ///
  /// In en, this message translates to:
  /// **'Tap here to upload or take a clear photo'**
  String get bookserviceaddphotosub;

  /// No description provided for @bookserviceaidesc.
  ///
  /// In en, this message translates to:
  /// **'AI problem diagnosis'**
  String get bookserviceaidesc;

  /// No description provided for @bookserviceaidescsub.
  ///
  /// In en, this message translates to:
  /// **'Help us understand the problem and suggest the likely cause'**
  String get bookserviceaidescsub;

  /// No description provided for @bookserviceaidescbtn.
  ///
  /// In en, this message translates to:
  /// **'Diagnose the problem'**
  String get bookserviceaidescbtn;

  /// No description provided for @bookservicelocdesc.
  ///
  /// In en, this message translates to:
  /// **'Detailed problem location *'**
  String get bookservicelocdesc;

  /// No description provided for @bookservicelocdescex.
  ///
  /// In en, this message translates to:
  /// **'Alexandria, El Mosheer Street'**
  String get bookservicelocdescex;

  /// No description provided for @bookserviceprobdesc.
  ///
  /// In en, this message translates to:
  /// **'Write a description of the problem *'**
  String get bookserviceprobdesc;

  /// No description provided for @bookserviceprobdescex.
  ///
  /// In en, this message translates to:
  /// **'Severe leak in the main drain pipe under the kitchen sink; water is flooding the floor right now and the water valve is not working fully.'**
  String get bookserviceprobdescex;

  /// No description provided for @bookserviceaiprobdesc.
  ///
  /// In en, this message translates to:
  /// **'Describe your problem precisely'**
  String get bookserviceaiprobdesc;

  /// No description provided for @bookserviceaiprobdescsub.
  ///
  /// In en, this message translates to:
  /// **'Use AI to generate a clear description of your problem'**
  String get bookserviceaiprobdescsub;

  /// No description provided for @bookserviceaiprobdescsubbtn.
  ///
  /// In en, this message translates to:
  /// **'Generate description'**
  String get bookserviceaiprobdescsubbtn;

  /// No description provided for @bookserviceimportance.
  ///
  /// In en, this message translates to:
  /// **'Urgency and priority *'**
  String get bookserviceimportance;

  /// No description provided for @bookservicebookbtn.
  ///
  /// In en, this message translates to:
  /// **'Choose a time'**
  String get bookservicebookbtn;

  /// No description provided for @bookserviceembtn.
  ///
  /// In en, this message translates to:
  /// **'Book emergency now'**
  String get bookserviceembtn;

  /// No description provided for @eraseall.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get eraseall;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @plumber.
  ///
  /// In en, this message translates to:
  /// **'Plumbing'**
  String get plumber;

  /// No description provided for @painter.
  ///
  /// In en, this message translates to:
  /// **'Painting'**
  String get painter;

  /// No description provided for @carpenter.
  ///
  /// In en, this message translates to:
  /// **'Carpentry'**
  String get carpenter;

  /// No description provided for @ac.
  ///
  /// In en, this message translates to:
  /// **'Air conditioning'**
  String get ac;

  /// No description provided for @elecrician.
  ///
  /// In en, this message translates to:
  /// **'Electrical'**
  String get elecrician;
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
