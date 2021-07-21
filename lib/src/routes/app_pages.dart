import 'package:flutter_ui_practice/src/app.dart';
import 'package:flutter_ui_practice/src/pages/Invitation/invitation_page.dart';
import 'package:flutter_ui_practice/src/pages/Invitation/pages/auth_page.dart';
import 'package:flutter_ui_practice/src/pages/Invitation/pages/details_page.dart';
import 'package:flutter_ui_practice/src/pages/Invitation/pages/landing_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/grocery_navigation_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/screens/plant_home_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/ui_kits_page.dart';
import 'package:flutter_ui_practice/src/pages/animation/animation.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/animated-list-one/animated_list_one.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/animation-bottom-bar/animation_bottom_bar.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/fancy-app-bar/fancy_app_bar.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/hero-animation/hero_animation.dart';
import 'package:flutter_ui_practice/src/pages/authentication/authentication.dart';
import 'package:flutter_ui_practice/src/pages/authentication/pages/auth_page_1.dart';
import 'package:flutter_ui_practice/src/pages/authentication/pages/auth_page_2.dart';
import 'package:flutter_ui_practice/src/pages/authentication/pages/auth_page_3.dart';
import 'package:flutter_ui_practice/src/pages/authentication/pages/login_page_1.dart';
import 'package:flutter_ui_practice/src/pages/authentication/pages/login_page_9.dart';
import 'package:flutter_ui_practice/src/pages/blogs/blog_page.dart';
import 'package:flutter_ui_practice/src/pages/blogs/pages/article_page_1.dart';
import 'package:flutter_ui_practice/src/pages/blogs/pages/article_page_2.dart';
import 'package:flutter_ui_practice/src/pages/blogs/pages/blog_home_page_1.dart';
import 'package:flutter_ui_practice/src/pages/blogs/pages/blog_newsHome_page.dart';
import 'package:flutter_ui_practice/src/pages/blogs/pages/sport_newsHome_page.dart';
import 'package:flutter_ui_practice/src/pages/hotels/hotel_page.dart';
import 'package:flutter_ui_practice/src/pages/hotels/pages/hotel_booking_homepage.dart';
import 'package:flutter_ui_practice/src/pages/hotels/pages/hotel_home_page.dart';
import 'package:flutter_ui_practice/src/pages/hotels/pages/room_details_page.dart';
import 'package:flutter_ui_practice/src/pages/lists/list_page.dart';
import 'package:flutter_ui_practice/src/pages/lists/pages/list_page_1.dart';
import 'package:flutter_ui_practice/src/pages/lists/pages/list_page_2.dart';
import 'package:flutter_ui_practice/src/pages/miscellaneous/miscellaneous_page.dart';
import 'package:flutter_ui_practice/src/pages/miscellaneous/pages/music_player_page_2.dart';
import 'package:flutter_ui_practice/src/pages/miscellaneous/pages/otp_page.dart';
import 'package:flutter_ui_practice/src/pages/miscellaneous/pages/sliders_page.dart';
import 'package:flutter_ui_practice/src/pages/navigation/navigation_page.dart';
import 'package:flutter_ui_practice/src/pages/navigation/pages/light_drawer_page.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/onboarding_page.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/pages/onboarding_page_2.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/pages/onboarding_page_3.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/pages/onboarding_page_4.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/pages/onboarding_page_5.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/pages/onboarding_page_6.dart';
import 'package:flutter_ui_practice/src/pages/profile/pages/profile_page_1.dart';
import 'package:flutter_ui_practice/src/pages/profile/profile_page.dart';
import 'package:flutter_ui_practice/src/pages/setting/pages/profile_setting_page.dart';
import 'package:flutter_ui_practice/src/pages/setting/pages/setting_page_1.dart';
import 'package:flutter_ui_practice/src/pages/setting/pages/setting_page_2.dart';
import 'package:flutter_ui_practice/src/pages/setting/pages/setting_page_3.dart';
import 'package:flutter_ui_practice/src/pages/setting/pages/setting_page_4.dart';
import 'package:flutter_ui_practice/src/pages/setting/setting_page.dart';
import 'package:flutter_ui_practice/src/pages/todo/pages/todo_home_page_3.dart';
import 'package:flutter_ui_practice/src/pages/todo/todo_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(name: Routes.ROOT, page: () => MyApp(), children: []),

    //AUTHENTICATION PAGES
    GetPage(
        name: Routes.AUTHENTICATION,
        page: () => Authentication(),
        children: []),
    GetPage(name: Routes.LOGIN1, page: () => LoginPage(), children: []),
    GetPage(name: Routes.LOGIN9, page: () => LoginPage9(), children: []),
    GetPage(name: Routes.AUTH1, page: () => AuthPage1(), children: []),
    GetPage(name: Routes.AUTH2, page: () => AuthPage2(), children: []),
    GetPage(name: Routes.AUTH3, page: () => AuthPage3(), children: []),

    //PROFILE PAGES
    GetPage(name: Routes.PROFILE, page: () => ProfilePage(), children: []),
    GetPage(name: Routes.PROFILE1, page: () => ProfilePage1(), children: []),

    //SETTING PAGES
    GetPage(name: Routes.SETTING, page: () => SettingPage(), children: []),
    GetPage(name: Routes.SETTING1, page: () => SettingPage1(), children: []),
    GetPage(name: Routes.SETTING2, page: () => SettingPage2(), children: []),
    GetPage(name: Routes.SETTING3, page: () => SettingPage3(), children: []),
    GetPage(name: Routes.SETTING4, page: () => SettingPage4(), children: []),
    GetPage(
        name: Routes.PROFILE_SETTING,
        page: () => ProfileSettingPage(),
        children: []),

    //LIST PAGES
    GetPage(name: Routes.LIST, page: () => ListPage(), children: []),
    GetPage(name: Routes.LIST1, page: () => ListPage1(), children: []),
    GetPage(name: Routes.LIST2, page: () => ListPage2(), children: []),

    //INVITATION PAGES
    GetPage(
        name: Routes.INVITATION, page: () => InvitationPage(), children: []),
    GetPage(name: Routes.AUTH, page: () => AuthPage(), children: []),
    GetPage(name: Routes.LANDING, page: () => LandingPage(), children: []),
    GetPage(name: Routes.DETAILS, page: () => DetailsPage(), children: []),

    //MISCELLANEOUS PAGES
    GetPage(
        name: Routes.MISCELLANEOUS,
        page: () => MiscellaneousPage(),
        children: []),
    GetPage(name: Routes.OTPPAGE, page: () => OtpPage(), children: []),
    GetPage(name: Routes.SLIDERS, page: () => SlidersPage(), children: []),
    GetPage(
        name: Routes.MUSICPLAYER2,
        page: () => MusicPlayerPage2(),
        children: []),

    //ONBOARDING PAGES
    GetPage(
        name: Routes.ONBOARDING, page: () => OnBoardingPage(), children: []),
    GetPage(
        name: Routes.ONBOARDING2, page: () => OnBoardingPage2(), children: []),
    GetPage(
        name: Routes.ONBOARDING3, page: () => OnBoardingPage3(), children: []),
    GetPage(
        name: Routes.ONBOARDING4, page: () => OnBoardingPage4(), children: []),
    GetPage(
        name: Routes.ONBOARDING5, page: () => OnBoardingPage5(), children: []),
    GetPage(
        name: Routes.ONBOARDING6, page: () => OnBoardingPage6(), children: []),

    //NAVIGATION PAGES
    GetPage(
        name: Routes.NAVIGATION, page: () => NavigationPage(), children: []),
    GetPage(
        name: Routes.LIGHTDRAWER, page: () => LightDrawerPage(), children: []),

    //BLOG PAGES
    GetPage(name: Routes.BLOGS, page: () => BlogsPage(), children: []),
    GetPage(
        name: Routes.NEWSHOME, page: () => BlogNewsHomePage(), children: []),
    GetPage(
        name: Routes.SPORTNEWSHOME,
        page: () => SportNewsHomePage(),
        children: []),
    GetPage(name: Routes.ARTICLE2, page: () => ArticlePage2(), children: []),
    GetPage(name: Routes.ARTICLE1, page: () => ArticlePage1(), children: []),
    GetPage(name: Routes.BLOGHOME1, page: () => BlogHomePage1(), children: []),

    //HOTEL PAGES
    GetPage(name: Routes.HOTELPAGE, page: () => HotelPage(), children: []),
    GetPage(
        name: Routes.HOTELBOOKING,
        page: () => HotelBookingHomePage(),
        children: []),
    GetPage(name: Routes.HOTELHOME, page: () => HotelHomePage(), children: []),
    GetPage(
        name: Routes.ROOMDETAILS, page: () => RoomDetailsPage(), children: []),

    //HOME TODOHOME PAGES
    GetPage(name: Routes.TODO, page: () => TodoPage(), children: []),
    GetPage(name: Routes.TODOHOME3, page: () => TodoHomePage3(), children: []),

    //UI KITS PAGES
    GetPage(name: Routes.UIKITS, page: () => UiKitsPage(), children: []),
    GetPage(
        name: Routes.GROCERY,
        page: () => GroceryNavigationPage(),
        children: []),
    GetPage(name: Routes.PLANTAPP, page: () => PlantHomePage(), children: []),

    //ANIMATION PAGES
    GetPage(name: Routes.ANIMATION, page: () => Animation(), children: []),
    GetPage(name: Routes.HERO, page: () => HeroAnimation(), children: []),
    GetPage(name: Routes.ANIMATEDLISTONE, page: () => AnimatedListOne(), children: []),
    GetPage(name: Routes.ANIMATIONBOTTOMBAR, page: () => AnimationBottomBar(), children: []),
    GetPage(name: Routes.FANCYAPPBAR, page: () => FancyAppBar(), children: []),
  ];
}
