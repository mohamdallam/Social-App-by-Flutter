
import 'package:flutter/material.dart';


class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Chat Screen");
    // return BlocConsumer<SocialCubit, SocialState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     return ConditionalBuilder(
    //       condition: SocialCubit.get(context).users.length > 0,
    //       builder: (context) => ListView.separated(
    //         physics: BouncingScrollPhysics(),
    //         itemBuilder: (context, index) =>
    //             buildChatItem(SocialCubit.get(context).users[index], context),
    //         separatorBuilder: (context, index) => myDivider(),
    //         itemCount: SocialCubit.get(context).users.length,
    //       ),
    //       fallback: (context) => Center(child: CircularProgressIndicator()),
    //     );
    //   },
    // );
  }

  // Widget buildChatItem(SocialUserModel model, context) => InkWell(
  //   onTap: () {
  //     navigateTo(
  //       context,
  //       ChatDetailsScreen(
  //         userModel: model,
  //       ),
  //     );
  //   },
  //   child: Padding(
  //     padding: const EdgeInsets.all(20.0),
  //     child: Row(
  //       children: [
  //         CircleAvatar(
  //           radius: 25.0,
  //           backgroundImage: NetworkImage(
  //             '${model.image}',
  //           ),
  //         ),
  //         SizedBox(
  //           width: 15.0,
  //         ),
  //         Text(
  //           '${model.name}',
  //           style: TextStyle(
  //             height: 1.4,
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // );
}