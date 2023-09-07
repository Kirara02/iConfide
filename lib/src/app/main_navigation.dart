import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/features/class/view/class_page.dart';
import 'package:iconfide/src/features/home/view/home_page.dart';
import 'package:iconfide/src/features/private_chat/view/list_private_chat_page.dart';
import 'package:iconfide/src/features/video/view/video_page.dart';
import 'package:iconfide/src/features/workshop/view/workshop_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../config/constant.dart';
import '../config/theme/colors.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Apakah anda yakin?'),
            content: const Text('Anda ingin keluar dari aplikasi'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Tidak'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Ya'),
              ),
            ],
          ),
        )) ??
        false;
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const ListPrivateChatPage(),
      const VideoPage(),
      const WorkshopPage(),
      const ClassPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColors,
          ),
          child: SvgPicture.asset(
            Assets.icons.berandaActive.path,
          ),
        ),
        inactiveIcon: SvgPicture.asset(Assets.icons.berandaInactive.path),
        title: "Beranda",
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppConstants.kFontSizeS,
        ),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: UIColors.text,
        activeColorSecondary: UIColors.text,
        inactiveColorSecondary: UIColors.text,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColors,
          ),
          child: SvgPicture.asset(
            Assets.icons.privateChatActive.path,
          ),
        ),
        inactiveIcon: SvgPicture.asset(Assets.icons.privateChatInactive.path),
        title: "Private Chat",
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppConstants.kFontSizeS,
        ),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: UIColors.text,
        activeColorSecondary: UIColors.text,
        inactiveColorSecondary: UIColors.text,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColors,
          ),
          child: SvgPicture.asset(
            Assets.icons.videoActive.path,
          ),
        ),
        inactiveIcon: SvgPicture.asset(Assets.icons.videoInactive.path),
        title: "Video",
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppConstants.kFontSizeS,
        ),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: UIColors.text,
        activeColorSecondary: UIColors.text,
        inactiveColorSecondary: UIColors.text,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColors,
          ),
          child: SvgPicture.asset(
            Assets.icons.shoppingCartActive.path,
            height: 20,
          ),
        ),
        inactiveIcon: SvgPicture.asset(Assets.icons.shoppingCartInactive.path),
        title: "Workshop",
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppConstants.kFontSizeS,
        ),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: UIColors.text,
        activeColorSecondary: UIColors.text,
        inactiveColorSecondary: UIColors.text,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColors,
          ),
          child: SvgPicture.asset(
            Assets.icons.classActive.path,
          ),
        ),
        inactiveIcon: SvgPicture.asset(Assets.icons.classInactive.path),
        title: "Class",
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: AppConstants.kFontSizeS,
        ),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: UIColors.text,
        activeColorSecondary: UIColors.text,
        inactiveColorSecondary: UIColors.text,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: UIColors.white,
        handleAndroidBackButtonPress: true,
        popAllScreensOnTapAnyTabs: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        hideNavigationBar: false,
        onItemSelected: (value) {
          log(value.toString());
        },
        onWillPop: (p0) => _onWillPop(),
        // hideNavigationBar: _hideNavBar,
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.easeInSine,
          duration: Duration(milliseconds: 300),
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
