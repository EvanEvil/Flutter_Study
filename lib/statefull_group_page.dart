




import 'package:flutter/material.dart';

///StatefullWidget与基础组件
///使用stf，stl快捷键创建 有状态，无状态的widget
///BottomNavigationBar的用法
class StateFullDemoWidget extends StatefulWidget {
  @override
  _StateFullDemoWidgetState createState() => _StateFullDemoWidgetState();
}

class _StateFullDemoWidgetState extends State<StateFullDemoWidget> {
  //记录当前底部索引位置
  int _currentIndex = 0;
  var textStyle = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter 基础布局',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("StatefullWidget与基础组件"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex, //当前选中的位置
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.list,
                    color: Colors.blue,
                  ),
                  title: Text('分类')),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: null,
          child: Text('点我'),),
          body: _currentIndex==0?
              RefreshIndicator(child: ListView(children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white), //背景色
                  alignment: Alignment.center, //居中
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          "http://www.xinhuanet.com/photo/2020-03/25/1125768073_15851490874881n.jpg",
                          width: 100,
                        height: 100,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          hintText: "请输入搜索词",
                          hintStyle: textStyle
                        ),
                      ),
                      Text(
                        "I am Text",
                        style: textStyle,
                      ),
                      Icon(Icons.android, size: 50, color: Colors.red),
                      CloseButton(), BackButton(),
                      Chip(label: Text("拨打电话"), avatar: Icon(Icons.photo)), //小部件
                      Divider(
                        color: Colors.red,
                        height: 10,
                      ), //容器高度，不是线的高度
                      Card(
                        //卡片布局，在列表中比较常使用
                        color: Colors.blue,
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "I am card",
                            style: textStyle,
                          ),
                        ),
                      ),
                      AlertDialog(
                        title: Text("温馨提醒"),
                        content: Text("美国新冠肺炎死亡40000人"),
                      )
                    ],
                  ),
                )
              ],), onRefresh: _handleRefresh)
              :Text("分类"),
        ));
  }


  Future<Null> _handleRefresh() async{
    //刷新，延迟2000ms后，停止刷新
    await Future.delayed(Duration(milliseconds: 2000));
    return null;
  }
}
