import 'package:flutter/material.dart';
import 'package:wahid_project/Model/trendingModel.dart';

class HomescreenDome extends StatefulWidget {
  const HomescreenDome({super.key});

  @override
  State<HomescreenDome> createState() => _HomescreenDomeState();
}
class _HomescreenDomeState extends State<HomescreenDome> {
  final List<String> tabs = ['My News', 'World', 'Business', 'Health', 'Travel'];
  List<int> likedIndex = [];
  List<int> bookmarkedIndex = [];
  List<String?> selectedReactions = List.filled(10, null);

  List<Trendingmodel> trendingItems = [
    Trendingmodel(
      image: 'assets/Images/1.png',
      title: 'A protester carries the Confederate flag after breaching US Capitol security',
      time: '5 Hours ago | News18',
    ),
    Trendingmodel(
      image: 'assets/Images/well.png',
      title: 'A protester carries the Confederate flag after breaching US Capitol security',
      time: '3 Hours ago | Geo News',
    ),
  ];

  Widget _buildShareItem(dynamic iconOrPath, String label, {bool isAsset = true}) {
    return Column(
      children: [
        isAsset
            ? Image.asset(iconOrPath, height: 30, width: 30)
            : Icon(iconOrPath, size: 30, color: Colors.grey),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding:  EdgeInsets.all(16),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
               Text('Share', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding:  EdgeInsets.all(16),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
               Text('React', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
          selectedReactions[index] =
          selectedReactions[index] == imageName ? null : imageName;
        });
        Navigator.pop(context);
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 40,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: tabs.length,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding:  EdgeInsets.symmetric(horizontal: 10),
              //         child: Text(
              //           tabs[index],
              //           style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             color: index == 0 ? Colors.blue : Colors.black,
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),

              // Hero Card Section
              Stack(
                children: [
                  Image.asset(
                    'assets/Images/trmp26.png',
                    width: double.infinity,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: tabs.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  tabs[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 19,
                                    color: index == 0 ? Colors.blue : Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.32,),
                        Row(
                          children:  [
                            CircleAvatar(radius: 15, backgroundColor: Colors.white, child: Text("N")),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New18 ", style: TextStyle(color: Colors.white, fontSize: 12)),
                                Text(' 1h | US & Canada', style: TextStyle(color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                         SizedBox(height: 8),
                         Text(
                          "Kamran presidency's final days; in his mind, he will not have lost",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                         SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                            Icon(Icons.comment_outlined, color: Colors.white),
                            Icon(Icons.copy, color: Colors.white),
                            Icon(Icons.share, color: Colors.white),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              // Trending Section
               Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Trending', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    SizedBox(width: 16),
                    TrendingChip(label: 'Trending-1'),
                    TrendingChip(label: 'Trending-2'),
                    TrendingChip(label: 'Trending-3'),
                  ],
                ),
              ),

              // My News
               Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("My news", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),

              ListView.builder(
                itemCount: trendingItems.length,
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  final item = trendingItems[i];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(item.image, fit: BoxFit.cover, width: double.infinity, height: 200),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/Images/news.png', height: 20, width: 20),
                             SizedBox(width: 8),
                            Expanded(
                              child: Text(item.title,
                                  style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(item.time, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 6, left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () => _showReactionSheet(i),
                              icon: selectedReactions[i] != null
                                  ? Image.asset('assets/Images/${selectedReactions[i]!}', height: 24)
                                  :  Icon(Icons.thumb_up_alt_outlined, color: Colors.grey),
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
                                color: bookmarkedIndex.contains(i) ? Colors.blue : Colors.grey,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBar(content: Text('Copied to clipboard')),
                                );
                              },
                              icon:  Icon(Icons.copy, color: Colors.grey),
                            ),
                            IconButton(
                              onPressed: _showBottomSheet,
                              icon:  Icon(Icons.share, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingChip extends StatelessWidget {
  final String label;
   TrendingChip({required this.label, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 10),
      child: Chip(
        backgroundColor: Colors.grey.shade200,
        label: Text(label),
      ),
    );
  }
}
