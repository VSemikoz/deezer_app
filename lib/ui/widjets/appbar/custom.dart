import 'package:deezer_app/common/resources/colors.dart';
import 'package:flutter/cupertino.dart';

const double _defaultAppBarHeight = 30.0;

class CustomAppBar extends StatelessWidget {
  final Widget child;
  final double height;

  CustomAppBar({this.child, this.height = _defaultAppBarHeight});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: statusBarHeight),
          Container(
            height: height,
            child: child,
          )
        ],
      ),
    );
  }
}
