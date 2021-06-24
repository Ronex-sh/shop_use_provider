import 'package:flutter/material.dart';
import 'package:shop_provider/provider/products.dart';
import 'package:shop_provider/screens/product_details.dart';
import 'package:provider/provider.dart';
import 'screens/products_overview.dart';
import 'package:google_fonts/google_fonts.dart';
main(List<String> args) {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
     // create: (co)=>Products(),
       return ChangeNotifierProvider.value(
         
         value:Products() ,
          child: MaterialApp(
        home: PdroductOverview(),
        theme: ThemeData(primarySwatch: Colors.amber,accentColor: Colors.amberAccent,
        textTheme: TextTheme(
        headline1: GoogleFonts.freckleFace(fontSize: 19.0, fontWeight: FontWeight.bold),
      ),
        
        ),
        routes: {
          ProductDetailScreen.routeName:(c)=>ProductDetailScreen(),
        },
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ,
    );
  }
}