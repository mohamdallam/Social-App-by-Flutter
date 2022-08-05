import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/social/state.dart';
import 'package:social_app/model/social_user_model.dart';
import 'package:social_app/screen/bottom_nav_bar/chat.dart';
import 'package:social_app/screen/bottom_nav_bar/feeds.dart';
import 'package:social_app/screen/bottom_nav_bar/new_post.dart';
import 'package:social_app/screen/bottom_nav_bar/seeting.dart';
import 'package:social_app/screen/bottom_nav_bar/user.dart';
import 'file:///S:/Games/flutter_project/social_app/lib/shared/widget/widget.dart';

class SocialCubit extends Cubit<SocialState> {
  SocialCubit() : super(SocialInitialState());

  static SocialCubit get(context) => BlocProvider.of(context);

//////////////////////// Get User /////////////////////////////
  SocialUserModel userModel;

  void getUserData() {
    emit(SocialGetUserLoadingState());
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((value) {
      print('User Data ${value.data()}');
      userModel = SocialUserModel.fromJson(value.data());
      print('userModel :${userModel}');
      emit(SocialGetUserSuccessState());
    }).catchError((error) {
      print('Get User Data Error : ${error.toString()}');
      emit(SocialGetUserErrorState(error.toString()));
    });
  }

//////////////////////////////////////////////////////
  int currentIndex = 0;
  List<Widget> screens = [
    FeedsScreen(),
    ChatsScreen(),
    NewPostScreen(),
    UsersScreen(),
    SettingsScreen(),
  ];

  List <String> title=[
    'Home Screen',
    'Chats Screen',
    'Post',
    'Users',
    'Setting',
  ];

  void changeBottomNav(int index) {

    //if (index == 1) getUsers();
     if (index == 2)
       emit(SocialNewPostState());
     else {
      currentIndex = index;
      emit(SocialChangeBottomNavState());
     }
  }

}
