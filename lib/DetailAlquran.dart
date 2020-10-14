
import 'package:flutter/material.dart';
import 'package:ujian_flutter/viewModel/AyatViewModel.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailAlQuran extends StatefulWidget{
  final String nomor;
  final String nama;

  DetailAlQuran({this.nomor, this.nama});
  @override
  _DetailAlQuranState createState() => _DetailAlQuranState();
}

class _DetailAlQuranState extends State<DetailAlQuran> {
  List dataAyat = List();

  void getAyat(){
    AyatViewModel().getAyat(int.parse(widget.nomor)).then((value){
      setState(() {
        dataAyat = value;
      });
    });
  }

  @override
  void initState(){
    super.initState();
    getAyat();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color(0xff9c28b1) ,
      appBar: AppBar(
        title: Text("${widget.nama}"),
        elevation: 0,
        backgroundColor: Color(0xff9c28b1),
      ),
      body:
      Container(
       child: dataAyat == null ? Center(child: CircularProgressIndicator(),) : ListView.builder(
           itemCount: dataAyat.length,
           itemBuilder: (context,i){
             return Card(
               elevation: 10,
               child: ListTile(
                 leading: CircleAvatar(
                   backgroundColor: Color(0xff9c28b1),
                   child: Text(dataAyat[i].nomor),
                 ),
                 title: Container(
                   padding: EdgeInsets.only(top:30),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text(dataAyat[i].ar ?? "",textAlign: TextAlign.right ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, ),),
                       Html(data: dataAyat[i].tr ?? ""),
                       Text(dataAyat[i].id ?? "",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),),
                     ],
                   ),
                 ),
               ),
             );
           }),
      ),
    );
  }
}