import 'package:flutter/material.dart';

class nested_tab_bar extends StatefulWidget {
  // const nested_tab_bar({Key key}) : super(key: key);

  @override
  _nested_tab_barState createState() => _nested_tab_barState();
}

class _nested_tab_barState extends State<nested_tab_bar> {
  // late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Custom_app_bar(),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 6.0,
            onTap: (index) {
              setState(() {});
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'HOME',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'GAMES',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'MOVIES',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'MUSIC',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'BOOK',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(),
            HomeTopTabs(), //ff5722
            // GamesTopTabs(), //3f51b5
            //MoviesTopTabs(), //e91e63
            //BooksTopTabs(), //9c27b0
            //MusicTopTabs(),
          ],
        ),
      ),
    );
  }

  Custom_app_bar() {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: IconButton(
            icon: Icon(Icons.horizontal_split),
            color: Colors.blueGrey,
            onPressed: () {},
          )),
          Container(
            child: Text(
              'Google Play',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
              child: IconButton(
            icon: Icon(
              Icons.mic,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          )),
        ],
      ),
    );
  }

  HomeTopTabs() {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 6.0,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.trending_up, color: Colors.green),
                child: Text('Trending', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                icon: Icon(Icons.assessment, color: Colors.green),
                child: Text('Top Chart', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                icon: Icon(Icons.add_circle_outline, color: Colors.green),
                child: Text(
                  'New',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(Icons.category, color: Colors.green),
                child: Text(
                  'Category',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(Icons.monetization_on, color: Colors.green),
                child: Text(
                  'Monetization',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
