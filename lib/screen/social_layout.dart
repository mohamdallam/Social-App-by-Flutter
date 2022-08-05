import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/social/cubit.dart';
import 'package:social_app/bloc/social/state.dart';
import 'package:social_app/screen/bottom_nav_bar/new_post.dart';
import 'package:social_app/shared/style/icon_broken.dart';
import 'package:social_app/shared/widget/widget.dart';


class SocialLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (context, state) {
        if(state is SocialNewPostState)
        {
          navigateTo(context, NewPostScreen());
        }
      },
      builder: (context, state) {
        var cubit = SocialCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.title[cubit.currentIndex],),
            actions: [
              IconButton(
                icon: Icon(
                  IconBroken.Notification,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  IconBroken.Search,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Chat,
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Paper_Upload,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Location,
                ),
                label: 'Users',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Setting,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}

// class SocialLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context)
//   {
//
//     return BlocConsumer<SocialCubit, SocialState>(
//       listener: (context, state) {
//         if (state is SocialNewPostState) {
//           navigateTo(
//             context,
//             NewPostScreen(),
//           );
//         }
//       },
//       builder: (context, state)
//       {
//         var cubit = SocialCubit.get(context);
//
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(
//               cubit.titles[cubit.currentIndex],
//             ),
//             actions: [
//               IconButton(
//                 icon: Icon(
//                   IconBroken.Notification,
//                 ),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: Icon(
//                   IconBroken.Search,
//                 ),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//           body: cubit.screens[cubit.currentIndex],
//           bottomNavigationBar: BottomNavigationBar(
//             currentIndex: cubit.currentIndex,
//             onTap: (index)
//             {
//               cubit.changeBottomNav(index);
//             },
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   IconBroken.Home,
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   IconBroken.Chat,
//                 ),
//                 label: 'Chats',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   IconBroken.Paper_Upload,
//                 ),
//                 label: 'Post',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   IconBroken.Location,
//                 ),
//                 label: 'Users',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   IconBroken.Setting,
//                 ),
//                 label: 'Settings',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class SocialLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SocialCubit, SocialState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text('News Feed'),
//           ),
//           body: ConditionalBuilder(
//             condition: SocialCubit.get(context).model != null,
//             fallback: (context) => CircularProgressIndicator(),
//             builder: (context) {
//               var model = FirebaseAuth.instance.currentUser.emailVerified;
//               return Column(
//                 children: [
//                   if (!model)
//                     Container(
//                       color: Colors.amber.withOpacity(.6),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Row(
//                           children: [
//                             Icon(Icons.info_outline),
//                             SizedBox(
//                               width: 15,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Please Verify Your Email",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             defaultTextButton(
//                               function: () {
//                                 FirebaseAuth.instance.currentUser
//                                     .sendEmailVerification()
//                                     .then((value) {
//                                   showTost(
//                                     text: 'Check Your Email',
//                                     state: ToastStates.SUSCCESS,
//                                   );
//                                 }).catchError((error) {});
//                               },
//                               text: 'Send',
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                 ],
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
