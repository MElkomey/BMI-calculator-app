
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


///////////////////////////////////////////////////////////////////////////
                                                           ///moragaa //

Widget defButton({
  required String text,
  required function,
  required Color bachground,
  double width=double.infinity,
  double height=40.0,
  double radis=0.0,
  bool toUppercase=false,

})=>
Container(
  decoration: BoxDecoration(
    color: bachground,
    borderRadius: BorderRadius.circular(radis)
  ),
  width: width,
  height: height,
  child: MaterialButton(
   onPressed: function,
    child:Text(
        toUppercase? text.toUpperCase():text,
    ),

  ),
);


/////////////////////////////////////////////////////////////////////////
                                                           ///moragaa///
Widget defTextForm({
  required validte,
  required TextInputType typ,
  required TextEditingController contrl,
  required String label,
  required IconData prefix ,
  var onfieldsubmit,
  var onChnged,
  var suffixPressed,
  bool obsecure=false,
  IconData? suffix,
})=>
    TextFormField(
  validator:validte,
  obscureText: obsecure,
  onFieldSubmitted: onfieldsubmit,
  onChanged:onChnged ,
  controller: contrl,
  keyboardType:typ ,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: label,
    prefixIcon: Icon(
        prefix
    ),
    suffix: suffix!=null? IconButton(
        onPressed: suffixPressed,
        icon: Icon(suffix)):null,

  ),
);


/////////////////////////////////////////////////////////////////////////



























////////////////////////////////////////////////////////////////////////////////
Widget defalultButton({                            ///Material button///
  double raidos =0.0,
  double height=40.0,
  double width= double.infinity,
  Color background= Colors.blue,
  required  function,
  required String text,
  bool toUpperCase=true,
})
=> Container(
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(raidos),
  ),
  height: height,
  width: width,
  child: MaterialButton(
    onPressed: function,
    child:Text(
        toUpperCase? text.toUpperCase():text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),

  ),
);

////////////////////////////////////////////////////////////////////////////////
Widget defaultTextForm(                           ///TextFormField///
{
   onSubmitd,
   oncnged,
  bool isPasswrd=false,
  IconData? suffix,
  required TextEditingController contrl,
  required TextInputType typ,
  required validte ,
  required String labell,
  required IconData prefix,
  suffixPressed,


}
)=>
    TextFormField(
  onFieldSubmitted: onSubmitd,
  onChanged:oncnged ,
  controller: contrl,
  keyboardType:typ ,
  obscureText: isPasswrd? true:false,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: labell,
    prefixIcon: Icon(
        prefix
    ),

    suffixIcon: (suffix != null ? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,
      ),
    ): null),
  ),
  validator: validte,
);








































































































// import 'package:flutter/material.dart';
//
// Widget defaultButton({
//   double width = double.infinity,
//   Color background = Colors.blue,
//   bool isUpperCase = true,
//   double radius = 3.0,
//   required Function function,
//   required String text,
// }) =>
//     Container(
//       width: width,
//       height: 50.0,
//       child: MaterialButton(
//         onPressed: function(),
//         child: Text(
//           isUpperCase ? text.toUpperCase() : text,
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           radius,
//         ),
//         color: background,
//       ),
//     );
//
// Widget defaultFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   required Function onSubmit,
//   required Function onChange,
//   required Function onTap,
//   bool isPassword = false,
//   required Function validate,
//   required String label,
//   required IconData prefix,
//   required Function suffixPressed,
//   required IconData suffix,
//   bool isClickable = true,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: type,
//       obscureText: isPassword,
//       enabled: isClickable,
//       onFieldSubmitted: onSubmit(),
//       onChanged: onChange(),
//       onTap: onTap(),
//       validator: validate(),
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(
//           prefix,
//         ),
//         suffixIcon: suffix != null
//             ? IconButton(
//           onPressed: suffixPressed(),
//              icon: Icon(
//             suffix,
//           ),
//         )
//             : null,
//         border: OutlineInputBorder(),
//       ),
//     );