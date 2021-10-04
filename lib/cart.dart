import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mycart/dropdown.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String radioButtonItem = "";
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
//toolbarHeight: 30,
        backgroundColor: Colors.white,
        elevation: 0.3,

        title: Padding(
          padding: const EdgeInsets.only(left: 86),
          child: Text("My Cart",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1.5,
              )),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            )),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left:5,right: 5 ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),),
                    color:Colors.grey[200],),
                  child:Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("Order#1001",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 1.5,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              child: Image.asset(
                                'assets/images/logoo.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sold By",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("More Supermarket,Al Ain",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Image.asset(
                                'assets/images/logoo1.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Noise color fit Pro 2 full touch\ncontrol smart watch",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        height: 1.3)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("\$49.5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Remove",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Move to Wishlist",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: SizedBox(width: 10)),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: DropDown(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Image.asset(
                                'assets/images/logoo2.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Huntindia TG 113 W Bluetooth\nSpeaker (Black,Stereo Channel)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        height: 1.3)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("\$39.6",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Remove",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Move to Wishlist",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: SizedBox(width: 10)),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: DropDown(),
                            )
                          ],
                        ),
                        // Divider(
                        //   color: Colors.grey[400],
                        //   thickness: .5,
                        // ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        ExpansionTile(

                          trailing: SizedBox.shrink(),
                          title: Center(
                            child: Text("+3 More items",style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.bold,
                              color:Colors.grey,
                              //decoration: TextDecoration.underline

                            ),),
                          ),

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                                  child: Image.asset(
                                    'assets/images/logoo1.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Noise color fit Pro 2 full touch\ncontrol smart watch",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            height: 1.3)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("\$49.5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          letterSpacing: 1.5,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Text("Remove",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                letterSpacing: 1.5,
                                              )),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Text("Move to Wishlist",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                letterSpacing: 1.5,
                                              )),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(child: SizedBox(width: 10)),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: DropDown(),
                                )
                              ],
                            ),






                          ],
                        ),

                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: id,
                                onChanged: (value) {
                                  setState(() {
                                    radioButtonItem = 'COD';
                                    id = 1;
                                  });
                                },
                              ),
                              Text(
                                "Cash On Delivery",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: radioButtonItem == 'COD'
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: id,
                                onChanged: (value) {
                                  setState(() {
                                    radioButtonItem = 'CARD';
                                    id = 2;
                                  });
                                },
                              ),
                              Text(
                                "Card / Netbanking / Wallets",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: radioButtonItem == 'CARD'
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Total Payable Amount : \$ 175.45",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          alignment:Alignment.topLeft,
                          child: Text(
                            "Delivery On Sunday,June 20",
                            style: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(height:10),
                      ],
                    ),
                  )
              ),
              SizedBox(height:25),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),),
                    color:Colors.grey[200],),
                  child:Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("Order#1002",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 1.5,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              child: Image.asset(
                                'assets/images/logoo.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sold By",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("More Supermarket,Al Ain",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Image.asset(
                                'assets/images/logoo1.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Noise color fit Pro 2 full touch\ncontrol smart watch",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        height: 1.3)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("\$49.5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Remove",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Move to Wishlist",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: SizedBox(width: 10)),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: DropDown(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Image.asset(
                                'assets/images/logoo2.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Huntindia TG 113 W Bluetooth\nSpeaker (Black,Stereo Channel)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        height: 1.3)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("\$39.6",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Remove",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text("Move to Wishlist",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            letterSpacing: 1.5,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: SizedBox(width: 10)),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: DropDown(),
                            )
                          ],
                        ),
                        // Divider(
                        //   color: Colors.grey[400],
                        //   thickness: .5,
                        // ),

                        Center(
                          child: ExpansionTile(
                            trailing: SizedBox.shrink(),
                            title: Center(
                              child: Text("+3 More items",style: TextStyle(
                                fontSize: 10,fontWeight: FontWeight.w900,
                                color:Colors.grey,
                                //decoration: TextDecoration.underline

                              ),),
                            ),

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(5.0))),
                                    child: Image.asset(
                                      'assets/images/logoo1.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Noise color fit Pro 2 full touch\ncontrol smart watch",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              height: 1.3)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("\$49.5",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            letterSpacing: 1.5,
                                          )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Text("Remove",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  letterSpacing: 1.5,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text("Move to Wishlist",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  letterSpacing: 1.5,
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox(width: 10)),
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: DropDown(),
                                  )
                                ],
                              ),






                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: id,
                                onChanged: (value) {
                                  setState(() {
                                    radioButtonItem = 'COD';
                                    id = 1;
                                  });
                                },
                              ),
                              Text(
                                "Cash On Delivery",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: radioButtonItem == 'COD'
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: id,
                                onChanged: (value) {
                                  setState(() {
                                    radioButtonItem = 'CARD';
                                    id = 2;
                                  });
                                },
                              ),
                              Text(
                                "Card / Netbanking / Wallets",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: radioButtonItem == 'CARD'
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Total Payable Amount : \$ 175.45",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          alignment:Alignment.topLeft,
                          child: Text(
                            "Delivery On Sunday,June 20",
                            style: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(height:10),
                      ],
                    ),
                  )
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 112,
                  width: 399,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(30.0),bottomLeft:Radius.circular(20.0),topRight: Radius.circular(20.0),topLeft: Radius.circular(30.0) ),
                    color: Colors.blue,
                  ),



                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,

                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.0),bottomLeft:Radius.circular(20.0),)),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Proceed to Payment",textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ],
                  ),


                ),
              ),





            ],
          ),


        ),


      ),


    );
  }
}
