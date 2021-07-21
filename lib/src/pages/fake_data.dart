import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui_practice/src/models/hotel.dart';
import 'package:flutter_ui_practice/src/models/menu_item.dart';
import 'package:flutter_ui_practice/src/models/place_item.dart';
import 'package:flutter_ui_practice/src/models/sub_menu_item.dart';
import 'package:flutter_ui_practice/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final fakeMenus = [
  MenuItem(id: 1, title: 'profile', icon: Feather.user, route: Routes.PROFILE),
  MenuItem(
      id: 2,
      title: 'authentication',
      icon: Feather.lock,
      route: Routes.AUTHENTICATION),
  MenuItem(
      id: 3, title: 'setting', icon: Feather.settings, route: Routes.SETTING),
  MenuItem(id: 4, title: 'lists', icon: Feather.list, route: Routes.LIST),
  MenuItem(
      id: 5, title: 'invitation', icon: Feather.list, route: Routes.INVITATION),
  MenuItem(
      id: 6,
      title: 'miscellaneous',
      icon: Icons.label_important,
      route: Routes.INVITATION),
  MenuItem(
      id: 7,
      title: 'onBoardingPage',
      icon: Icons.info,
      route: Routes.ONBOARDING),
  MenuItem(
    id: 8,
    title: 'navigation',
    icon: Icons.menu,
    route: Routes.NAVIGATION,
  ),
  MenuItem(
    id: 9,
    title: 'blog',
    icon: Icons.fullscreen,
    route: Routes.BLOGS,
  ),
  MenuItem(
      id: 10,
      title: 'hotel',
      icon: FontAwesomeIcons.hotel,
      route: Routes.HOTELPAGE),
  MenuItem(
      id: 11, title: 'todo', icon: FontAwesomeIcons.tasks, route: Routes.TODO),
  MenuItem(
      id: 12,
      title: 'uikits',
      icon: Icons.account_balance_wallet,
      route: Routes.UIKITS),
  MenuItem(
      id: 13,
      title: 'animation',
      icon: FontAwesomeIcons.truck,
      route: Routes.UIKITS),
];

final fakeSubMenus = [
  //DATA SUBMENU PROFILE
  SubMenuItem(id: 1, title: 'profile1', route: Routes.PROFILE1, menuItemId: 1),

  //DATA SUBMENU AUTHENTICATION
  SubMenuItem(id: 2, title: 'login1', route: Routes.LOGIN1, menuItemId: 2),
  SubMenuItem(id: 16, title: 'login9', route: Routes.LOGIN9, menuItemId: 2),
  SubMenuItem(id: 13, title: 'authPage1', route: Routes.AUTH1, menuItemId: 2),
  SubMenuItem(id: 14, title: 'authPage2', route: Routes.AUTH2, menuItemId: 2),
  SubMenuItem(id: 15, title: 'authPage3', route: Routes.AUTH3, menuItemId: 2),

  //DATA SUBMENU SETTING
  SubMenuItem(id: 3, title: 'setting1', route: Routes.SETTING1, menuItemId: 3),
  SubMenuItem(id: 4, title: 'setting2', route: Routes.SETTING2, menuItemId: 3),
  SubMenuItem(id: 5, title: 'setting3', route: Routes.SETTING3, menuItemId: 3),
  SubMenuItem(id: 6, title: 'setting4', route: Routes.SETTING4, menuItemId: 3),
  SubMenuItem(
      id: 7,
      title: 'profileSetting',
      route: Routes.PROFILE_SETTING,
      menuItemId: 3),

  //DATA SUBMENU LIST
  SubMenuItem(id: 8, title: 'list1', route: Routes.LIST1, menuItemId: 4),
  SubMenuItem(id: 9, title: 'list2', route: Routes.LIST2, menuItemId: 4),

  //DATA SUBMENU INVITATION
  SubMenuItem(id: 10, title: 'authPage', route: Routes.AUTH, menuItemId: 5),
  SubMenuItem(
      id: 11, title: 'landingPage', route: Routes.LANDING, menuItemId: 5),
  SubMenuItem(
      id: 12, title: 'detailsPage', route: Routes.DETAILS, menuItemId: 5),

  //DATA SUBMENU MISCELLANEOUS
  SubMenuItem(id: 17, title: 'otpPage', route: Routes.OTPPAGE, menuItemId: 6),
  SubMenuItem(
      id: 18, title: 'slidersPage', route: Routes.SLIDERS, menuItemId: 6),
  SubMenuItem(
      id: 18,
      title: 'musicPlayerPage2',
      route: Routes.MUSICPLAYER2,
      menuItemId: 6),

  //DATA SUBMENU ONBOARDING
  SubMenuItem(
      id: 19,
      title: 'onBoardingPage2',
      route: Routes.ONBOARDING2,
      menuItemId: 7),
  SubMenuItem(
      id: 20,
      title: 'onBoardingPage3',
      route: Routes.ONBOARDING3,
      menuItemId: 7),
  SubMenuItem(
      id: 21,
      title: 'onBoardingPage4',
      route: Routes.ONBOARDING4,
      menuItemId: 7),
  SubMenuItem(
      id: 22,
      title: 'onBoardingPage5',
      route: Routes.ONBOARDING5,
      menuItemId: 7),
  SubMenuItem(
      id: 23,
      title: 'onBoardingPage6',
      route: Routes.ONBOARDING6,
      menuItemId: 7),

  //DATA SUBMENU NAVIGATION
  SubMenuItem(
      id: 24, title: 'lightDrawer', route: Routes.LIGHTDRAWER, menuItemId: 8),

  //DATA SUBMENU BLOG
  SubMenuItem(
      id: 25, title: 'blogNewsHome', route: Routes.NEWSHOME, menuItemId: 9),
  SubMenuItem(
      id: 26,
      title: 'sportNewsHome',
      route: Routes.SPORTNEWSHOME,
      menuItemId: 9),
  SubMenuItem(id: 27, title: 'article2', route: Routes.ARTICLE2, menuItemId: 9),
  SubMenuItem(id: 28, title: 'article1', route: Routes.ARTICLE1, menuItemId: 9),
  SubMenuItem(
      id: 29, title: 'bloghome1', route: Routes.BLOGHOME1, menuItemId: 9),

  //DATA SUBMENU HOTEL
  SubMenuItem(
      id: 30, title: 'hotelHome', route: Routes.HOTELHOME, menuItemId: 10),
  SubMenuItem(
      id: 31,
      title: 'hotelBooking',
      route: Routes.HOTELBOOKING,
      menuItemId: 10),
  SubMenuItem(
      id: 32, title: 'roomDetails', route: Routes.ROOMDETAILS, menuItemId: 10),

  //DATA TODOHOME
  SubMenuItem(
      id: 33, title: 'todohome3', route: Routes.TODOHOME3, menuItemId: 11),

  //DATA UI KITS
  SubMenuItem(id: 34, title: 'grocery', route: Routes.GROCERY, menuItemId: 12),
  SubMenuItem(
      id: 35, title: 'plantapp', route: Routes.PLANTAPP, menuItemId: 12),
  //DATA ANIMATION
  SubMenuItem(
      id: 36, title: 'heroanimation', route: Routes.HERO, menuItemId: 13),
  SubMenuItem(
      id: 37,
      title: 'animatedlistone',
      route: Routes.ANIMATEDLISTONE,
      menuItemId: 13),
  SubMenuItem(
      id: 38,
      title: 'animationbottombar',
      route: Routes.ANIMATIONBOTTOMBAR,
      menuItemId: 13),
  SubMenuItem(
      id: 39, title: 'fancyappbar', route: Routes.FANCYAPPBAR, menuItemId: 13),
];

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/room1.jpg',
    title: 'Ichha Hotel',
    description: 'A Four Start Hotel in Bara',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/room2.jpg',
    title: 'Hotel Merriot',
    description: 'A five star Hotelin Kathmandu',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/room3.jpg',
    title: 'Yak and Yati',
    description: 'A five Star hotel in Kathmandu',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/room4.jpg',
    title: 'Hotel Star',
    description: 'A Five star hotel in thamel',
    price: 180,
    rating: 4.5,
  )
];

final List<Map> schoolLists = [
  {
    "name": "Edgewick Scchol",
    "location": "572 Statan NY, 12483",
    "type": "Higher Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
  },
  {
    "name": "Xaviers International",
    "location": "234 Road Kathmandu, Nepal",
    "type": "Higher Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
  },
  {
    "name": "Kinder Garden",
    "location": "572 Statan NY, 12483",
    "type": "Play Group School",
    "logoText":
        "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
  },
  {
    "name": "WilingTon Cambridge",
    "location": "Kasai Pantan NY, 12483",
    "type": "Lower Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
  },
  {
    "name": "Fredik Panlon",
    "location": "572 Statan NY, 12483",
    "type": "Higher Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
  },
  {
    "name": "Whitehouse International",
    "location": "234 Road Kathmandu, Nepal",
    "type": "Higher Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
  },
  {
    "name": "Haward Play",
    "location": "572 Statan NY, 12483",
    "type": "Play Group School",
    "logoText":
        "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
  },
  {
    "name": "Campare Handeson",
    "location": "Kasai Pantan NY, 12483",
    "type": "Lower Secondary School",
    "logoText":
        "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
  },
];

final List<String> fakeImage = [
  "https://images.pexels.com/photos/672142/pexels-photo-672142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1736222/pexels-photo-1736222.jpeg?cs=srgb&dl=adult-adventure-backpacker-1736222.jpg&fm=jpg",
  "https://images.pexels.com/photos/62403/pexels-photo-62403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1319515/pexels-photo-1319515.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
];

final List<PlaceItem> placeItems = [
  PlaceItem(
      title: 'Gardens By the Bay',
      catagory: "Gardens",
      place: "Singapore",
      ratings: "5.0/80",
      discount: "10 %",
      image:
          "https://images.pexels.com/photos/672142/pexels-photo-672142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  PlaceItem(
      title: 'Singapore Zoo',
      catagory: "Parks",
      place: "Singapore",
      ratings: "4.5/90",
      discount: null,
      image:
          "https://images.pexels.com/photos/1736222/pexels-photo-1736222.jpeg?cs=srgb&dl=adult-adventure-backpacker-1736222.jpg&fm=jpg"),
  PlaceItem(
      title: 'National Orchid Garden',
      catagory: "Parks",
      place: "Singapore",
      ratings: "4.5/90",
      discount: "12 %",
      image:
          "https://images.pexels.com/photos/62403/pexels-photo-62403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  PlaceItem(
      title: 'Godabari',
      catagory: "Parks",
      place: "Singapore",
      ratings: "4.5/90",
      discount: "15 %",
      image:
          "https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  PlaceItem(
      title: 'Rara National Park',
      catagory: "Parks",
      place: "Singapore",
      ratings: "4.5/90",
      discount: "12 %",
      image:
          "https://images.pexels.com/photos/1319515/pexels-photo-1319515.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
];

const List<String> avatars = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Fdev_damodar.jpg?alt=media&token=aaf47b41-3485-4bab-bcb6-2e472b9afee6',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Fdev_sudip.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Fdev_sid.png?alt=media',
];

//grocery app
const String brocoli =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fbrocoli.png?alt=media';
const String cabbage =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fcabbage.png?alt=media';
const String capsicum =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fcapsicum.png?alt=media';
const String chatIcon =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fchat_icon.png?alt=media';
const String deliveryIcon =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fdelivery.png?alt=media';
const String fruit =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Ffruit.png?alt=media';
const String homeIcon =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fhome_icon.png?alt=media';
const String mango =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fmango.png?alt=media';
const String mortar =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fmortar.png?alt=media';
const String pineapple =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fpineapple.png?alt=media';
const String vegetables =
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/grocery%2Fvegetables.png?alt=mediroom4ia';

const INVITE_ILLUSTRATION =
    "https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Finvite.png?alt=media";

const String bike =
    "https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/bike%2Fbike1.jpg?alt=media";

const String room4 = "assets/hotel/room4.jpg";

const List<String> introIllus = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F2.png?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F3.png?alt=media'
];

const List<String> images = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F2.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F3.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F5.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
];
