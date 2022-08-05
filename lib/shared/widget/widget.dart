import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => widget),
);

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
);


//////////////////////////// Tost ////////////////////////////

void showTost({
  @required String text,
  @required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: choseToastColor(state),
      textColor: Colors.white,
      fontSize: 10.0,
    );

enum ToastStates { SUSCCESS, ERROR, WARNING }

Color choseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUSCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

///////////////////////////////////////////////////////////////////


Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required String hint,
  @required String label,
  @required IconData prifix,
  IconData suffix,
  @required Function validate,
  bool isPassword = false,
  Function onSubmit,
  Function onChange,
  Function suffixPressed,
  Function onTap,
}) {
  return TextFormField(
    obscureText: isPassword,
    controller: controller,
    keyboardType: type,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    validator: validate,
    onTap: onTap,
    decoration: InputDecoration(
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(prifix),
      suffixIcon: suffix != null
          ? IconButton(
        onPressed: suffixPressed,
        icon: Icon(suffix),
      )
          : null,
      border: OutlineInputBorder(),
    ),
  );
}

/////////////////////////////////////////////////////

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  @required Function function,
  @required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

///////////////////////////////////////////////////////

Widget defaultTextButton({
  @required Function function,
  @required String text,
}) {
  return TextButton(
    child: Text(text),
    onPressed: function,
  );
}

////////////////////////////////////////////////////////////
Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);
///////////////////////////////////////////////
String token='';
String uId='';

///////////////////////////////////////////////////////