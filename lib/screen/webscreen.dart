import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:goverment_service_app/screen/day1.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // googleController controller = Get.put(googleController());

    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Obx(
        () => InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(
              'https://www.google.co.in/search?q=${search}',
            ),
          ),
        ),
      ))),
    );
  }
}
