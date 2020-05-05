import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  ///
  Widget _buildLogo() {
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(40 + 44.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: duSetWidth(76),
            width: duSetWidth(76),
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: duSetHeight(76),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: BorderRadius.all(
                            Radius.circular(duSetWidth(76 * 0.5))), //父容器的50%
                      ),
                      child: Container(),
                    )),
                Positioned(
                  top: duSetWidth(13),
                  child: Image.network('https://www.itying.com/images/flutter/4.png', fit: BoxFit.cover),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  ///
  Widget _buildInputForm() {
    return Text('');
  }

  ///
  Widget _buildThirdPartyLogin() {
    return Text('');
  }

  ///
  Widget _buildSignupButton() {
    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            this._buildLogo(),
            this._buildInputForm(),
            Spacer(),
            this._buildThirdPartyLogin(),
            this._buildSignupButton()
          ],
        ),
      ),
    );
  }
}
