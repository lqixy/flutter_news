import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_screenutil/screenutil.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(65)),
      child: Text('Features',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: duSetFontSize(24))),
    );
  }

  /// 页头说明
  Widget _buildPageHeadDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.normal,
            fontSize: duSetFontSize(16),

            /// 行间距
            height: 1.3),
      ),
    );
  }

  /// 特性说明
  Widget _buildFeatureItem(String imageName, String intro,
      {double marginTop = 40}) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: <Widget>[
          Container(
            width: duSetWidth(80),
            height: duSetWidth(80),
            child: Image.asset(
              'assets/images/$imageName.png',
              fit: BoxFit.fill,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(16)),
            ),
          )
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        child: Text('Get started'),
        shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
        onPressed: () {
          Navigator.pushNamed(context, '/sign-in');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //高度去掉 顶部 底部 导航
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            this._buildPageHeadTitle(),
            this._buildPageHeadDetail(),
            this._buildFeatureItem(
                '1',
                'Compelling photography and typography provide a beautiful reading',
                marginTop: 86),
            this._buildFeatureItem(
                '2',
                'Sector news never shares your personal data with advertisers or publishers'),
            this._buildFeatureItem(
                '5',
                'You can get Preminm to unlock hundreds of publications'),
            Spacer(),
            this._buildStartButton()
          ],
        ),
      ),
    );
  }
}
