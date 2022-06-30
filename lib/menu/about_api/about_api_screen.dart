import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_adoption_app/menu/about_api/dialog_style.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutApiPage extends StatefulWidget {
  const AboutApiPage({Key? key}) : super(key: key);

  @override
  State<AboutApiPage> createState() => _AboutApiPageState();
}

class _AboutApiPageState extends State<AboutApiPage> {
  late YoutubePlayerController controller;
  final commentController = TextEditingController();
  bool isLiked = false;
  bool isDisliked = false;

  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=rSGsnGBcJs8';

    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(
            child: Text(
              'About RescueGroups',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                FontAwesomeIcons.youtube,
                color: Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  player,
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Like",
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).primaryColor),
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            icon: (() {
                              if (isLiked == false) {
                                return Icon(
                                  Icons.thumb_up_off_alt,
                                  color: Theme.of(context).primaryColor,
                                );
                              } else {
                                return Icon(
                                  Icons.thumb_up,
                                  color: Theme.of(context).primaryColor,
                                );
                              }
                            }()),
                            iconSize: 40,
                            onPressed: () {
                              setState(() {
                                isDisliked == true
                                    ? isLiked = isLiked
                                    : isLiked = !isLiked;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: (() {
                              if (isDisliked == true && isLiked == false) {
                                return Icon(
                                  Icons.thumb_down,
                                  color: Theme.of(context).primaryColor,
                                );
                              } else {
                                return Icon(
                                  Icons.thumb_down_off_alt,
                                  color: Theme.of(context).primaryColor,
                                );
                              }
                            }()),
                            iconSize: 40,
                            onPressed: () {
                              setState(() {
                                isLiked == true
                                ? isDisliked = isDisliked
                                : isDisliked = !isDisliked;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Dislike",
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Write a comment",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w200,
                        color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(height: 25),
                  TextField(
                    controller: commentController,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Comment',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          commentController.clear();
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) => DialogStyle(),
                          );
                        },
                        icon: Icon(
                          Icons.send,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          minimumSize: const Size(120, 40),
                          maximumSize: const Size(120, 40),
                        ),
                        label: Text(
                          'Send',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 25),
                      ElevatedButton.icon(
                        onPressed: () {
                          commentController.clear();
                        },
                        icon: Icon(
                          Icons.cancel_outlined,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          minimumSize: const Size(120, 40),
                          maximumSize: const Size(120, 40),
                        ),
                        label: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
