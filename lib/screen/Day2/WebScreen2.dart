import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:goverment_service_app/screen/Day2/WebScreen.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(webUrl)),
        )),
      ),
    );
  }
}