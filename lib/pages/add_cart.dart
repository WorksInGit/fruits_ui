import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_ui/pages/home_page.dart';
import 'package:hexcolor/hexcolor.dart';

class AddCart extends StatefulWidget {
  const AddCart({super.key});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity.r,
              height: 470.r,
              decoration: BoxDecoration(
                  color: HexColor('#ffd2d9'),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100)).r),
              child: Column(
                children: [
                  40.verticalSpace,
                  Text(
                    'Strawberry',
                    style: TextStyle(
                        inherit: false,
                        color: Colors.black,
                        fontSize: 35.r,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.r,
                  ),
                  Text(
                    'Apple Juice is a favorite beverage high in',
                    style: TextStyle(
                        inherit: false,
                        color: Colors.black,
                        fontSize: 15.r,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'antioxidants and micronutrients like Vitamin C',
                    style: TextStyle(
                        inherit: false,
                        color: Colors.black,
                        fontSize: 15.r,
                        fontWeight: FontWeight.w400),
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20.r,
                        height: 20.r,
                        decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(50).r),
                        child: Center(
                            child: Text(
                          '-',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                      ),
                      15.horizontalSpace,
                      Container(
                        width: 100.r,
                        height: 35.r,
                        decoration: BoxDecoration(
                            color: HexColor('#ffd2d9'),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10).r,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 0.5.r,
                                  blurRadius: 7.r,
                                  offset: Offset(0, 10))
                            ]),
                        child: Center(
                          child: Text(
                            '100ml',
                            style:
                                TextStyle(inherit: false, color: Colors.black),
                          ),
                        ),
                      ),
                      15.horizontalSpace,
                      Container(
                        width: 20.r,
                        height: 20.r,
                        decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(50).r),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20.r,
                        ),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.money_dollar,
                        color: Colors.black,
                        size: 40.r,
                      ),
                      Text(
                        '2.15',
                        style: TextStyle(
                            inherit: false,
                            color: Colors.black,
                            fontSize: 30.r,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  139.verticalSpace,
                  Container(
                    width: 150.r,
                    height: 80.r,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100).r,
                                topLeft: Radius.circular(100).r)
                            .r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.card_travel,
                          size: 30.r,
                        ),
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              inherit: false,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity.r,
            height: 345.r,
            decoration: BoxDecoration(color: HexColor('#ffd2d9')),
          ),
          Container(
            width: double.infinity.r,
            height: 345.r,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100)).r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20).r,
                  child: Row(
                    children: [
                      Container(
                        width: 25.r,
                        height: 25.r,
                        decoration: BoxDecoration(
                            color: HexColor('#ffd2d9'),
                            borderRadius: BorderRadius.circular(50).r),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 15.r,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 400.r,
                  height: 200.r,
                  child: Image.asset('assets/images/strawberry.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
