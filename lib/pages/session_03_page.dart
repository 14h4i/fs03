import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fs03/models/chat_model.dart';
import 'package:fs03/models/user_model.dart';
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
  List<User> _users = [];
  List<Chat> _chats = [];
  int _selectedIndex = 2;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      _users = jsonDecode(await rootBundle.loadString(AppJson.users))['results']
          .map<User>((json) => User.fromJson(json))
          .toList();
      _chats = jsonDecode(await rootBundle.loadString(AppJson.chats))['results']
          .map<Chat>((json) => Chat.fromJson(json))
          .toList();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                    itemCount: _users.length,
                    itemBuilder: (context, index) {
                      if (_users.isNotEmpty) {
                        final user = _users[index];
                        return UserOnlineWidget(
                          avatar: NetworkImage(user.picture!.medium!),
                          title: user.name!,
                          radiusAvatar: 30,
                          fontSizeTitle: 11,
                          status: user.status!,
                        );
                      }
                      return Container();
                    }),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _users.isNotEmpty
                ? const Divider(
                    height: 30,
                    thickness: 2,
                  )
                : Container(),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (_chats.isNotEmpty) {
                    final chat = _chats[index];
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
                childCount: _chats.length,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: AppColor.bgColorBt,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.home,
              color: AppColor.grey,
            ),
            activeIcon: Image.asset(
              AppIcon.home,
              color: AppColor.pink,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.streams,
              color: AppColor.grey,
            ),
            activeIcon: Image.asset(
              AppIcon.streams,
              color: AppColor.pink,
            ),
            label: 'Streams',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.message,
              color: AppColor.grey,
            ),
            activeIcon: Image.asset(
              AppIcon.message,
              color: AppColor.pink,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.notifications,
              color: AppColor.grey,
            ),
            activeIcon: Image.asset(
              AppIcon.notifications,
              color: AppColor.pink,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcon.profiles,
              color: AppColor.grey,
            ),
            activeIcon: Image.asset(
              AppIcon.profiles,
              color: AppColor.pink,
            ),
            label: 'Profiles',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.pink,
        unselectedItemColor: AppColor.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
