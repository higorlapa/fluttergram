import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {

  final String contentImgUrl;
  final String userImgUrl;
  final String username;


  PostWidget(this.contentImgUrl, this.username, this.userImgUrl);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildPostHeader(),
        _buildContent(),
        _buildSubtitle(),
        _buildSeeAllComments()
      ],
    );
  }
  Widget _buildPostHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  widget.userImgUrl
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(widget.username, style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.linear_scale, color: Colors.white,),
            onPressed: () {

            },
          )
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: <Widget>[
        Container(
          child: Image.network(widget.contentImgUrl),
        ),
        _buildInteractionRow()
      ],
    );
  }

  Widget _buildInteractionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white,),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.mode_comment, color: Colors.white,),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.send, color: Colors.white,),
              onPressed: () {

              },
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
          onPressed: () {

          },
        )
      ],
    );
  }

  Widget _buildSubtitle() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Text(widget.username, style: TextStyle(color: Colors.white),),
          Flexible(
            child: Text(
              ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildSeeAllComments() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Text('See all comments', style: TextStyle(color: Colors.grey[700]),),
    );
  }


}
