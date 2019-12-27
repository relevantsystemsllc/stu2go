import 'package:flutter/material.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).primaryColor,
                        ),
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Schedule Recording',
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
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 8.0,
              bottom: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: null,
                  ),
                ),
                Text(
                  'JUNE 2018',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(
                  16.0,
                ),
                child: Placeholder()),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 40,
                maxWidth: 180,
              ),
              child: GestureDetector(
                // onTap: widget.onScheduleRecording,
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
                      'CHECK AVAILABILITY',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
