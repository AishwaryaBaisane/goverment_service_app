import 'package:flutter/material.dart';

import 'WebScreen2.dart';

class WebScreen1 extends StatelessWidget {
  const WebScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'Pizza Hub',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          // color: const Color(0xffF2EB93),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: [
                    GestureDetector(
                      onTap: () {
                        webUrl = "https://pizzaonline.dominos.co.in/";
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(),
                        ));
                      },
                      child: buildImageWithDecoration(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdvwMaRYa2zCWPUMaqYa53lCzP-O2aXGR1g&s'),
                    ),
                    GestureDetector(
                        onTap: () {
                          webUrl = "https://www.pizzahut.co.in/";
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WebView(),
                          ));
                        },
                        child: buildImageWithDecoration(
                            'https://i.pinimg.com/564x/91/98/c7/9198c7a83f79c2d173b76bce4e1d65ec.jpg')),
                    GestureDetector(
                        onTap: () {
                          webUrl = 'https://www.zomato.com/';
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WebView(),
                          ));
                        },
                        child: buildImageWithDecoration(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Zomato_logo.png/900px-Zomato_logo.png?20210726145438')),
                    GestureDetector(
                        onTap: () {
                          webUrl = 'https://www.swiggy.com/';
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WebView(),
                          ));
                        },
                        child: buildImageWithDecoration(
                            'https://alllogo.info/wp-content/uploads/2022/06/unnamed-2-1.png')),
                    GestureDetector(
                      onTap: () {
                        webUrl = 'https://lapinozpizza.in/';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(),
                        ));
                      },
                      child: buildImageWithDecoration('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuhEBiVvCqBuyNfU7kDMuO9JfyIsLGviX04g&s'
''                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        webUrl = 'https://www.zomato.com/surat/the-d-pizza-1-dindoli';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(),
                        ));
                      },
                      child: buildImageWithDecoration(
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEiNi_3yk62SWG_vvJt6_iqd0diqoNoU2whfyirbJmakblA-sNS8WB29iNv0gS_LJ5T20&usqp=CAU'                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        webUrl = 'https://mojopizza.in/';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(),
                        ));
                      },
                      child: buildImageWithDecoration(
                        'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366/RX_THUMBNAIL/IMAGES/VENDOR/2024/6/24/1c21e4ed-37c9-45b2-9788-1fee96413482_622161.JPG',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        webUrl = 'hhttps://www.zomato.com/surat/laziz-pizza-mota-varachha';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(),
                        ));
                      },
                      child: buildImageWithDecoration('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO3EEUidY4XxppxzlskaKsDzUURqdya3NxGQ&s'
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageWithDecoration(String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

String webUrl = "";
