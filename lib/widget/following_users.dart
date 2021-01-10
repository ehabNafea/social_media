import 'package:flutter/material.dart';
import 'package:social_media/data/data.dart';
import 'package:social_media/models/user_model.dart';

import '../constants.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Following', style: kHomeTitleStyle,),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 80.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return Container(
                margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: kBoxShadow,
                  border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2.0
                  ),
                ),
                child: ClipOval(
                  child: Image(
                    height: 60.0,
                    width: 60.0,
                    image: AssetImage(user.profileImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
