import 'package:flutter/material.dart';
import 'package:untitled1/project/petrol.dart';
import 'package:untitled1/project/shop%20.dart';
import 'Tire Repair .dart';
import 'car winch.dart';
import 'electricity Repair .dart';

class homebage extends StatefulWidget {
  const homebage({super.key});

  @override
  State<homebage> createState() => _homebageState();
}

class _homebageState extends State<homebage> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "         Fixed ",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Text(
                "Car",
                style: TextStyle(fontSize: 30, color: Colors.orange),
              )
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.grey[200],
        ),
        endDrawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (val) {
              setState(() {
                selectedindex = val;
              });
            },
            iconSize: 40,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: "more"),
            ]),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "search",
                      hintStyle: TextStyle(fontSize: 25),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  )),
                ],
              ),
              Container(
                height: 30,
              ),
              const Text(
                "categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.car_repair_outlined,
                              size: 40,
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.all(15),
                          ),
                          const Text(
                            "Car winch",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.local_gas_station,
                            size: 40,
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Petrol",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.tire_repair,
                            size: 40,
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Tire Repair",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.electric_car_sharp,
                            size: 40,
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Car electricity",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.add_shopping_cart,
                            size: 40,
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "What do you want ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 250),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => itemsDetails()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey,
                            child: Image.asset(
                              "images/13.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Car Winch",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "All Types Of Cars",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => iphonesDetails()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey,
                            child: Image.asset(
                              "images/12.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Petrol ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "Gasoline 80,92 and 95",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => labtopDetails()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey,
                            child: Image.asset(
                              "images/4.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Tire Repair",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "Tire Repair and Air Adjustment",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdapDetails()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey,
                            child: Image.asset(
                              "images/7.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "electricity Repair",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "Electrical and battery Repair",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => shop()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.grey,
                            child: Image.asset(
                              "images/9.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Shop",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2,
                          ),
                          Text(
                            "All Kinds Of Food and Drinks",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
