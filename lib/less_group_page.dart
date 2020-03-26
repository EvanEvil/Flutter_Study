import 'package:flutter/material.dart';


///StatelessWidget与基础组件
class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 20);

    return MaterialApp(
        title: 'Flutter 基础布局',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("StatelessWidget与基础组件"),
          ),
          body: Container(
            decoration: BoxDecoration(color: Colors.white),//背景色
            alignment: Alignment.center,//居中
            child: Column(
              children: <Widget>[
                Text("I am Text",style: textStyle,),
                Icon(Icons.android,size: 50,color: Colors.red),
                CloseButton(),BackButton(),
                Chip(label: Text("拨打电话"),avatar:Icon(Icons.photo)),//小部件
                Divider(color: Colors.red,height: 10,),//容器高度，不是线的高度
                Card(//卡片布局，在列表中比较常使用
                  color: Colors.blue,
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("I am card",style: textStyle,),
                  ),
                ),
                AlertDialog(
                  title: Text("温馨提醒"),
                  content: Text("美国新冠肺炎死亡40000人"),
                )
              ],
            ),
          ),
        ));
  }
}
