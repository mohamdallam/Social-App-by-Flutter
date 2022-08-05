import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/login_bloc/cubit.dart';
import 'package:social_app/bloc/login_bloc/states.dart';
import 'package:social_app/network/cachHelper.dart';
import 'package:social_app/screen/register.dart';
import 'package:social_app/screen/social_layout.dart';

import 'file:///S:/Games/flutter_project/social_app/lib/shared/widget/widget.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialLoginCubit, SocialLoginStates>(
        listener: (context, state) {

      if (state is SocialLoginErrorState)
      {
        showTost(
          text: state.error,
          state: ToastStates.ERROR,
        );
      }

      if (state is SocialLoginSuccessState)
      {
      CachHelper.saveData(
      key: 'uId',
      value: state.uId,
      ).then((value)
      {
      navigateAndFinish(context, SocialLayout());
      });
      }

    //   else {
    // print(state.loginModel.message);
    // showTost(
    // text: state.loginModel.message,
    // state: ToastStates.ERROR,
    // );
    // }


  }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      'Login Now To Browse Our Hot Offers',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),

///////////////////////////////////////////// Email //////////////////////////////////////////
                    defaultFormField(
                      type: TextInputType.emailAddress,
                      controller: emailController,
                      label: 'Email Address',
                      prifix: Icons.email,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Email';
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
////////////////////////////////////////////// Password //////////////////////////////////////////
                    defaultFormField(
                      type: TextInputType.visiblePassword,
                      suffix: SocialLoginCubit.get(context).suffix,
                      controller: passController,
                      label: 'Password',
                      prifix: Icons.lock_outline,
                      isPassword: SocialLoginCubit.get(context).isPassword,
                      suffixPressed: () {
                        SocialLoginCubit.get(context)
                            .changePasswordVisibility();
                      },
                      onSubmit: (value) {
                        if (formKey.currentState.validate()) {
                          print(emailController.text);
                          SocialLoginCubit.get(context).userLogin(
                            email: emailController.text,
                            password: passController.text,
                          );
                        }
                      },
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),

////////////////////////////////////////// Login Button /////////////////////////////////
                    ConditionalBuilder(
                      condition: state is! SocialLoginLoadingState,
                      builder: (context) => defaultButton(
                        text: 'Login',
                        isUpperCase: true,
                        function: () {
                          if (formKey.currentState.validate()) {
                            print(emailController.text);
                            SocialLoginCubit.get(context).userLogin(
                              email: emailController.text,
                              password: passController.text,
                            );
                          }
                        },
                      ),
                      fallback: (context) =>
                          Center(child: CircularProgressIndicator()),
                    ),
                    SizedBox(
                      height: 15,
                    ),
//////////////////////////////////////////  Don't Have An Account & Register /////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t Have An Account'),
                        defaultTextButton(
                          function: () {
                            navigateTo(context, SocialRegisterScreen());
                          },
                          text: 'Register',
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
    });
  }
}
