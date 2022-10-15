import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey.withOpacity(0.2),
        child: Column(
          children: [
            //1st part
            Container(
              margin: EdgeInsets.only(top: 15),
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * .13,
                          height: MediaQuery.of(context).size.height * .1,
                          color: Colors.transparent,
                          child: Image.network(
                              "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1361&q=80"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adeline O'Reilly",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Verified user . Membership",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Set a Status",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(0.2),
                            indent: 48.0,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Snooze Notifications",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //1st part end
            //2nd part start
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.31,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/2098/2098725.png",
                                fit: BoxFit.cover,
                                height: 20,
                              ),
                            ),
                          ),
                          Text(
                            "Activity",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.2),
                      indent: 70.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/1040/1040230.png",
                                fit: BoxFit.cover,
                                height: 20,
                              ),
                            ),
                          ),
                          Text(
                            "Starred items",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.2),
                      indent: 70.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/2832/2832732.png",
                                fit: BoxFit.cover,
                                height: 20,
                              ),
                            ),
                          ),
                          Text(
                            "Your Files",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 90),
                            child: Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.2),
                      indent: 70.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: Image.network(
                                "https://cdn-icons-png.flaticon.com/512/3856/3856526.png",
                                fit: BoxFit.cover,
                                height: 20,
                              ),
                            ),
                          ),
                          Text(
                            "Diectory",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Text(
                              "24",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.withOpacity(0.9)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //2nd part end
            //3rd part start
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.23,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_add_alt_rounded,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Invite People",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.2),
                      indent: 48.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Edit profile",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.2),
                      indent: 48.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(fontSize: 18),
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
    );
  }
}
