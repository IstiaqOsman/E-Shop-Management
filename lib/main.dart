import 'package:flutter/material.dart';
import 'package:review/datas/dummydata.dart';
import 'package:review/screens/singleproduct.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  _State createState() => _State();
}

class _State extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 30,
                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  child: Text('Want Some fresh Vegetables :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Products.length,
                  itemBuilder: (ctx, ind) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SingleProduct(Products[ind])));
                        });
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          Products[ind]['p_image'],
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: 150,
                                        )),
                                    Positioned(
                                      top: 1,
                                      left: 1,
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft:Radius.circular(10)),
                                          color: Colors.blue
                                        ),
                                        child: Center(child:
                                          Text(Products[ind]['p_price'].toString(),style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.white),),),
                                      ),
                                    ),
                                    Positioned(
                                      top: 1,
                                      right: 1,
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight:Radius.circular(10)),
                                          color: Colors.amber
                                        ),
                                        child: Center(child:
                                          Text(Products[ind]['d_price'].toString(),style: TextStyle(color: Colors.white),),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(Products[ind]['p_name']),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Icon(Icons.shopping_cart),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  height: 30,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Text('Want Some fresh Products :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              Container(
                height: 400,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                  ),
                  itemCount: Products.length,
                  itemBuilder: (context,ind){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SingleProduct(Products[ind])));
                        });
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          Products[ind]['p_image'],
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: 150,
                                        )),
                                    Positioned(
                                      top: 1,
                                      left: 1,
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft:Radius.circular(10)),
                                            color: Colors.blue
                                        ),
                                        child: Center(child:
                                        Text(Products[ind]['p_price'].toString(),style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.white),),),
                                      ),
                                    ),
                                    Positioned(
                                      top: 1,
                                      right: 1,
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight:Radius.circular(10)),
                                            color: Colors.amber
                                        ),
                                        child: Center(child:
                                        Text(Products[ind]['d_price'].toString(),style: TextStyle(color: Colors.white),),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SingleProduct(Products[ind])));

                                          });
                                        },
                                        child: Center(
                                          child: Text(Products[ind]['p_name']),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Icon(Icons.shopping_cart),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
