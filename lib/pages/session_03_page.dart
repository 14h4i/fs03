import 'package:flutter/material.dart';
import 'package:fs03/models/chat_model.dart';
import 'package:fs03/models/user_model.dart';
import 'package:fs03/services/generate_model.dart';
import 'package:fs03/values/app_color.dart';
import 'package:fs03/values/app_icon.dart';
import 'package:fs03/values/app_json.dart';
import 'package:fs03/widgets/user_message_widget.dart';
import 'package:fs03/widgets/user_online_widget.dart';
import 'package:intl/intl.dart';

class Session03Page extends StatefulWidget {
  const Session03Page({Key? key}) : super(key: key);

  @override
  State<Session03Page> createState() => _Session03PageState();
}

class _Session03PageState extends State<Session03Page> {
  Users? _users;
  Chats? _chats;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      _users = await GenerateModel.jsonToUsers(AppJson.users);
      _chats = await GenerateModel.jsonToChats(AppJson.chats);
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.bgColor,
            expandedHeight: 168.0,
            snap: true,
            floating: true,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 10, bottom: 40),
              title: Text(
                'Messages',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
            ),
            leading: IconButton(
              icon: Image.asset(AppIcon.arrowLeft),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: Image.asset(AppIcon.plus),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 10),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 82,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _users != null ? _users!.results.length : 0,
                    itemBuilder: (context, index) {
                      if (_users != null) {
                        final user = _users!.results[index];
                        return UserOnlineWidget(
                          avatar: NetworkImage(user.picture!.medium!),
                          title: user.name!,
                          radiusAvatar: 30,
                          fontSizeTitle: 11,
                        );
                      }
                      return Container();
                    }),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              height: 30,
              thickness: 2,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (_chats != null) {
                    final chat = _chats!.results[index];
                    final user = chat.user!;
                    final time = chat.createdAt != null
                        ? DateFormat('hh:mma').format(chat.createdAt!)
                        : "";
                    return UserMessageWidget(
                      avatar: NetworkImage(user.picture!.medium!),
                      name: user.name!,
                      time: time,
                      message: chat.text!,
                      numberMessage: chat.unreadCount!,
                      fontSizeName: 17,
                      fontSizeTime: 13,
                    );
                  }
                },
                childCount: _chats != null ? _chats!.results.length : 0,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcon.streams),
            label: 'Streams',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcon.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcon.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcon.profiles),
            label: 'Profiles',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}
