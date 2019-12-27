import 'package:flutter/material.dart';

class StudioCardItem extends StatelessWidget {
  const StudioCardItem(
      {Key key,
      this.ratePerHour,
      this.studioName,
      this.rating,
      this.address,
      this.image})
      : super(key: key);

  final int ratePerHour;
  final String studioName;
  final double rating;
  final String address;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 240,
      // width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                child: Image.asset(
                  'assets/images/studio_pic.png',
                  fit: BoxFit.fill,
                  scale: 0.9,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
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
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 8.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 2.0,
                    horizontal: 6.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    'GO',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(
                  16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            'Music Studio',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            '4.5',
                            style: TextStyle(
                              color: Color(0xff7D87A4),
                              fontSize: 11.0,
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
                    Row(
                      children: <Widget>[
                        Text(
                          'Penelope St NW 1125, 3 floor',
                          style: TextStyle(
                            color: Color(0xff7D87A4),
                            fontSize: 11.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          5,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          )
        ],
      ),
    );
  }
}
