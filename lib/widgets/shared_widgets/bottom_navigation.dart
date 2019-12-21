import 'package:flutter/material.dart';
import 'package:stu2go_flutter/enums/tab_item.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';

// Map<TabItem, String> tabName = {
//   TabItem.search: 'Search',
//   TabItem.bookReq: 'Book Request',
//   TabItem.favourites: 'Favourites',
//   TabItem.settings: 'Settings',
// };

Map<TabItem, Color> activeTabColor = {
  TabItem.search: Color(0xFF2962FF),
  TabItem.bookReq: Color(0xFF2962FF),
  TabItem.favourites: Color(0xFF2962FF),
  TabItem.settings: Color(0xFF2962FF),
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.search),
        _buildItem(tabItem: TabItem.bookReq),
        _buildItem(tabItem: TabItem.favourites),
        _buildItem(tabItem: TabItem.settings),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem}) {
    return BottomNavigationBarItem(
      icon: _buildIcon(tabItem: tabItem),
      title: SizedBox.shrink(),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item ? activeTabColor[item] : Color(0xff7D87A4);
  }

  Widget _buildImageIcon({TabItem tabItem}) {
    var image;
    switch (tabItem) {
      case TabItem.search:
        image = ImageIcon(
          AssetImage('assets/images/search.png'),
          color: _colorTabMatching(item: tabItem),
          size: 24,
        );
        break;
      case TabItem.bookReq:
        image = ImageIcon(
          AssetImage('assets/images/calendar.png'),
          color: _colorTabMatching(item: tabItem),
          size: 24,
        );
        break;
      case TabItem.favourites:
        image = ImageIcon(
          AssetImage('assets/images/star.png'),
          color: _colorTabMatching(item: tabItem),
          size: 24,
        );
        break;
      case TabItem.settings:
        image = ImageIcon(
          AssetImage('assets/images/settings.png'),
          color: _colorTabMatching(item: tabItem),
          size: 24,
        );
        break;
      default:
    }

    return image;
  }

  Widget _buildIcon({TabItem tabItem}) {
    var icon;
    switch (tabItem) {
      case TabItem.search:
        icon = Icon(
          MyNavBarIcons.magnifying_glass_browser_copy,
          color: _colorTabMatching(item: tabItem),
        );
        break;
      case TabItem.bookReq:
        icon = Icon(
          MyNavBarIcons.calendar_2,
          color: _colorTabMatching(item: tabItem),
        );
        break;
      case TabItem.favourites:
        icon = Icon(
          MyNavBarIcons.star_2,
          color: _colorTabMatching(item: tabItem),
        );
        break;
      case TabItem.settings:
        icon = Icon(
          MyNavBarIcons.settings,
          color: _colorTabMatching(item: tabItem),
        );
        break;
      default:
    }

    return icon;
  }
}
