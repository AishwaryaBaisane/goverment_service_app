import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:goverment_service_app/screen/webscreen.dart';

TextEditingController txtSearch = TextEditingController();
RxString search = ''.obs;

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                controller: txtSearch,
                textInputAction: TextInputAction.search,
                leading: InkWell(onTap: () {
                  String data = txtSearch.text;
                  search = data.obs;
                  print('-------------------------------->');
                  print(search);
                  Get.to(WebScreen());
                },child: Icon(Icons.search)),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                snapshot.data!.contains(ConnectivityResult.wifi)) {
              return InAppWebView(
                initialUrlRequest: URLRequest(
                    url: WebUri(
                        'https://www.google.co.in/search?q=${search}')),
              );
            } else {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "No Internet connection",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        'assets/img/net.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Please Check your connection \n   again, or connect to wifi.",
                      style: TextStyle(fontSize: 23, color: Color(0xff7294a6)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xff143f61),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'REFRESH',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 17),
                      )),
                    )
                    // const CircularProgressIndicator(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

