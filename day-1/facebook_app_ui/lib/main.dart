import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  top: 50, right: 20, left: 20, bottom: 10),
              height: 120,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.camera,
                    color: Colors.grey[800],
                    size: 30,
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      // NEW SKILL
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      //

                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 0.11),
                        ),
                        const Text('See Activities'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeStories(
                              storyImg:
                                  'assets/images/stories/story-1-byeDuk.png',
                              userImg: 'assets/images/people/person-3-cute.png',
                              userName: 'Temi ❤️'),
                          makeStories(
                              storyImg: 'assets/images/people/person-2.jpeg',
                              userImg: 'assets/images/stories/story-2.jpeg',
                              userName: 'Aimi ✨'),
                          makeStories(
                              storyImg: 'assets/images/stories/story-4.jpeg',
                              userImg: 'assets/images/people/person-4.jpeg',
                              userName: 'Kai 👥'),
                          makeStories(
                              storyImg: 'assets/images/people/cutie.png',
                              userImg: 'assets/images/stories/story-temi.png',
                              userName: 'prttybdune🥰'),
                          makeStories(
                              storyImg: 'assets/images/people/person-3.jpeg',
                              userImg: 'assets/images/stories/story-3.jpeg',
                              userName: 'Uguumur 🥹'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    makeFeed(
                        userName: 'Kai',
                        userImage: 'assets/images/people/person-4.jpeg',
                        feedImage: 'assets/images/stories/story-4.jpeg',
                        feedText: 'Badu ni bos bek bek bek!',
                        feedTime: '2 minutes ago'),
                    SizedBox(
                      height: 40,
                    ),
                    makeFeed(
                        userName: 'Dulguun',
                        userImage: 'assets/images/people/person-3-cute.png',
                        feedImage: 'assets/datewithTemi.jpeg',
                        feedText: 'Date with Temi ✨',
                        feedTime: '5 minutes ago'),
                    SizedBox(
                      height: 40,
                    ),
                    makeFeed(
                        userName: 'Temi',
                        userImage: 'assets/images/people/person-3-cute.png',
                        feedImage: 'assets/pbDuk.jpeg',
                        feedText: 'undur zuragchintaie🐬',
                        feedTime: '1h ago')
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget makeStories({storyImg, userImg, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(storyImg), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(userImg), fit: BoxFit.cover)),
              ),
              Text(
                userName,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 17,
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        feedTime,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.grey,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(feedImage), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeReaction(),
                  Transform.translate(
                    offset: Offset(-5, 0),
                    child: makeLove(),
                  ),
                  SizedBox(
                    width: 2.5,
                  ),
                  Text(
                    '6.9M',
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),
              Text(
                '2M comments',
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeReactionBtn(isActive: true),
              makeCommentBtn(),
              makeShareBtn()
            ],
          )
        ],
      ),
    );
  }

  Widget makeReaction() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red[400],
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeReactionBtn({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.favorite,
              size: 20,
              color: isActive ? Colors.red : Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Love',
              style: TextStyle(color: isActive ? Colors.red : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.chat,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.share,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Share',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
