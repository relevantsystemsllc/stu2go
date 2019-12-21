import 'package:flutter/material.dart';

class PaymentSection extends StatefulWidget {
  @override
  _PaymentSectionState createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  final cards = ['VISA', 'MASTERCARD'];
  String creditCardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'PAYMENT DETAILS',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'CREDIT CARD TYPE',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        DropdownButton(
          hint: Text(
            cards[0],
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Avenir',
              color: Theme.of(context).primaryColor,
            ),
          ),
          value: creditCardType,
          items: cards
              .map(
                (value) => DropdownMenuItem(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Avenir',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  value: value,
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              creditCardType = value;
              print(creditCardType);
            });
          },
          isExpanded: true,
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'CARD NUMBER',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Avenir',
            color: Color(0xFF7D87A4),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '**** **** **** ****',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff7D87A4).withOpacity(0.3),
              ),
            ),
            hintStyle: TextStyle(
              fontFamily: 'Avenir',
              color: Theme.of(context).primaryColor,
            ),
          ),
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Avenir',
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'EXPIRATION DATE',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      color: Color(0xff7D87A4),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'MM/YY',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff7D87A4).withOpacity(0.3),
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'Avenir',
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    obscureText: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Avenir',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'CVV / CVC',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      color: Color(0xff7D87A4),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '***',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff7D87A4).withOpacity(0.3),
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'Avenir',
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    obscureText: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Avenir',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // Row(
        //   mainAxisSize: MainAxisSize.max,
        //   children: <Widget>[
        //     Checkbox(
        //       onChanged: null,
        //       value: false,
        //     ),
        //     Text(
        //       'I agree with User Agreement',
        //       style: TextStyle(
        //         fontSize: 14,
        //         fontFamily: 'Avenir',
        //         color: Theme.of(context).primaryColor,
        //       ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
