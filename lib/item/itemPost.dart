import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/post_model.dart';

Widget itemOfPost(BuildContext context, PostModel post) {
  return Container(
    color: Colors.white,
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Stack(
          children: [
            FadeInImage(
              image: AssetImage(post.postImage),
              placeholder: const AssetImage("assets/images/placeholder.png"),
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
                child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.black.withOpacity(0.2),
            )),
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: AssetImage(post.userImage),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          post.username,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: Colors.grey.shade900,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Container(
                                            width: 25,
                                            height: 3,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade800,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.share_outlined,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.link,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.save_alt,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons
                                                          .change_circle_outlined,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.qr_code_scanner,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Share',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Colors.black12,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Add to Follower',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.person_remove,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Unfollow',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.notification_important,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Why you re seeing this post',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.highlight_off_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Add to Follower',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.report,
                                                  color: Color.fromARGB(
                                                      255, 155, 22, 12),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Add to Follower',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 165, 22, 12)),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                               SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.report,
                                                  color: Color.fromARGB(
                                                      255, 155, 22, 12),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Add to Follower',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 165, 22, 12)),
                                                )
                                              ],
                                            )
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
            ),
          ],
        ),

        // #tags
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Liked By ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Sigmund, Yessenia, Dayana",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                  text: " and",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: " 1263 others",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
        ),

        // #caption
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 5,
          ),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.username,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                  text: post.caption,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),

        // #post date
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          alignment: Alignment.topLeft,
          child: const Text(
            "February 2022",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
