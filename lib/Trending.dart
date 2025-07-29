import 'package:flutter/material.dart';
import 'package:wahid_project/Model/trendingModel.dart';

class TrendingDome extends StatefulWidget {
   TrendingDome({super.key});

  @override
  State<TrendingDome> createState() => _TrendingDomeState();
}

class _TrendingDomeState extends State<TrendingDome> {
  List<int> likedIndex = [];
  List<int> bookmarkedIndex = [];
  List<String?> selectedReactions = List.filled(10, null);

  List<Trendingmodel> trendingItems = [
    Trendingmodel(
      image: 'assets/Images/1.png',
      title:
      'A protester carries the Confederate flag after breaching US Capitol security',
      time: '5 Hours ago | News18',
    ),
    Trendingmodel(
      image: 'assets/Images/well.png',
      title:
      'A protester carries the Confederate flag after breaching US Capitol security',
      time: '3 Hours ago | Geo News',
    ),
  ];

  Widget _buildShareItem(dynamic iconOrPath, String label,
      {bool isAsset = true}) {
    return Column(
      children: [
        isAsset
            ? Image.asset(iconOrPath, height: 30, width: 30)
            : Icon(iconOrPath, size: 30, color: Colors.grey),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Share',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildShareItem('assets/Images/whatsapp.png', 'Whatsapp'),
                    SizedBox(width: 12),
                    _buildShareItem('assets/Images/twitter.png', 'Twitter'),
                    SizedBox(width: 12),
                    _buildShareItem('assets/Images/youtube.png', 'Youtube'),
                    SizedBox(width: 12),
                    _buildShareItem('assets/Images/78.png', 'Facebook'),
                    SizedBox(width: 12),
                    _buildShareItem('assets/Images/copy.png', 'Copy'),
                    SizedBox(width: 12),
                    _buildShareItem('assets/Images/456.png', 'Share'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showReactionSheet(int index) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'React',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _reactionIcon('like.png', 'Like', index),
                  _reactionIcon('love.png', 'Love', index),
                  _reactionIcon('star.png', 'Star', index),
                  _reactionIcon('sad.png', 'Sad', index),
                  _reactionIcon('face.png', 'Angry', index),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _reactionIcon(String imageName, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedReactions[index] == imageName) {
            // same reaction => remove it
            selectedReactions[index] = null;
          } else {
            // new reaction => set it
            selectedReactions[index] = imageName;
          }
        });
        Navigator.pop(context); // close sheet
      },
      child: Column(
        children: [
          Image.asset('assets/Images/$imageName', height: 40),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: trendingItems.length,
        itemBuilder: (context, i) {
          final item = trendingItems[i];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Images/news.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  item.time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        _showReactionSheet(i); // Pass index
                      },
                      icon: selectedReactions[i] != null
                          ? Image.asset('assets/Images/${selectedReactions[i]!}', height: 24)
                          : Icon(Icons.thumb_up_alt_outlined, color: Colors.grey),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmarkedIndex.contains(i)
                              ? bookmarkedIndex.remove(i)
                              : bookmarkedIndex.add(i);
                        });
                      },
                      icon: Icon(
                        bookmarkedIndex.contains(i)
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                        color: bookmarkedIndex.contains(i)
                            ? Colors.blue
                            : Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Copied to clipboard')),
                        );
                      },
                      icon: Icon(Icons.copy, color: Colors.grey),
                    ),
                    IconButton(
                      onPressed: _showBottomSheet,
                      icon: Icon(Icons.share, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
