import 'package:flutter/material.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';
import 'package:stu2go_flutter/screens/studio_profile_screen.dart';
import 'package:stu2go_flutter/widgets/locEngineer/studio_card_item.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_button.dart';
import 'package:stu2go_flutter/widgets/shared_widgets/custom_outlined_button.dart';

class LocateEngineerScreen extends StatelessWidget {
  const LocateEngineerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _goToStudioProfile() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudioProfileScreen(),
        ),
      );
    }

    var size = MediaQuery.of(context).size;

    final double itemWidth = size.width / 2;

    return SafeArea(
      top: true,
      child: Column(
        children: <Widget>[
          Container(
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
                  padding: EdgeInsets.fromLTRB(0, 8, 16, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Locate Engineer',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        MyNavBarIcons.navdrawicon,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                ),
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
              top: 20,
              bottom: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    maxWidth: 125,
                  ),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                          17.5,
                        ),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'ENGINEERS',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    maxWidth: 125,
                  ),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(
                          17.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'STUDIOS',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: 'Avenir',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // StudioCardItem(),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(
                8.0,
              ),
              mainAxisSpacing: 12.0,
              // shrinkWrap: true,
              childAspectRatio: (itemWidth / 240),
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: List.generate(
                30,
                (index) => GestureDetector(
                  child: StudioCardItem(),
                  onTap: _goToStudioProfile,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
