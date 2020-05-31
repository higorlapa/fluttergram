import 'package:Fluttegram/ui/feed/widgets/post_widget.dart';
import 'package:Fluttegram/ui/feed/widgets/story_item_widget.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  final _postList = <PostWidget> [
    PostWidget(
      'https://media-exp1.licdn.com/dms/image/C4D03AQF1D1kHVYazhA/profile-displayphoto-shrink_400_400/0?e=1595462400&v=beta&t=glOm7ux1YGzHcoRh5js9uAcJrCuV_dwNczkuwZ1LKSo',
      "higorlapa",
      'https://media-exp1.licdn.com/dms/image/C4D03AQF1D1kHVYazhA/profile-displayphoto-shrink_400_400/0?e=1595462400&v=beta&t=glOm7ux1YGzHcoRh5js9uAcJrCuV_dwNczkuwZ1LKSo',
    ),
    PostWidget(
      'https://instagram.frec22-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/96636388_521482998519206_5772176240214697559_n.jpg?_nc_ht=instagram.frec22-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=GjSTYj1BlJQAX-Gi0mH&oh=e8df419c61ca2bfb6b41b42eed46c103&oe=5EF57450',
      'filipedeschamps',
      'https://instagram.frec22-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/96636388_521482998519206_5772176240214697559_n.jpg?_nc_ht=instagram.frec22-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=GjSTYj1BlJQAX-Gi0mH&oh=e8df419c61ca2bfb6b41b42eed46c103&oe=5EF57450',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Color(0xff1d1d1d),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white,),
              onPressed: () {

              },
            ),
            title: Text('Fluttergram', style: TextStyle(fontFamily: 'Billabong'),),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.send, color: Colors.white,),
                onPressed: () {

                },
              )
            ],
          ),

          // Stories
          _buildStories(),
          _buildPosts()

        ],
      )
    );
  }
  Widget _buildStories() {
    return SliverToBoxAdapter(
      child: Container(
        height: 60,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
            StoryItemWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildPosts() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          ..._postList
        ]
      ),
    );
  }
}

