import 'package:flutter/material.dart';
import 'package:meh_chat/src/assets/assets.dart';
import 'package:meh_chat/src/widgets/logo/logo.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenWidth,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: ScreenUtil().setHeight(200),
              width: double.infinity,
              child: Center(
                child: Logo(),
              ),
            ),
          ),
          Positioned(
            bottom: ScreenUtil().setHeight(0),
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(150),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                  topRight: Radius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 290,
            child: Container(
              height: ScreenUtil().setHeight(150),
              width: ScreenUtil().setWidth(ScreenSize.screenWidth),
              padding: EdgeInsets.all(
                ScreenUtil().setWidth(30),
              ),
              child: Center(
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(
                    ScreenUtil().setWidth(10),
                  ),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      ScreenUtil().setWidth(40),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.google,
                        size: FontSize.fontSize18,
                      ),
                      SizedBox(width: ScreenUtil().setWidth(15)),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: FontSize.fontSize14,
                        ),
                      ),
                    ],
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
