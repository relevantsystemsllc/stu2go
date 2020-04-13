import 'package:flutter/material.dart';
import 'package:stu2go_flutter/enums/tab_item.dart';
import 'package:stu2go_flutter/screens/studio_search.dart';
import 'package:stu2go_flutter/widgets/cupertino_home_scaffold.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/bottom_navigation.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/tab_navigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabItem _currentTab = TabItem.search;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.bookReq: GlobalKey<NavigatorState>(),
    TabItem.favourites: GlobalKey<NavigatorState>(),
    TabItem.settings: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.search: (_) => StudioSearchScreen(),
      TabItem.bookReq: (context) => Container(
            color: Colors.pink,
          ),
      TabItem.favourites: (_) => Container(
            color: Colors.blue,
          ),
      TabItem.settings: (_) => Container(
            color: Colors.orange,
          ),
    };
  }

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await _navigatorKeys[_currentTab].currentState.maybePop(),
      child: Material(
        child: CupertinoHomeScaffold(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
          widgetBuilders: widgetBuilders,
          navigatorKeys: _navigatorKeys,
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //     onWillPop: () async {
  //       final isFirstRouteInCurrentTab =
  //           !await _navigatorKeys[_currentTab].currentState.maybePop();
  //       if (isFirstRouteInCurrentTab) {
  //         // if not on the 'main' tab
  //         if (_currentTab != TabItem.search) {
  //           // select 'main' tab
  //           _selectTab(TabItem.search);
  //           // back button handled by app
  //           return false;
  //         }
  //       }
  //       // let system handle back button if we're on the first route
  //       return isFirstRouteInCurrentTab;
  //     },
  //     child: Scaffold(
  //       resizeToAvoidBottomInset: false,
  //       body: Stack(
  //         children: <Widget>[
  //           _buildOffstageNavigator(TabItem.search),
  //           _buildOffstageNavigator(TabItem.bookReq),
  //           _buildOffstageNavigator(TabItem.favourites),
  //           _buildOffstageNavigator(TabItem.settings),
  //         ],
  //       ),
  //       bottomNavigationBar: BottomNavigation(
  //         currentTab: _currentTab,
  //         onSelectTab: _selectTab,
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildOffstageNavigator(TabItem tabItem) {
  //   return Offstage(
  //     offstage: _currentTab != tabItem,
  //     child: TabNavigator(
  //       navigatorKey: _navigatorKeys[tabItem],
  //       tabItem: tabItem,
  //     ),
  //   );
  // }
}
