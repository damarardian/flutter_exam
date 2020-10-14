import 'package:flutter/material.dart';
import 'package:ujian_flutter/viewModel/AlQuranViewModel.dart';
import 'DetailAlquran.dart';
class AlQuran extends StatefulWidget {
  @override
  _AlQuranState createState() => _AlQuranState();
}

class _AlQuranState extends State<AlQuran> {
  List dataAlQuran = List();
  void getListSurat(){
    AlQuranViewModel().getAlQuran().then((value){
      setState(() {
        dataAlQuran = value;
      });
    });
  }

  @override
  void initState(){
    super.initState();
    getListSurat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9c28b1),
      body: dataAlQuran == null ? Center(child: CircularProgressIndicator(),) : ListView.builder(
        itemCount: dataAlQuran.length,
        itemBuilder: (context,i){
          return ListTile(
            title: Text(dataAlQuran[i].nama),
            subtitle: Text(" ${dataAlQuran[i].ayat} ayat | ${dataAlQuran[i].type}  "),
            trailing: Text(dataAlQuran[i].asma),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return DetailAlQuran(
                        nomor: dataAlQuran[i].nomor,
                        nama: dataAlQuran[i].nama
                    );
                  }
              ));
            },
          );
        },
      ),
    );
  }
}
