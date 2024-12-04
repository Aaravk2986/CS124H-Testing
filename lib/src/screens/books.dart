// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
/*
import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const BooksScreen({
    required this.child,
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = widget.selectedIndex;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Hi, Aarav',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(19, 41, 75, 1),
                fontSize: 28),
          ),
        ),
        centerTitle: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Popular',
              icon: Icon(Icons.local_fire_department_sharp),
            ),
            Tab(
              text: 'New',
              icon: Icon(Icons.new_releases),
            ),
            Tab(
              text: 'All',
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
      body: widget.child,
    );
  }

  void _handleTabIndexChanged() {
    widget.onTap(_tabController.index);
  }
}
*/

import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const BooksScreen({
    required this.child,
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = widget.selectedIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.only(
              left: 16.0), // Adds left padding to "Hi, Aarav"
          child: Text(
            'Hi, Aarav', // Title text is left-aligned with padding
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(19, 41, 75, 1),
              fontSize: 28,
            ),
          ),
        ),
        centerTitle: false, // Ensures the title is left-aligned
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
              140.0), // Adjust height to fit margin and search bar
          child: Column(
            children: [
              SizedBox(
                  height: 16.0), // Adds margin between title and search bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26, // Shadow color
                      blurRadius: 4, // Shadow blur
                      offset: Offset(0, 2), // Shadow offset
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87, // Text color
                  ),
                  decoration: InputDecoration(
                    hintText: 'Explore',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon:
                        Icon(Icons.search, color: Colors.grey), // Search icon
                    border: InputBorder.none, // Remove default border
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 12.0), // Vertically center the text
                  ),
                ),
              ),
              SizedBox(
                  height:
                      16.0), // Adds margin between search bar and containers
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Ensures equal spacing between containers
                children: [
                  // "Popular" Container with Icon
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 41, 75, 1), // Blue background
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_fire_department_sharp,
                            color: const Color.fromRGBO(
                                255, 95, 5, 1)), // Orange icon
                        SizedBox(width: 2.0), // Space between icon and text
                        Text(
                          'Popular',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white, // White text
                          ),
                        ),
                      ],
                    ),
                  ),
                  // "New" Container with Icon
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 41, 75, 1), // Blue background
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.new_releases,
                            color: const Color.fromRGBO(
                                255, 95, 5, 1)), // Orange icon
                        SizedBox(width: 8.0), // Space between icon and text
                        Text(
                          'New',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white, // White text
                          ),
                        ),
                      ],
                    ),
                  ),
                  // "All" Container with Icon
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 41, 75, 1), // Blue background
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list,
                            color: const Color.fromRGBO(
                                255, 95, 5, 1)), // Orange icon
                        SizedBox(width: 8.0), // Space between icon and text
                        Text(
                          'All',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white, // White text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
      backgroundColor: Colors.white,
    );
  }

  void _handleTabIndexChanged() {
    widget.onTap(_tabController.index);
  }
}
/*
import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const BooksScreen({
    required this.child,
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = widget.selectedIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Hi, Aarav',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(19, 41, 75, 1),
              fontSize: 28,
            ),
          ),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Explore',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _handleIconBoxTap(0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(19, 41, 75, 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_fire_department_sharp, color: const Color.fromRGBO(255, 95, 5, 1)),
                          SizedBox(width: 2.0),
                          Text(
                            'Popular',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _handleIconBoxTap(1),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(19, 41, 75, 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.new_releases, color: const Color.fromRGBO(255, 95, 5, 1)),
                          SizedBox(width: 8.0),
                          Text(
                            'New',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _handleIconBoxTap(2),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(19, 41, 75, 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list, color: const Color.fromRGBO(255, 95, 5, 1)),
                          SizedBox(width: 8.0),
                          Text(
                            'All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
      backgroundColor: Colors.white,
    );
  }

  void _handleTabIndexChanged() {
    widget.onTap(_tabController.index);
  }

  void _handleIconBoxTap(int index) {
    widget.onTap(index);
    setState(() {
      _tabController.index = index;
    });
  }
}

*/

import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const BooksScreen({
    required this.child,
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = widget.selectedIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Hi, Aarav',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(19, 41, 75, 1),
              fontSize: 28,
            ),
          ),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Explore',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconBox(context, 0, Icons.local_fire_department_sharp, 'Popular'),
                  _buildIconBox(context, 1, Icons.new_releases, 'New'),
                  _buildIconBox(context, 2, Icons.list, 'All'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
      backgroundColor: Colors.white,
    );
  }

  Widget _buildIconBox(BuildContext context, int index, IconData icon, String text) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _handleIconBoxTap(index),
        borderRadius: BorderRadius.circular(12.0), // This helps the ripple effect match the container shape
        child: Container(
          width: MediaQuery.of(context).size.width * 0.28,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(19, 41, 75, 1),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: const Color.fromRGBO(255, 95, 5, 1)),
              SizedBox(width: 8.0),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleTabIndexChanged() {
    widget.onTap(_tabController.index);
  }

  void _handleIconBoxTap(int index) {
    widget.onTap(index);
    setState(() {
      _tabController.index = index;
    });
  }
}

