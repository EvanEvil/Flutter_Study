import 'package:flutter/material.dart';

class DartType extends StatefulWidget {
  @override
  _DartTypeState createState() => _DartTypeState();
}

class _DartTypeState extends State<DartType> {
  @override
  Widget build(BuildContext context) {
//    _numType();
//  _stringType();
//  _boolType();
//    _listType();
//  _mapType();
  _tips();
    return Container(
      child: Text("数据类型，看控制台"),
    );
  }

  void _numType() {
    num num1 = -1.5;
    int num2 = 1;
    double num3 = 1.4;

    print("num1=$num1,num2=$num2,num3=$num3");
    //求绝对值
    print("$num1的绝对值是${num1.abs()}");
    //数据类型转换
    print("$num1的转为整数是${num1.toInt()}");
    print("$num1四舍五入是${num1.round()}");
  }

  void _stringType() {
    String str1 = '字符串', str2 = "双引号";
    String str3 = "str1:$str1 str2:$str2";
    print("str1=$str1"); //演示字符串拼接
    print("str2=$str2");
    print("str3=$str3");

    String str = "Hello WROLD";
    print(str.toUpperCase());
    print(str.toLowerCase());
    print(str.substring(0, 5));
    print(str.indexOf('e'));
  }

  ///布尔类型，使用bool定义
  void _boolType() {
    bool success = true;
    bool failure = false;
    print(success || failure);
    print(success && failure);
  }

  void _listType() {
    List list = [1, 2, 3, "哈哈"]; //不限制泛型
//    print(list);
    List<int> list2 = [1, 3, 5, 7, 9]; //限制泛型
//    print(list2);
//    list2 = list;
//    list = list2;

    List list3 = [];
    list3.add("hello");
    list3.add("world");
    list3.addAll(list);

    List list4 = List.generate(3, (index) => index * 2);
//    print(list4);//[0, 2, 4]

//    for (var value in list4) {
//      print("遍历：$value");
//    }

    for(int i=0; i<list4.length;i++){
      int a = list4[i];
      print("$a");
    }
    
    list4.forEach((value){
      print(value);
    });
  }

  void _mapType() {
    Map map1 = {"1":"小明","2":"小王"};
    print(map1);

    map1.forEach((k,v){
      print("$k -- $v");
    });
  }

  void _tips() {
    dynamic x = "xxx";
    print(x);//xxx
    print(x.runtimeType);//String


    x = 1;
    print(x);//1
    print(x.runtimeType);//int

    var s = "hello";
//    s = 1;//编译错误，不能再次赋值

  Object obj = "hello";
  print(obj);
  print(obj.runtimeType);

//   obj.foo();
  }
}
