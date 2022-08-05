import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:social_app/bloc/social/cubit.dart';
import 'package:social_app/bloc/social/state.dart';
import 'package:social_app/shared/style/icon_broken.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return BlocConsumer<SocialCubit,SocialState>(
        listener:(context,state){

        } ,
          builder: (context,state){
          var userModel =SocialCubit.get(context).userModel;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 180,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          height: 140,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                              image: NetworkImage('https://image.freepik.com/free-photo/photo-attentive-handsome-bearded-young-guy-hold-phone-with-headphones-hands-concentrated-standing-purple-wall_295783-15020.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 61,
                        backgroundColor:
                        Theme.of(context).scaffoldBackgroundColor,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                            'https://image.freepik.com/free-photo/photo-attentive-handsome-bearded-young-guy-hold-phone-with-headphones-hands-concentrated-standing-purple-wall_295783-15020.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${userModel.email}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text("qq",
                    style: Theme.of(context).textTheme.caption),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text(
                              "post",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text(
                              "post",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text(
                              "post",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text(
                              "post",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Add Photos',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    OutlinedButton(
                      // onPressed: () {
                      //   navigateTo(context, EditProfileScreen(),);
                      // },
                      child: Icon(
                        IconBroken.Edit,
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
          },
        );
    // return BlocConsumer<SocialCubit, SocialState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     var userModel = SocialCubit.get(context).model;
    //     return Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Column(
    //         children: [
    //           Container(
    //             height: 180,
    //             child: Stack(
    //               alignment: AlignmentDirectional.bottomCenter,
    //               children: [
    //                 Align(
    //                   alignment: AlignmentDirectional.topCenter,
    //                   child: Container(
    //                     height: 140,
    //                     width: double.infinity,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.only(
    //                           topLeft: Radius.circular(4),
    //                           topRight: Radius.circular(4)),
    //                       image: DecorationImage(
    //                         image: NetworkImage('https://www.freepik.com/free-photo/cool-looking-male-handsome-guy-with-blond-hair-wearing-brown-sweater-glasses-has-braces_13737950.htm?query=person'),
    //                         fit: BoxFit.cover,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 CircleAvatar(
    //                   radius: 61,
    //                   backgroundColor:
    //                       Theme.of(context).scaffoldBackgroundColor,
    //                   child: CircleAvatar(
    //                     radius: 60,
    //                     backgroundImage: NetworkImage(
    //                       '${userModel.image}',
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 5,
    //           ),
    //           Text(
    //             "${userModel.name}",
    //             style: Theme.of(context).textTheme.bodyText1,
    //           ),
    //           Text("${userModel.bio}",
    //               style: Theme.of(context).textTheme.caption),
    //           Row(
    //             children: [
    //               Expanded(
    //                 child: InkWell(
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         "100",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                       Text(
    //                         "post",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                     ],
    //                   ),
    //                   onTap: () {},
    //                 ),
    //               ),
    //               Expanded(
    //                 child: InkWell(
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         "100",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                       Text(
    //                         "post",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                     ],
    //                   ),
    //                   onTap: () {},
    //                 ),
    //               ),
    //               Expanded(
    //                 child: InkWell(
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         "100",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                       Text(
    //                         "post",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                     ],
    //                   ),
    //                   onTap: () {},
    //                 ),
    //               ),
    //               Expanded(
    //                 child: InkWell(
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         "100",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                       Text(
    //                         "post",
    //                         style: Theme.of(context).textTheme.subtitle2,
    //                       ),
    //                     ],
    //                   ),
    //                   onTap: () {},
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Row(
    //             children: [
    //               Expanded(
    //                 child: OutlinedButton(
    //                   onPressed: () {},
    //                   child: Text(
    //                     'Add Photos',
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: 10.0,
    //               ),
    //               OutlinedButton(
    //                 // onPressed: () {
    //                 //   navigateTo(context, EditProfileScreen(),);
    //                 // },
    //                 child: Icon(
    //                   IconBroken.Edit,
    //                   size: 16.0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );


  }
}
