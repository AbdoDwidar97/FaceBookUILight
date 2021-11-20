import 'package:facebook_v409/Model/PostItem.dart';
import 'package:facebook_v409/Model/StoryItem.dart';
import 'package:facebook_v409/View/Widgets/AppTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen>
{
  double w, h;
  List<StoryItem> storyItems = new List();
  List<PostItem> posts = new List();
  List<String> lastChats = new List();

  bool isChat = true;

  MainScreenState()
  {
    storyItems.add(new StoryItem(
      name: "Floki Floki",
      imgUrl: "https://pbs.twimg.com/profile_images/1074409386028818432/HJJZkVUF_400x400.jpg"
    ));
    storyItems.add(new StoryItem(
        name: "Arya Stark",
        imgUrl: "https://i.pinimg.com/564x/93/ac/fb/93acfbbed268eceff8768866934ebd70.jpg"
    ));
    storyItems.add(new StoryItem(
        name: "John Snow",
        imgUrl: "https://media.gq.com/photos/5c9d404a8d459e781a1333b5/3:4/w_971,h_1295,c_limit/How-to-Get-Jon-Snow's-Hair-game-of-thrones-gq-grooming.jpg"
    ));
    storyItems.add(new StoryItem(
        name: "Helga Helga",
        imgUrl: "https://pbs.twimg.com/media/C3R2x4jUEAATyjL.jpg"
    ));

    // --------------------------------------

    posts.add(new PostItem(
      name: "Helga Helga",
      postDetails: "Good morning guys, \nI'm very happy for marry floki. Love is everything <3",
      postImgUrl: "https://miro.medium.com/max/889/1*8MAnbYbVONkk7h4Dfg-Ilg.png",
      iDuration: "10 Mins Ago",
      imgUrl: "https://pbs.twimg.com/media/C3R2x4jUEAATyjL.jpg"
    ));
    posts.add(new PostItem(
        name: "Arya Stark",
        postDetails: "The North remembers!",
        postImgUrl: "https://i.ytimg.com/vi/DNJ22TvBrJo/sddefault.jpg",
        imgUrl: "https://i.pinimg.com/564x/93/ac/fb/93acfbbed268eceff8768866934ebd70.jpg",
        iDuration: "2 Hours Ago"
    ));
    posts.add(new PostItem(
        name: "John Snow",
        postDetails: "Be careful, Winter is coming.",
        postImgUrl: "https://i1.sndcdn.com/artworks-000212160600-1u2pcm-t500x500.jpg",
        imgUrl: "https://media.gq.com/photos/5c9d404a8d459e781a1333b5/3:4/w_971,h_1295,c_limit/How-to-Get-Jon-Snow's-Hair-game-of-thrones-gq-grooming.jpg",
        iDuration: "21 Hours Ago"
    ));
    posts.add(new PostItem(
        name: "Floki Floki",
        postDetails: "We are vikings !!!",
        postImgUrl: "https://mythologian.net/wp-content/uploads/2017/02/real-floki-from-vikings-1024x657.jpg",
        imgUrl: "https://pbs.twimg.com/profile_images/1074409386028818432/HJJZkVUF_400x400.jpg",
        iDuration: "2 Days Ago"
    ));

    // -------------------------------------

    lastChats.add("You: Hi Helga, How...");
    lastChats.add("You: I'm the king, arya. w...");
    lastChats.add("You: haha ... You kn...");
    lastChats.add("Floki: What's up bro...");
  }

  var myStatusController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    w = MediaQuery.of(context).size.width / 50;
    h = MediaQuery.of(context).size.height / 50;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: InkWell(
          onTap: (){},
          child: Text("facebook", style: TextStyle(fontSize: h*1.7, color: Colors.blue[700], fontWeight: FontWeight.bold, fontFamily: "Social")),
        ),
        centerTitle: false,
        actions: [

          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            iconSize: w*3,
            onPressed: (){},
          ),

          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            iconSize: w*3,
            onPressed: (){},
          ),

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: w*7,
        height: w*7,
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              this.isChat = !this.isChat;
            });
          },
          backgroundColor: Colors.blue[800],
          child: Icon(Icons.chat, color: Colors.white, size: w*3.5),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: w * 1,
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: h*6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 6,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: w*40,
                  height: h*4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Row(
                        children: [

                          IconButton(
                            icon: Icon(Icons.home, color: Colors.black),
                            iconSize: w*3,
                            onPressed: (){},
                          ),

                          SizedBox(width: w*2),

                          IconButton(
                            icon: Icon(Icons.video_library, color: Colors.black),
                            iconSize: w*3,
                            onPressed: (){},
                          ),

                        ],
                      ),

                      Row(
                        children: [

                          IconButton(
                            icon: Icon(Icons.store, color: Colors.black),
                            iconSize: w*3,
                            onPressed: (){},
                          ),

                          SizedBox(width: w*2),

                          IconButton(
                            icon: Icon(Icons.menu, color: Colors.black),
                            iconSize: w*3,
                            onPressed: (){},
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: w*2, right: w*1),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        width: w*6,
                        height: w*6,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage("https://i.pinimg.com/originals/a2/4d/92/a24d92277a785fbce6181bfab3e2d758.jpg")
                        ),
                      ),

                      AppTextField(
                        color: Colors.white,
                        controller: myStatusController,
                        txtColor: Colors.black,
                        hint: "What is your mind, Ragnar ?",
                        fontSize: h*1.1,
                        borderColor: Colors.white,
                        iHeight: h*4,
                        iWidth: w*38,
                        context: context,
                        isPwd: false,
                        type: TextInputType.multiline,
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(w*1),
                          child: Row(
                            children: [
                              Icon(Icons.video_call, size: w*3.2, color: Colors.blue),
                              SizedBox(width: w*0.5),
                              Text("Live", style: TextStyle(fontSize: h*1, color: Colors.black)),
                            ],
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(w*1),
                          child: Row(
                            children: [
                              Icon(Icons.photo_library, size: w*3.2, color: Colors.blue),
                              SizedBox(width: w*0.5),
                              Text("Photos", style: TextStyle(fontSize: h*1, color: Colors.black)),
                            ],
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(w*1),
                          child: Row(
                            children: [
                              Icon(Icons.location_on, size: w*3.2, color: Colors.blue),
                              SizedBox(width: w*0.5),
                              Text("Location", style: TextStyle(fontSize: h*1, color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: h*0.5),

            storiesList(),

            SizedBox(height: h*1),

            (isChat) ? chatList() : postsList(),
          ],
        ),
      ),
    );
  }

  Widget storiesList()
  {
    return Container(
      height: h*10,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: this.storyItems.length,
          itemBuilder: (context, idx){
            return Container(
              width: w*14,
              padding: EdgeInsets.only(
                top: h*1,
                bottom: h*1,
                left: w*0.3,
                right: w*0.3
              ),
              color: Colors.blue[100],
              child: Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(
                      width: w*6,
                      height: w*6,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[600],
                        child: SizedBox(
                          width: w*5.3,
                          height: w*5.3,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(this.storyItems[idx].imgUrl),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: h*1),

                    Text(this.storyItems[idx].name, style: TextStyle(fontSize: h*0.9, color: Colors.blueGrey[800])),

                  ],
                ),

              ),
            );
          }
      ),
    );
  }

  postsList()
  {
    return Container(
      padding: EdgeInsets.only(bottom: h*4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: ListView.builder(
        itemCount: this.posts.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: h*2),
        itemBuilder: (context, idx)
        {
          return Container(
            padding: EdgeInsets.only(left: w*2, right: w*2, top: h*1),
            child: Column(
              children: [

                Row(
                  children: [

                    SizedBox(
                      width: w*6,
                      height: w*6,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(this.posts[idx].imgUrl),
                      ),
                    ),

                    SizedBox(width: w*1.5),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(this.posts[idx].name, style: TextStyle(fontSize: h*1.1, color: Colors.black, fontWeight: FontWeight.bold)),
                        SizedBox(height: h*0.2),
                        Text(this.posts[idx].iDuration, style: TextStyle(fontSize: h*0.9, color: Colors.grey[700])),
                      ],
                    ),

                  ],
                ),

                SizedBox(height: h*1),

                SizedBox(
                    width: w*50,
                    child: Text(this.posts[idx].postDetails, style: TextStyle(fontSize: h*1, color: Colors.black))
                ),

                SizedBox(height: h*0.5),

                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(this.posts[idx].postImgUrl),
                ),

                SizedBox(height: h*1),

                SizedBox(
                  width: w*50,
                  child: Divider(
                    color: Colors.blue[600],
                    thickness: h*0.018,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(w*1),
                        child: Row(
                          children: [
                            Image.asset("assets/images/likee.png", width: w*4, height: w*4),
                            SizedBox(width: w*0.5),
                            Text("Like", style: TextStyle(fontSize: h*1, color: Colors.black)),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(w*1),
                        child: Row(
                          children: [
                            Image.asset("assets/images/commentee.png", width: w*2.5, height: w*2.5),
                            SizedBox(width: w*1),
                            Text("Comment", style: TextStyle(fontSize: h*1, color: Colors.black)),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(w*1),
                        child: Row(
                          children: [
                            Image.asset("assets/images/sharee.png", width: w*2, height: w*2),
                            SizedBox(width: w*1),
                            Text("Share", style: TextStyle(fontSize: h*1, color: Colors.black)),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  width: w*50,
                  child: Divider(
                    color: Colors.blue[600],
                    thickness: h*0.018,
                  ),
                ),

                SizedBox(height: h*2),

              ],
            ),
          );
        },
      ),
    );
  }

  Widget chatList()
  {
    return Container(
      height: h*34,
      padding: EdgeInsets.only(bottom: h*4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: h*1),

          Padding(
            padding: EdgeInsets.only(left: w*2),
            child: Text("Chats", style: TextStyle(fontSize: h*1.6, color: Colors.black, fontWeight: FontWeight.bold)),
          ),

          SizedBox(height: h*0.5),

          ListView.builder(
            itemCount: this.posts.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(bottom: h*2),
            itemBuilder: (context, idx)
            {
              return Container(
                padding: EdgeInsets.only(left: w*2, right: w*2, top: h*1),
                child: Column(
                  children: [

                    Row(
                      children: [

                        Row(
                          children: [

                            SizedBox(
                              width: w*6,
                              height: w*6,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(this.posts[idx].imgUrl),
                              ),
                            ),

                            SizedBox(width: w*1.5),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(
                                  width: w*38,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(this.posts[idx].name, style: TextStyle(fontSize: h*1.1, color: Colors.black, fontWeight: FontWeight.bold)),

                                      (idx == 0) ? SizedBox() : SizedBox(
                                        width: w*3,
                                        height: w*3,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue[700],
                                          child: Text(idx.toString(), style: TextStyle(fontSize: h*0.8, color: Colors.white)),
                                        )
                                      ),

                                    ],
                                  ),
                                ),

                                SizedBox(height: h*0.2),

                                SizedBox(
                                  width: w*38,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(this.lastChats[idx], style: TextStyle(fontSize: h*1, color: Colors.grey[700])),
                                      Text(this.posts[idx].iDuration, style: TextStyle(fontSize: h*0.8, color: Colors.grey[600]))
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),


                      ],
                    ),

                    SizedBox(height: h*0.2),
                    SizedBox(
                      width: w*50,
                      child: Divider(
                        thickness: h*0.01,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}