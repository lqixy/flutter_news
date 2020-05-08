import 'package:flutter/material.dart';
import 'package:flutter_news/common/Widgets/widgets.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // email控制器
  final TextEditingController _emailController = TextEditingController();
  //密码控制器
  final TextEditingController _passController = TextEditingController();

  // 跳转注册
  _handleNavSignUp() {
    Navigator.pushNamed(context, '/sign-up');
  }

  // 执行登陆
  _handleSignIn(){
    if(!validEmail(_emailController.value.text)){
      toastInfo(msg:'请输入正确的邮箱地址');
      return;
    }
    if(!validPwd(_passController.value.text)){
      toastInfo(msg:'密码不能小于6位');
      return;
    }
  }

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
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/5.png'),
                ),
                // Positioned(
                //   top: duSetWidth(13),
                //   // child: Image.asset('assets/images/5.png'),
                //   child: Text('News'),
                // )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              'NEWS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: duSetFontSize(24),
                  height: 1),
            ),
          )
        ],
      ),
    );
  }

  /// 登陆表单
  Widget _buildInputForm() {
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(top: duSetHeight(49)),
      child: Column(
        children: <Widget>[
          //邮箱
          inputTextEdit(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
            marginTop: 0,
          ),
          //密码
          inputTextEdit(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: 'Password',
            isPassword: true,
          ),

          Container(
            height: duSetHeight(44),
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Row(
              children: <Widget>[
                //注册
                btnFlatButtonWidget(
                    onPressed: _handleNavSignUp,
                    gbColor: AppColors.thirdElement,
                    title: '注册'),
                Spacer(),
                //登陆
                btnFlatButtonWidget(
                    onPressed: _handleSignIn,
                    gbColor: AppColors.thirdElement,
                    title: '登陆'),
              ],
            ),
          ),

          //忘记密码
          Container(
            height: duSetHeight(22),
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                '忘记密码',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryElementText,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w400,
                  fontSize: duSetFontSize(16),
                  height: 1, //设置下行高,否则字体下沉
                ),
              ),
            ),
          )
        ],
      ),
    );
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
