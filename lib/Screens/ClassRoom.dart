import 'package:flutter/material.dart';  


class ClassRoom extends StatelessWidget {
  const ClassRoom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemBuilder: (BuildContext, index){
          return Card(
            child: ListTile(
              // leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
              title: Text("classroom"),onTap: (){},
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        // itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      )
    );
  }
}







