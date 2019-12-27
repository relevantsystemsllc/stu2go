import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stu2go_flutter/my_nav_bar_icons_icons.dart';

class StudioProfileScreen extends StatefulWidget {
  const StudioProfileScreen({Key key, this.onScheduleRecording})
      : super(key: key);

  final VoidCallback onScheduleRecording;

  @override
  _StudioProfileScreenState createState() => _StudioProfileScreenState();
}

class _StudioProfileScreenState extends State<StudioProfileScreen> {
  int _currentPage = 0;
  int _currentAvatarPage = 0;

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
                          'Music Studio',
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
          Flexible(
            fit: FlexFit.loose,
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: CarouselSlider(
                // height: 120,
                onPageChanged: (index) {
                  print('index is $index');
                  setState(() {
                    _currentAvatarPage = index;
                  });
                },
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                items: [1, 2, 3, 4, 5].map((index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0.0,
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Opacity(
                                opacity:
                                    _currentAvatarPage == index - 1 ? 1.0 : 0.5,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(
                                    8.0,
                                  )),
                                  child: Image.asset(
                                    'assets/images/studio_pic.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 1.5,
                                ),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color(0xff7D87A4),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      size: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 14,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 5.0,
                              top: 5.0,
                            ),
                            child: Text(
                              'General info:',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff515B77),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 5.0,
                            ),
                            child: Text(
                              'Penelope St NW 1125, 3 floor',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7D87A4),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 5.0,
                            ),
                            child: Text(
                              'Phone number: 123.456.78',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7D87A4),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 5.0,
                            ),
                            child: Text(
                              'Working hours  09am : 11pm',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7D87A4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              right: 16.0,
                              top: 5.0,
                            ),
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              '\$65/h',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: 16.0,
                  height: 1.0,
                  thickness: 0.5,
                  color: Color(0xff7D87A4).withOpacity(0.3),
                  endIndent: 16.0,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        top: 8.0,
                      ),
                      child: Text(
                        'Equipment:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff7D87A4),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                    ),
                    child: Text(
                      'Rack Mount, Power Conditioner, Microphone Preamp, Headphone Amp, Monitor Management ,Virtual Instruments ,MIDI Controller, Electronic Drum Kit…',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.7,
                        color: Color(0xff7D87A4),
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    maxWidth: 180,
                  ),
                  child: GestureDetector(
                    onTap: widget.onScheduleRecording,
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
                          'SCHEDULE RECORDING',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
