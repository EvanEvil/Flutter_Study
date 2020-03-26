
///定义dart类
class Person{
  String name;
  String age;
  ///标准构造方法
  Person(this.name, this.age);
  ///重写toString方法
  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

///继承
class Student extends Person{
  //通过下划线标识私有变量
  String _school;
  String city;
  String country;
  String name;

  ///标准构造方法
  ///通过this._school初始化自有参数，name,age交给父类进行初始化
  ///可选参数：使用{}，这里的city为可选参数
  ///默认参数：默认参数首先必须是可选参数,这里的country是默认参数
  Student(this._school,String name, String age,{this.city,this.country = "中国"}) :
        //参数初始化
        name = "$country.$city",
        super(name, age){
    //这里是构造方法体
    print("构造方法体不是必须的");
  }
  ///命名构造方法
  //类名+.+方法名
  //使用命名构造方法为类创建多个构造方法
  Student.cover(Student su):super(su.name,su.age);

}