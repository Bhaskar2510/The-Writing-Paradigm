import 'package:flutter/material.dart';
import 'package:thewritingparadigm/screens/latest_post.dart';
import 'package:thewritingparadigm/screens/popular_post.dart';
import 'package:thewritingparadigm/widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> topTabs = const <Tab>[
    Tab(
      child: Text(
        "Latest",
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        "Popular",
        style: TextStyle(color: Colors.black),
      ),
    )
  ];

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "The Writing Paradigm",
          style: TextStyle(
            fontSize: 21.0,
            color: Colors.black,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black54,
                size: 30.0,
              ),
              onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          LatestPost(),
          PopularPost(),
        ],
      ),
    );
  }
}
