import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Dashboard'),
      ),
      body: Container(
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 1.2,
          ),
          padding: EdgeInsets.all(16.0),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return _gridItem(context, item['title']!, item['route']!);
          },
        ),
      ),
    );
  }

  Widget _gridItem(BuildContext context, String title, String route) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> menuItems = [
  {'title': 'Submit Request', 'route': '/submit-request'},
  {'title': 'Submit First Appeal', 'route': '/first-appeal'},
  {'title': 'View Status', 'route': '/view-status'},
  {'title': 'View History', 'route': '/view-history'},
  {'title': 'Contact Us', 'route': '/contact-us'},
  {'title': 'FAQ', 'route': '/faq'},
];
