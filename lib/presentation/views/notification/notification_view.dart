import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../elements/common_row_text.dart';
import '../../elements/notification_tile.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getNotificationView(context),
    );
  }
  Widget _getNotificationView(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: const [
          CommonRowText(rowIcon: Icons.arrow_back_ios, rowText: 'Notification'),
          NotificationListTile(leadingImagePath: 'assets/images/offer.png', titleText: 'Offer', circleText: '2',),
          NotificationListTile(leadingImagePath:  'assets/images/list.png', titleText: 'Feed' , circleText: '3',),
          NotificationListTile(leadingImagePath:  'assets/images/notification.png', titleText: 'Activity' , circleText: '3',),
        ],
      ),
    );
  }
}



