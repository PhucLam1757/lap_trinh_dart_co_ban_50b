import "dart:io";
import "dart:math";

// bài 1 in ra màn hình mấy năm nữa thì 100 tuổi
void tuoi(){
  print("Tên bạn là gì");
  String name = stdin.readLineSync()!;
  print("bạn mấy tuổi");
  int age = int.parse(stdin.readLineSync()!);
  print("xin chào $name, ${100-age} năm nữa bạn 100 tuổi");
}
// bài 2 nhập vào số nguyên in ra chẵn hay lẻ
void chanle(){
  print(" Nhập vào số nguyên để tao tính: ");
  int num = int.parse(stdin.readLineSync()!);
  String a = (num%2) == 0?"chẵn":"lẻ";
  print(a);
}
// bài 3 tất cả các số nguyên dương lẻ <100
void sole_nho_hon_100(){

  for(var i=0; i<100;i++) {
    if (i %2 !=0){
      print(i);
    }
  }
}
//bài 4 tất cả số lẻ nhỏ hơn 100 trừ 5, 7 , 93
void sole_list() {
  List<int> num_check = const [5,7,93];
  for(int i =0; i <100; i++){
    var t_f = (i%2!=0 && !num_check.contains(i));
    if(t_f){
      print(i);
  }
  }
}
//bài 5 tìm số lớn nhất a,b,c
// từ khóa dart list sort desending/asendign ngược/xuôi

void main(){
  double a= 1.2,b=3.5,c=6.7;
  List<double> num = [a,b,c];
  num.sort((a,b){
    return a.compareTo(b);
  });

  print(num);
  print(num.first);
  // print(((a>b)?a:b)>c?(a>b)?a:b:c);

}void bai6(){
  double a = 1.2, b = 1.6;
  if(a*b>0){
    print(" a và b cùng dấu");

  }
  else{
    print("a,b khác dấu");
  }
}
void bai7() {
  print("nhập sô: ");
  var a = stdin.readLineSync();
  double b = double.parse(a!);
  var c = b%10;
  var d = (b~/10)%10;
  var e = (b~/100)%10;
  var map = {
    1:"một",
    2:"hai",
    3:"ba",
    4: "bốn",
    5: "năm",
    6:"sáu",
    7:"bảy",
    8:"tám",
    9:"chín",
    0:"0",
  };
  if(c !=0){
    print("${map[e]} trăm ${map[d]} mươi ${map[c]} ");}
  else if(d==1){
    print("${map[e]} trăm mười ");
  }
  else{
    print("${map[e]} trăm ${map[d]} mươi ");
  }
}
// bài 8
bai8(){
  print("nhập vào số dự đoán: ");
  int a = int.parse(stdin.readLineSync()!);

  int rdom = Random().nextInt(100);
  if(a==rdom){
    print('dự đoán chính xác');
  }
  else{
    print("số dự đoán ${a>rdom?"lớn hơn":"nhỏ hơn"}");
    print("đoán lại 1 lần nữa: ");
    int b= int.parse(stdin.readLineSync()!);
    if(b==rdom){
      print("dự đoán đúng");
          
    }
    else{
      print("dự đoán sai");
      print("số dự đoán ${b>rdom?"lớn hơn":"nhỏ hơn"}");
    }
    print("số chính xác là $rdom");
  }
}
// bài 9
void bai9() {
  stdout.write('Mời bạn nhập ngày tháng theo định dạng YYYY-MM-DD, ví dụ 2021-05-27: ');
  DateTime n = DateTime.parse(stdin.readLineSync()!);
  print(n.day);
  switch(n.weekday){
    case 1: { print('Ngày $n là thứ Hai!'); break;}
    case 2: { print('Ngày $n là thứ Ba!'); break;}
    case 3: { print('Ngày $n là thứ Tư!'); break;}
    case 4: { print('Ngày $n là thứ Năm!'); break;}
    case 5: { print('Ngày $n là thứ Sáu!'); break;}
    case 6: { print('Ngày $n là thứ Bảy!'); break;}
    case 7: { print('Ngày $n là Chủ Nhật!'); break;}
  }
}
//bài14
bai14(){
  stdout.write("nhập n: ");
  int n = int.parse(stdin.readLineSync()!);
  print(giaithua(n));
  }
int? giaithua(n){
  if(n==1 || n ==0) {
    return 1;
  }
  else{
    return n*giaithua(n-1);
  }}