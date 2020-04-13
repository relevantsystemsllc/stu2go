// import 'package:flutter/material.dart';
// import 'package:stu2go_flutter/enums/tab_item.dart';
// import 'package:stu2go_flutter/screens/calendar_screen.dart';
// import 'package:stu2go_flutter/screens/locate_engineer_screen.dart';
// import 'package:stu2go_flutter/screens/studio_profile_screen.dart';
// import 'package:stu2go_flutter/screens/studio_search.dart';

// class TabNavigatorRoutes {
//   static const String root = '/';
//   static const String locEngineer = '/locEngineer';
//   static const String studioProfile = '/studioProfile';
//   static const String scheduleRecording = '/calendar';
// }

// class TabNavigator extends StatelessWidget {
//   TabNavigator({this.navigatorKey, this.tabItem});
//   final GlobalKey<NavigatorState> navigatorKey;
//   final TabItem tabItem;

//   void _pushToLocEngineer(BuildContext context) {
//     var routeBuilders = _routeBuilders(context);
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) =>
//             routeBuilders[TabNavigatorRoutes.locEngineer](context),
//       ),
//     );
//   }

//   void _pushToStudioProfile(BuildContext context) {
//     var routeBuilders = _routeBuilders(context);
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) =>
//             routeBuilders[TabNavigatorRoutes.studioProfile](context),
//       ),
//     );
//   }

//   void _pushToStudioCalendarScreen(BuildContext context) {
//     var routeBuilders = _routeBuilders(context);
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) =>
//             routeBuilders[TabNavigatorRoutes.scheduleRecording](context),
//       ),
//     );
//   }

//   Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
//     return {
//       TabNavigatorRoutes.root: (context) => StudioSearchScreen(
//             onPush: () {
//               // FocusScope.of(context).unfocus();
//               return _pushToLocEngineer(context);
//             },
//           ),
//       TabNavigatorRoutes.locEngineer: (context) => LocateEngineerScreen(
//             onItemSelect: () {
//               return _pushToStudioProfile(context);
//             },
//           ),
//       TabNavigatorRoutes.studioProfile: (context) => StudioProfileScreen(
//             onScheduleRecording: () => _pushToStudioCalendarScreen(context),
//           ),
//       TabNavigatorRoutes.scheduleRecording: (context) => CalendarScreen(
//           // onScheduleRecording: () => _pushToStudioCalendarScreen(context),
//           ),
//     };
//   }

//   @override
//   Widget build(BuildContext context) {
//     final routeBuilders = _routeBuilders(context);
//     return Navigator(
//       key: navigatorKey,
//       initialRoute: TabNavigatorRoutes.root,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//           builder: (context) => routeBuilders[routeSettings.name](context),
//         );
//       },
//     );
//   }
// }
