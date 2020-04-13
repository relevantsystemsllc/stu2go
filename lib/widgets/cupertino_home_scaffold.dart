import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stu2go_flutter/enums/tab_item.dart';

class CupertinoHomeScaffold extends StatelessWidget {
  const CupertinoHomeScaffold({
    Key key,
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.widgetBuilders,
    @required this.navigatorKeys,
  }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: false,
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(TabItem.search),
          _buildItem(TabItem.bookReq),
          _buildItem(TabItem.favourites),
          _buildItem(TabItem.settings),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Color(0xFF2962FF) : Color(0xff7D87A4);
    return BottomNavigationBarItem(
        icon: Icon(
          itemData.icon,
          color: color,
          size: 24.0,
        ),
        // title: Text(
        //   itemData.title,
        //   style: TextStyle(color: color),
        // ),
        title: SizedBox.shrink());
  }
}
