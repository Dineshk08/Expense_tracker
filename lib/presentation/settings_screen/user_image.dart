import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key,})
      : super(
          key: key,
        );




  @override
  State<StatefulWidget> createState() {
    return _Userimagepicker();
  }
}

class _Userimagepicker extends State<UserImagePicker> {
  File? _pickedImageFile;
  

  void _pickImage() async {
  final pickedImage = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    imageQuality: 50,
    maxWidth: 150,
  );

  if (pickedImage != null) {
    setState(() {
      _pickedImageFile = File(pickedImage.path);
    });

  }
}

 @override
Widget build(BuildContext context) {
  
  return Align(
    alignment: Alignment.topRight,
    child: Padding(
      padding: EdgeInsets.only(top: 50), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 80,
             backgroundColor: const Color.fromARGB(255, 67, 46, 46),
              foregroundImage: _pickedImageFile != null
                  ? FileImage(_pickedImageFile!)
                  : null,
          ),
          TextButton.icon(
            onPressed:() {
              _pickImage();
              
            },
            icon: const Icon(Icons.image),
            label: Text(""),
          )
        ],
      ),
    ),
  );
      }
  


}
