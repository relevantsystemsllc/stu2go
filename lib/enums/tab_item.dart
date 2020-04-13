import 'package:flutter/material.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';

enum TabItem { search, bookReq, favourites, settings }

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.search: TabItemData(
      title: 'Jobs',
      icon: MyNavBarIcons.magnifying_glass_browser_copy,
    ),
    TabItem.bookReq:
        TabItemData(title: 'Entries', icon: MyNavBarIcons.calendar_2),
    TabItem.favourites:
        TabItemData(title: 'Account', icon: MyNavBarIcons.star_2),
    TabItem.settings:
        TabItemData(title: 'Account', icon: MyNavBarIcons.settings),
  };
}
