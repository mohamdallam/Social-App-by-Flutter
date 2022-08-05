
import 'package:flutter/material.dart';
import 'package:social_app/shared/style/icon_broken.dart';


class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5.0,
            margin: EdgeInsets.all(
              8.0,
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image(
                  image: NetworkImage(
                    'https://image.freepik.com/free-photo/horizontal-shot-smiling-curly-haired-woman-indicates-free-space-demonstrates-place-your-advertisement-attracts-attention-sale-wears-green-turtleneck-isolated-vibrant-pink-wall_273609-42770.jpg',
                  ),
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'communicate with friends',
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index)=> buildPostItem(context),
            separatorBuilder: (context,index)=>SizedBox(height: 10,),
            itemCount:10 ,
          ),
        ],
      ),
    );
  }


Widget buildPostItem(context) =>  Card(
  clipBehavior: Clip.antiAliasWithSaveLayer,
  elevation: 2.0,
  margin: EdgeInsets.symmetric(
    horizontal: 8,
  ),
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://image.freepik.com/free-photo/photo-attentive-handsome-bearded-young-guy-hold-phone-with-headphones-hands-concentrated-standing-purple-wall_295783-15020.jpg'),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Mohamed Allam",
                        style: TextStyle(
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                  Text(
                    "Jan 21,2021 at 11:00 pm",
                    style: Theme
                        .of(context)
                        .textTheme
                        .caption,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 20,
              ),
              onPressed: () {},
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          style: Theme
              .of(context)
              .textTheme
              .subtitle1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: double.infinity,
            child: Wrap(
              children: [
                Container(
                  height: 25,
                  child: MaterialButton(
                    minWidth: 1,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "#software",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  child: MaterialButton(
                    minWidth: 1,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "#software",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  child: MaterialButton(
                    minWidth: 1,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "#software",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  child: MaterialButton(
                    minWidth: 1,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "#software",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  child: MaterialButton(
                    minWidth: 1,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "#software development",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            image: DecorationImage(
              image: NetworkImage(
                'https://image.freepik.com/free-photo/portrait-positive-male-with-brunette-hair-bristle-has-piercing-wearing-black-sweater-holding-mobile-phone-copy-space-right-isolated-yellow-wall_295783-14551.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Row(
                    children: [
                      Icon(IconBroken.Heart, size: 16),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '120',
                        style: Theme
                            .of(context)
                            .textTheme
                            .caption,
                      )
                    ],
                  ),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(IconBroken.Chat, size: 20),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'comment',
                        style: Theme
                            .of(context)
                            .textTheme
                            .caption,
                      )
                    ],
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),

/////////////////
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(

                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://image.freepik.com/free-photo/portrait-positive-male-with-brunette-hair-bristle-has-piercing-wearing-black-sweater-holding-mobile-phone-copy-space-right-isolated-yellow-wall_295783-14551.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "write a comment...",
                      style: Theme
                          .of(context)
                          .textTheme
                          .caption,
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(IconBroken.Heart, size: 16),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'like',
                    style: Theme
                        .of(context)
                        .textTheme
                        .caption,
                  )
                ],
              ),
              onTap: () {},
            ),
          ],
        )
      ],
    ),
  ),
);

}
    // return BlocConsumer<SocialCubit, SocialState>(
    //   listener: (context, state) {},
    //   builder: (context, state)
    //   {
    //     return ConditionalBuilder(
    //       condition: SocialCubit.get(context).posts.length > 0 && SocialCubit.get(context).userModel != null,
    //       builder: (context) => SingleChildScrollView(
    //         physics: BouncingScrollPhysics(),
    //         child: Column(
    //           children:
    //           [
    //             Card(
    //               clipBehavior: Clip.antiAliasWithSaveLayer,
    //               elevation: 5.0,
    //               margin: EdgeInsets.all(
    //                 8.0,
    //               ),
    //               child: Stack(
    //                 alignment: AlignmentDirectional.bottomEnd,
    //                 children: [
    //                   Image(
    //                     image: NetworkImage(
    //                       'https://image.freepik.com/free-photo/horizontal-shot-smiling-curly-haired-woman-indicates-free-space-demonstrates-place-your-advertisement-attracts-attention-sale-wears-green-turtleneck-isolated-vibrant-pink-wall_273609-42770.jpg',
    //                     ),
    //                     fit: BoxFit.cover,
    //                     height: 200.0,
    //                     width: double.infinity,
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text(
    //                       'communicate with friends',
    //                       style: Theme.of(context).textTheme.subtitle1.copyWith(
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             ListView.separated(
    //               shrinkWrap: true,
    //               physics: NeverScrollableScrollPhysics(),
    //               itemBuilder: (context, index) => buildPostItem(SocialCubit.get(context).posts[index],context, index),
    //               separatorBuilder: (context, index) => SizedBox(
    //                 height: 8.0,
    //               ),
    //               itemCount: SocialCubit.get(context).posts.length,
    //             ),
    //             SizedBox(
    //               height: 8.0,
    //             ),
    //           ],
    //         ),
    //       ),
    //       fallback: (context) => Center(child: CircularProgressIndicator()),
    //     );
    //   },
    // );


// Widget buildPostItem(PostModel model, context, index) => Card(
//   clipBehavior: Clip.antiAliasWithSaveLayer,
//   elevation: 5.0,
//   margin: EdgeInsets.symmetric(
//     horizontal: 8.0,
//   ),
//   child: Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               radius: 25.0,
//               backgroundImage: NetworkImage(
//                 '${model.image}',
//               ),
//             ),
//             SizedBox(
//               width: 15.0,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         '${model.name}',
//                         style: TextStyle(
//                           height: 1.4,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       Icon(
//                         Icons.check_circle,
//                         color: defaultColor,
//                         size: 16.0,
//                       ),
//                     ],
//                   ),
//                   Text(
//                     '${model.dateTime}',
//                     style: Theme.of(context).textTheme.caption.copyWith(
//                       height: 1.4,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: 15.0,
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.more_horiz,
//                 size: 16.0,
//               ),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 15.0,
//           ),
//           child: Container(
//             width: double.infinity,
//             height: 1.0,
//             color: Colors.grey[300],
//           ),
//         ),
//         Text(
//           '${model.text}',
//           style: Theme.of(context).textTheme.subtitle1,
//         ),
//         // Padding(
//         //   padding: const EdgeInsets.only(
//         //     bottom: 10.0,
//         //     top: 5.0,
//         //   ),
//         //   child: Container(
//         //     width: double.infinity,
//         //     child: Wrap(
//         //       children: [
//         //         Padding(
//         //           padding: const EdgeInsetsDirectional.only(
//         //             end: 6.0,
//         //           ),
//         //           child: Container(
//         //             height: 25.0,
//         //             child: MaterialButton(
//         //               onPressed: () {},
//         //               minWidth: 1.0,
//         //               padding: EdgeInsets.zero,
//         //               child: Text(
//         //                 '#software',
//         //                 style:
//         //                     Theme.of(context).textTheme.caption.copyWith(
//         //                           color: defaultColor,
//         //                         ),
//         //               ),
//         //             ),
//         //           ),
//         //         ),
//         //         Padding(
//         //           padding: const EdgeInsetsDirectional.only(
//         //             end: 6.0,
//         //           ),
//         //           child: Container(
//         //             height: 25.0,
//         //             child: MaterialButton(
//         //               onPressed: () {},
//         //               minWidth: 1.0,
//         //               padding: EdgeInsets.zero,
//         //               child: Text(
//         //                 '#flutter',
//         //                 style:
//         //                     Theme.of(context).textTheme.caption.copyWith(
//         //                           color: defaultColor,
//         //                         ),
//         //               ),
//         //             ),
//         //           ),
//         //         ),
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         if(model.postImage != '')
//           Padding(
//             padding: const EdgeInsetsDirectional.only(
//                 top: 15.0
//             ),
//             child: Container(
//               height: 140.0,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(
//                   4.0,
//                 ),
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     '${model.postImage}',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 5.0,
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 child: InkWell(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 5.0,
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(
//                           IconBroken.Heart,
//                           size: 16.0,
//                           color: Colors.red,
//                         ),
//                         SizedBox(
//                           width: 5.0,
//                         ),
//                         Text(
//                           '${SocialCubit.get(context).likes[index]}',
//                           style: Theme.of(context).textTheme.caption,
//                         ),
//                       ],
//                     ),
//                   ),
//                   onTap: () {},
//                 ),
//               ),
//               Expanded(
//                 child: InkWell(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 5.0,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           IconBroken.Chat,
//                           size: 16.0,
//                           color: Colors.amber,
//                         ),
//                         SizedBox(
//                           width: 5.0,
//                         ),
//                         Text(
//                           '0 comment',
//                           style: Theme.of(context).textTheme.caption,
//                         ),
//                       ],
//                     ),
//                   ),
//                   onTap: () {},
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             bottom: 10.0,
//           ),
//           child: Container(
//             width: double.infinity,
//             height: 1.0,
//             color: Colors.grey[300],
//           ),
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: InkWell(
//                 child: Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 18.0,
//                       backgroundImage: NetworkImage(
//                         '${SocialCubit.get(context).userModel.image}',
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15.0,
//                     ),
//                     Text(
//                       'write a comment ...',
//                       style:
//                       Theme.of(context).textTheme.caption.copyWith(),
//                     ),
//                   ],
//                 ),
//                 onTap: () {},
//               ),
//             ),
//             InkWell(
//               child: Row(
//                 children: [
//                   Icon(
//                     IconBroken.Heart,
//                     size: 16.0,
//                     color: Colors.red,
//                   ),
//                   SizedBox(
//                     width: 5.0,
//                   ),
//                   Text(
//                     'Like',
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                 ],
//               ),
//               onTap: ()
//               {
//                 SocialCubit.get(context).likePost(SocialCubit.get(context).postsId[index]);
//               },
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// );

