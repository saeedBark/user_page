import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  Widget bulidUserItem ( UserModel user) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text('${user.id}'),

        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${user.name}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('${user.phone}',style: TextStyle(color: Colors.grey),)
          ],
        ),
      ],
    ),
  );

  List<UserModel> users = [
    UserModel(id: 1, name: 'Saeed Bark', phone: '+22226844484'),
    UserModel(id: 2, name: 'Salem mohammed', phone: '+222267844484'),
    UserModel(id: 3, name: 'Ahmed Blal', phone: '+22226844458'),
    UserModel(id: 4, name: 'Osamah Anwr ', phone: '+22226791484'),
    UserModel(id: 5, name: 'Ibrahim Amar ', phone: '+22224814484'),
    UserModel(id: 6, name: 'Mohammed Bhibh ', phone: '+22286514484'),
    UserModel(id: 7, name: 'Salh Ahmed ', phone: '+22236984484'),
    UserModel(id: 8, name: 'Amar yosf ', phone: '+22248584484'),
    UserModel(id: 9, name: 'Mobark Akram ', phone: '+22236484484'),
  ];



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Text('User'),
         ),
         body: ListView.separated(itemBuilder: (context,index) => bulidUserItem (users[index]) ,
             separatorBuilder: (context,index) => Padding(
               padding: const EdgeInsetsDirectional.only(start: 8.0),
               child: Container(
                 width: double.infinity,
                 color: Colors.grey[300],
                 height: 1,
               ),
             ),
             itemCount: users.length),
       ),
    );
  }
}
// model
class UserModel{
  final int? id;
  final String? name;
  final String? phone;

  UserModel({
   @required this.id,
   @required this.name,
   @required  this.phone,
});


}