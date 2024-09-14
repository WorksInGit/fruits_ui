import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_ui/pages/add_cart.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          children: [
            40.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(30.0).r,
              child: TextField(
                decoration: InputDecoration(
                    label: Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Text('Search'),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30).r)),
              ),
            ),
            TabBar(
                controller: _tabController,
                indicatorColor: Colors.green,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: 'Fruits',
                  ),
                  Tab(
                    text: 'Vegetables',
                  ),
                  Tab(
                    text: 'Nuts & Seeds',
                  )
                ]),
            Expanded(
                child: TabBarView(controller: _tabController, children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildContainer(productList[0]),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return AddCart();
                                },));
                              },
                              child: _buildContainer(productList[1]))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildContainer(productList[2]),
                            _buildContainer(productList[3])
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildContainer(productList[4]),
                            _buildContainer(productList[5])
                          ],
                        ),
                       20.verticalSpace
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Text('Vegetables'),
              ),
              Center(
                child: Text('Nuts & Seeds'),
              )
            ]))
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(Product productList) {
  return Stack(
    children: [
      Container(
        width: 150.r,
        height: productList.isSmaller == true ? 180.r : 200.r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20).r,
            color: productList.bgColor,
            image: DecorationImage(image: AssetImage(productList.imagePath))),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productList.name),
              Row(
                children: [
                  Icon(CupertinoIcons.money_dollar),
                  Text(productList.price),
                ],
              ),
            ],
          ),
        ),
      ),
      productList.isSmaller == false
          ? Padding(
              padding: const EdgeInsets.only(left: 120, top: 170).r,
              child: Container(
                width: 30.r,
                height: 30.r,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10).r,
                        bottomRight: Radius.circular(20).r).r),
                child: Icon(
                  CupertinoIcons.check_mark,
                  color: Colors.white,
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 120, top: 150).r,
              child: Container(
                width: 30.r,
                height: 30.r,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10).r,
                        bottomRight: Radius.circular(20).r).r,
                    border: Border.all(color: Colors.pink)),
                child: Icon(Icons.add, color: Colors.pink),
              ),
            )
    ],
  );
}

class Product {
  final String name;
  final String imagePath;
  final String price;
  final Color bgColor;
  final bool isSmaller;
  Product(
      {required this.name,
      required this.imagePath,
      required this.price,
      required this.bgColor,
      required this.isSmaller});
}

List<Product> productList = [
  Product(
      name: 'Sweet Marian',
      imagePath: 'assets/images/sweet.png',
      price: '2.45',
      bgColor: HexColor('#fcecb1'),
      isSmaller: false),
  Product(
      name: 'Strawberry',
      imagePath: 'assets/images/strawberry.png',
      price: '1.52',
      bgColor: HexColor('#ffd2d9'),
      isSmaller: true),
  Product(
      name: 'Grapes',
      imagePath: 'assets/images/grapes.png',
      price: '2.15',
      bgColor: HexColor('#ddd5fe'),
      isSmaller: true),
  Product(
      name: 'Orange',
      imagePath: 'assets/images/orange.png',
      price: '1.50',
      bgColor: HexColor('#ffd6b0'),
      isSmaller: false),
  Product(
      name: 'Watermalon',
      imagePath: 'assets/images/watermalon.png',
      price: '1.65',
      bgColor: HexColor('#c9ffa1'),
      isSmaller: false),
  Product(
      name: 'Mango',
      imagePath: 'assets/images/mango.png',
      price: '2.55',
      bgColor: HexColor('#fff8b9'),
      isSmaller: true),
];
