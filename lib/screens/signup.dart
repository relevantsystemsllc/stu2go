import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key, this.role}) : super(key: key);
  final String role;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Center(
              child: Text(
                'Create an account to continue',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  color: Color(0xFF7D87A4),
                ),
              ),
            ),
          ),
          ProfilePic(),
          DetailSection(),
          PaymentSection(),
        ],
      ),
    );
  }
}

class PaymentSection extends StatefulWidget {
  @override
  _PaymentSectionState createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  final cards = ['VISA', 'MASTERCARD'];
  String creditCardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      child: Column(
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
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Checkbox(
                onChanged: null,
                value: false,
              ),
              Text(
                'I agree with User Agreement',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Avenir',
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DetailSection extends StatelessWidget {
  const DetailSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Avenir',
              color: Color(0xFF7D87A4),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Name',
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
          Text(
            'EMAIL',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Avenir',
              color: Color(0xFF7D87A4),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Email',
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
          Text(
            'PASSWORD',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Avenir',
              color: Color(0xff7D87A4),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Password',
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
          )
        ],
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 25,
      ),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffC5D9FB),
              ),
              width: 100,
              height: 100,
            ),
            Positioned(
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                width: 28,
                height: 28,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
