import 'package:flutter/material.dart';
import 'package:social_media/constants.dart';
import 'package:social_media/data/data.dart';
import 'package:social_media/models/user_model.dart';
import 'package:social_media/widget/custom_drawer.dart';
import 'package:social_media/widget/following_users.dart';
import 'package:social_media/widget/posts_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor
        ),
        backgroundColor: Colors.white,
        title: Text('FREEZE', style: kTitleStyle.copyWith(
          color: Theme.of(context).primaryColor,
          fontSize: 16.0
        ),),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
          indicatorWeight: 2.5,
          tabs: [
            Tab(text: 'Trending',),
            Tab(text: 'Latest',),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          FollowingUsers(),
          PostsCarousel(title: 'Posts', posts: posts, pageController: _pageController,),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
