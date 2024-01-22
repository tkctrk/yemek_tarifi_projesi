import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Text("YEMEK TARİFİ"),
    );
  }
}
class _MyHomePageState extends StatefulWidget {
  const _MyHomePageState({super.key});

  @override
  State<_MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<_MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi= ekranBilgisi.size.height;
    final double ekranGenisligi= ekranBilgisi.size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
            width: ekranGenisligi,
              child: Image.asset("resimler/yemek.jpg"),
          ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi(icerik: "Beğen", yaziBoyutu: ekranGenisligi/25),
                      onPressed: (){
                        print("Beğenildi");
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi(icerik: "Yorum Yap", yaziBoyutu: ekranGenisligi/25),
                      onPressed: (){
                        print("Yorum Yapıldı");
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text("Köfte",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi(icerik: "Izgara Üzerinde Pişirme Uygun", yaziBoyutu: ekranGenisligi/25),
                      Spacer(),
                      Yazi(icerik: "8 Ağustos", yaziBoyutu: ekranGenisligi/25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Yazi(icerik: "En Kolay Ve En Lezzetli Ana Yemek Tarifi İçin Malzemeler),"
                 " 500 gram orta yağlı kıyma"
                "  3 yemek kaşığı galeta unu"
                 " 1 adet soğan"
                 " 1 tutam maydanoz"
                 " Yeteri kadar tuz"
                  , yaziBoyutu: ekranGenisligi/25),
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
late String icerik;
late double yaziBoyutu;
Yazi({required this.icerik,required this.yaziBoyutu});
  @override
  Widget build(BuildContext context) {
    return  Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }
}

