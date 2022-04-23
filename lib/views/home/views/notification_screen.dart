import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/home/widget/notification_list.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NoificationList _noificationList = NoificationList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigateBack(
                titel: 'Notification',
                function: () => Navigator.pop(context),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _noificationList.notifications.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? AppColor.white
                            : AppColor.dark.withOpacity(0.4),
                        boxShadow: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? [
                                BoxShadow(
                                  offset: const Offset(0, 0),
                                  blurRadius: 50.0,
                                  spreadRadius: 0.0,
                                  color: AppColor.kblurColor.withOpacity(0.2),
                                ),
                              ]
                            : AppColor.appContanerShadowDark,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Image.asset(
                                _noificationList.notifications[index].image),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _noificationList.notifications[index].text,
                                    style: AppTextStyle.kTextHeader3.copyWith(
                                      letterSpacing: 1.0,
                                      color: MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light
                                          ? AppColor.black
                                          : AppColor.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    _noificationList
                                        .notifications[index].status,
                                    style: AppTextStyle.kTextHeader3.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
