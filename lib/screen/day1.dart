import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                snapshot.data!.contains(ConnectivityResult.wifi)) {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/img/online2.png'),
                    ),
                    SizedBox(height: 50,),
                    const Text(
                      'Welcome back! \n Now You are an  Online !!',
                      style: TextStyle(
                        fontSize: 24,
                          color: Color(0xff7294a6)
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "No Internet connection",
                      style: TextStyle(fontSize: 25, color: Colors.red,),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        'assets/img/net.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Please Check your connection \n   again, or connect to wifi.",
                      style: TextStyle(fontSize: 18, color: Color(0xff7294a6)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(color: Color(0xff143f61),borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'REFRESH',
                        style: TextStyle(color: Colors.white,letterSpacing: 5,fontSize: 17),
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
