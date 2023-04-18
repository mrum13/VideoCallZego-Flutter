import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  String userId = Random().nextInt(10000).toString();

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 0, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId,
      userName: 'user_$userId',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
