import 'package:famasi_app/pages/categories_page.dart';
import 'package:famasi_app/pages/clients_page.dart';
import 'package:famasi_app/pages/profile_page.dart';
import 'package:famasi_app/pages/sale_page.dart';
import 'package:famasi_app/pages/sales_report.dart';
import 'package:famasi_app/pages/stock_page.dart';
import 'package:famasi_app/pages/stock_product.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class StockMenuPageScreen extends StatefulWidget {
  const StockMenuPageScreen({super.key});

  @override
  State<StockMenuPageScreen> createState() => _StockMenuPageScreenState();
}

class _StockMenuPageScreenState extends State<StockMenuPageScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ProductStockPageScreen(),
    CategoriesPageScreen(),
    StockProductScreen(),
    SalesReportScreen(),
    SalePageScreen(),
    ClientsPageScreen(),
    ProfilePageScreen(),
  ];

  var title = "Stock Management";
  // ignore: non_constant_identifier_names
  bool see_order = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          setState(() {
            title = "Stock Management";
            see_order = true;
          });
          break;
        case 1:
          setState(() {
            title = "All Categories";
            see_order = false;
          });
          break;
        case 2:
          setState(() {
            title = "All Products";
            see_order = false;
          });
          break;
        case 3:
          setState(() {
            title = "Sales Report";
            see_order = false;
          });
          break;
        case 4:
          setState(() {
            title = "Sale";
            see_order = false;
          });
          break;
        case 5:
          setState(() {
            title = "Clients";
            see_order = false;
          });
          break;
        case 6:
          setState(() {
            title = "Profile";
            see_order = false;
          });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/famasi_logo-removebg.png",
                    height: 500,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/profile.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Profile',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 6,
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/stock.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Stock',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:  Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/category.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Categories',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:  Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/products.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Products',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/report.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Sales Report',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/sale.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Sale',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/clients.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Clients',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 5,
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/menu-images/leave.png",
                        height: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Logout',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              selected: _selectedIndex == 5,
              onTap: () {
                Navigator.pop(context);
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
