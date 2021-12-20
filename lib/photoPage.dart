import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

class photoPage extends StatefulWidget {
  _photoPageState createState() => _photoPageState();
}
class _photoPageState extends State<photoPage> {
  //late List<Asset> resultList;
  var _imgPath;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _ImageView(_imgPath),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            getImages();
          },
          child: Icon(Icons.image)),

    );
  }
  Widget _ImageView(imgPath) {
    if(_imgPath == null) {
      return Center(
        child: Text("請選擇圖片或拍照"),
      );
    } else {
      return Image.file(_imgPath);
      // Image.file(imgPath);
      //Image.asset(img);
    }
  }
  getImages() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? tmp = await _picker.pickImage(source: ImageSource.gallery);
    //var xxx = await MultiImagePicker.pickImages(maxImages: 1);
    /*var tmp = await MultiImagePicker.pickImages(
      //selectedAssets: resultList,
      maxImages: 1,
      enableCamera: true,
      materialOptions: MaterialOptions(
        startInAllView: false,
        allViewTitle: '所有照片',
        actionBarColor: '#2196F3',
        textOnNothingSelected: '沒有選擇照片'
      ),
    );*/
    setState(() {
      _imgPath = File(tmp!.path);
    });
  }
}