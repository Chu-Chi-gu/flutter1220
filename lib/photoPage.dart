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
    var photo_size = 400.0;
    var r=100, g=100, b=100;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: photo_size,
              width: photo_size,
              margin: const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: _ImageView(_imgPath),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                height: photo_size/10,
                width: photo_size/1.5,
                color: Color.fromRGBO(r, g, b, 1),
              ),
            ),

            Container(
              width: photo_size/1.5,
              //color: Colors.red,
              //alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(right: 125),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text('R'+r.toString(),style: TextStyle(fontSize: 20)),
                      flex: 1,
                  ),
                  Expanded(
                      child: Text('G',style: TextStyle(fontSize: 20),),
                      flex: 1,
                  ),
                  Expanded(
                      child: Text('B',style: TextStyle(fontSize: 20),),
                      flex: 0,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: OutlineButton(
                child: Text('儲存'),
                onPressed: save,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed:() {
              getImages_gallery();
            },
            child: Icon(Icons.image),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed:() {
              getImages_camera();
            },
            child: Icon(Icons.camera),
          ),
        ],
      ),
    );
  }
  void save() {

  }
  Widget _ImageView(imgPath) {
    if(_imgPath == null) {
      return Center(
        child: Text("請選擇圖片或拍照", style: TextStyle(fontSize: 24),),
      );
    } else {
      return Image.file(_imgPath);
      // Image.file(imgPath);
      //Image.asset(img);
    }
  }
  getImages_gallery() async {
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
  getImages_camera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? tmp = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = File(tmp!.path);
    });
  }
}