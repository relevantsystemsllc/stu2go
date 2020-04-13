import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';
import 'package:stu2go_flutter/screens/locate_engineer_screen.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_outlined_button.dart';

@override
class StudioSearchScreen extends StatelessWidget {
  StudioSearchScreen({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    void _goToLocateEngineer() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocateEngineerScreen(),
        ),
      );
    }

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/map.png",
            fit: BoxFit.contain,
          ),
        ),
        SafeArea(
          top: true,
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(1.0),
                  Colors.white.withOpacity(0.0)
                ],
                stops: [
                  0.2,
                  0.4,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Search for a Studio',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Icon(
                        MyNavBarIcons.navdrawicon,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 16.0,
                  height: 1.0,
                  thickness: 0.5,
                  color: Color(0xff7D87A4).withOpacity(0.3),
                  endIndent: 16.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Theme.of(context).primaryColor,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search Studios and Engineers',
                              hintStyle: TextStyle(
                                color: Color(0xff7D87A4),
                              ),
                            ),
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: 18.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 16.0,
                            bottom: 10.0,
                          ),
                          child: Text(
                            'Locate Engineer',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'Search for engineers within 30 miles of your location and studios within 50 miles',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff7D87A4),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 150,
                          ),
                          child: OutlinedButton(
                            text: 'LOCATE',
                            onTap: _goToLocateEngineer,
                            textColor: Theme.of(context).primaryColor,
                            outlineColor: Theme.of(context).primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(38.0),
                    child: Opacity(
                      opacity: 0,
                      child: Icon(
                        MyNavBarIcons.paper_plane,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Color(0xff4776F8).withOpacity(0.3),
                        ],
                        stops: [
                          0.4,
                          1.0,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(24.0),
                    child: Opacity(
                      opacity: 0,
                      child: Icon(
                        MyNavBarIcons.paper_plane,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Color(0xff4776F8).withOpacity(0.3),
                        ],
                        // stops: [
                        //   0.3,
                        //   0.9,
                        // ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    MyNavBarIcons.paper_plane,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
