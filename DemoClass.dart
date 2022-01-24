
import 'dart:io';

class sinhVien{
  var mssv;
  var hoTen;
  var namSinh;
  var gioiTinh;

  sinhVien(this.mssv,this.hoTen,this.namSinh,this.gioiTinh);
  set setmssv(var mssv){
    this.mssv=mssv;
  }
  get getmssv{
    return this.mssv;
  }
  set sethoTen(var hoTen){
    this.hoTen=hoTen;
  }
  get gethoten{
    return this.hoTen;
  }
  set setnamSinh(var namsinh){
    this.namSinh=namsinh;
  }
  get getnamSinh{
    return this.namSinh;
  
  }
  set setgioiTinh(var gioitinh){
    this.gioiTinh=gioitinh;
  }
  get getGioiTinh{
    return this.gioiTinh;
  }
  @override
  String toString() {
    
    return "${this.mssv}--${this.hoTen}--${this.namSinh}--${this.gioiTinh}";
  }
}
 void main() {
   var ma,ten, ns,  gt;
   nhapData(ma, ten, ns, gt);

}
void themSinhVien(){

   List<sinhVien> danhSachSv=[];
   danhSachSv.add(new sinhVien(123, "Hiếu", 2000, "Nam"));
   danhSachSv.add(new sinhVien(1234, "Hiếu lơn", 1997, "Nữ"));
   danhSachSv.add(new sinhVien(12345, "Hiếu chó", 2006, "Bê đê"));
   for (var sv in danhSachSv) {
     print(sv.toString());
     
   }
   print(danhSachSv[1].gethoten.toString().trim());
}
void nhapData(var ma,var ten,var ns, var gt){

 List<sinhVien> list=[];
 
  stdout.write("Nhập vào mã số sinh viên của bạn!");
  ma=stdin.readLineSync();
  stdout.write("Nhập vào họ tên của bạn!");
  ten=stdin.readLineSync();
  stdout.write("Nhập vào năm sinh của bạn!");
  ns=stdin.readLineSync();
  stdout.write("Nhập vào giới tính của bạn!");
  gt=stdin.readLineSync();
  list.add(new sinhVien(ma, ten, ns, gt));
  print(list[0].toString());



  
  
}