import 'package:flutter/material.dart';

import 'strings.dart';

class Profile extends StatefulWidget {
  int index;
  Profile(this.index);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    User user = makeUser(
      name: Infolar().userinfo[widget.index][0],
      surname: Infolar().userinfo[widget.index][1],
      year: Infolar().userinfo[widget.index][2],
      nickname: Infolar().userinfo[widget.index][3],
      image: Infolar().userinfo[widget.index][4],
      about: Infolar().userinfo[widget.index][5],
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: CustomScrollView(
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          slivers: [
            SliverAppBar(
              expandedHeight: 360,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 340,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.topRight,
                        child: Icon(Icons.settings),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(user.image),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Be",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.account_circle,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${user.name} ${user.surname}",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "UI/UX designer || Frontend developer",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.white,
                              ),
                              Text(
                                "Comilla,Bangladesh",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "223",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Aprecation",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "223",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "223",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Johnattan",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
        floatingActionButton: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 50,
          width: 200,
          child: Text(
            "Follow",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

User makeUser({name, surname, year, nickname, image, about}) {
  User user = User(
    name: name,
    surname: surname,
    year: year,
    nickname: nickname,
    image: image,
    about: about,
  );
  return user;
}

class User {
  String name;
  String surname;
  String year;
  String nickname;
  String image;
  String about;
  User(
      {this.about,
      this.image,
      this.name,
      this.nickname,
      this.surname,
      this.year});
}
