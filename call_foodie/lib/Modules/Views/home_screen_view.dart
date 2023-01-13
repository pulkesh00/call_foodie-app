// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreenView extends GetView {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  height: 32,
                  width: Get.width * 0.8,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          '5JV7+8P Hin Dat, Dan Khun Thot District,5JV7+8P, , Nakhon Ratchasima,'),
                    ),
                  ),
                ),
                const Icon(
                  Icons.bike_scooter,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 32,
                  ),
                  SizedBox(
                    width: Get.width * 0.7,
                    child: const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hoverColor: Colors.black,
                        hintText: 'Restaurent name or dish...',
                        hintStyle: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.tune,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          deals(),
          const SizedBox(height: 10),
          SizedBox(
            height: 28,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Top Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                          'https://static.toiimg.com/photo/msid-87930581/87930581.jpg'),
                      opacity: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(4),
                  height: 60,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withAlpha(1),
                          Colors.black.withAlpha(3),
                          Colors.black
                        ],
                      ),
                    ),
                    height: 60,
                    width: 120,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(
                          'Pizza',
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                          'https://www.kobeteppanyaki.com.au/wp-content/uploads/2020/08/Traditional-Japanese-Sushi-vs.-Western-Sushi.jpg'),
                      opacity: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(4),
                  height: 60,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withAlpha(1),
                          Colors.black.withAlpha(3),
                          Colors.black
                        ],
                      ),
                    ),
                    height: 60,
                    width: 120,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(
                          'Sushi',
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                          'https://static.toiimg.com/photo/msid-87930581/87930581.jpg'),
                      opacity: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(4),
                  height: 60,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withAlpha(1),
                          Colors.black.withAlpha(3),
                          Colors.black
                        ],
                      ),
                    ),
                    height: 60,
                    width: 120,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(
                          'Pizza ',
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 28,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Order Again',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          orderAgain(),
          SizedBox(
            height: 28,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'High Rating',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          highRating(),
          SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 28,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Top Rated',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          topRated(),
        ],
      ),
    );
  }

  Container deals() {
    return Container(
      height: Get.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, item) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                      'https://img.pikbest.com/origin/06/44/15/40RpIkbEsTxVc.jpg!f305cw'),
                  fit: BoxFit.cover,
                ),
                color: Colors.green,
              ),
              height: Get.height * 0.2,
              width: Get.width * 0.3,
            ),
          );
        },
      ),
    );
  }

  Container orderAgain() {
    return Container(
      height: Get.height * 0.24,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, item) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(08),
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                              'https://lh3.googleusercontent.com/L5P6nSO9sisGbOqiDEFUZ3-BK_7yp1dJ11ZIo-RxmYzNzx-VFszQaJw5ai4EDbF-f6n1mX-MTgxz-jC57WuanxzKmfHUGZOLGa8pgQg=w512-rw'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: Get.height * 0.09,
                      width: Get.width * 0.15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'The manchurian',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              '1 Day ago',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'The Big Rock Food',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Pj27 + khok Mon, Nom City',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(08),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/4/r/q/p4496-164240113261e50d6c089d8.jpg?tr=tr:n-medium',
                              ),
                              fit: BoxFit.cover)),
                      height: Get.height * 0.09,
                      width: Get.width * 0.16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'The Manchurian',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              '1 Day ago',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'The Big Rock Food',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Pj27 + khok Mon, Nom City',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container highRating() {
    return Container(
      decoration: BoxDecoration(),
      height: Get.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, item) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: CachedNetworkImageProvider(
                            'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/jr7i931j2laq93jmjws7'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: Get.height * 0.15,
                    width: Get.width * 0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Get.width * 0.15,
                          child: Text('Burger',
                              style: TextStyle(
                                  fontSize: 13,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green),
                          height: 20,
                          width: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  '4.0 ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container topRated() {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 16,
          itemBuilder: (context, item) {
            return Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 10.0,
                  ),
                ], color: Colors.red, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        ),
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                              'https://kauveryhospital.com/blog/wp-content/uploads/2021/04/pizza-5179939_960_720.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: Get.height * 0.200,
                      width: Get.width * 1,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [Colors.white.withAlpha(10), Colors.black],
                          ),
                        ),
                        height: Get.height * 0.200,
                        width: Get.width * 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      constraints:
                                          BoxConstraints(maxWidth: 150),
                                      height: 20,
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.0, right: 12, top: 2),
                                        child: Text(
                                          'Pizza ',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 70.0),
                                  child: Text(
                                    'DA Alfredo',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '27 old Gloustreco ar',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      height: 38,
                      margin: EdgeInsets.only(left: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: Get.width * 0.78,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '12 \$',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                      ),
                                      height: 20,
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.0, right: 12, top: 2),
                                        child: Text(
                                          'Upto 20 % off',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              children: [
                                Text('4.0 ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
