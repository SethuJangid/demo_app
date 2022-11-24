import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class Transactions extends StatefulWidget{
  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff2f8fd),
        elevation: 0,
        leading: IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
        actions: [
          IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xfff2f8fd),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0,bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Recent Transactions",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff565b94)),),
                    Text("See all",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff565b94)),),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    decoration: BoxDecoration(
                      color: Color(0xff565b94),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "All",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xffffffff),),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Icome",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff565b94)),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Expenses",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff565b94)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Today",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff565b94)),
                ),
              ),
              const SizedBox(height: 15,),
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(20))
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.mail,size: 35,),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),
                            ),
                            Text(
                              "Payment from Andrea",
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black12),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "\$30.00",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 350,
                      width: 350,
                      margin: EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff7c94b6),
                        ),
                        borderRadius: BorderRadius.circular(350/2),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        height: 275,
                        width: 275,
                        margin: EdgeInsets.only(top: 107),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        height: 270,
                        width: 270,
                        margin: EdgeInsets.only(top: 110),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 30,
                            color: const Color(0xffd5e7f),
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        height: 170,
                        width: 170,
                        margin: EdgeInsets.only(top: 160),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 8,
                            color: const Color(0xff565b94),
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                        child: Image.asset(
                          "assets/img.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 45),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -2,
                    top: 150,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        //margin: EdgeInsets.only(top: 45),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage('https://t3.ftcdn.net/jpg/03/67/46/48/360_F_367464887_f0w1JrL8PddfuH3P2jSPlIGjKU2BI0rn.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 45,
                    top: 350,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        //margin: EdgeInsets.only(top: 45),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage('https://s3.ap-southeast-2.amazonaws.com/cdn.greekherald.com.au/wp-content/uploads/2019/10/05213947/PROFILE-Photography-112.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    right: -2,
                    top: 150,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        //margin: EdgeInsets.only(top: 45),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage('https://psargroups.com/wp-content/uploads/2022/03/komal.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 45,
                    top: 350,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        //margin: EdgeInsets.only(top: 45),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage('https://assets-global.website-files.com/5ec7dad2e6f6295a9e2a23dd/60d598d1fd5b43c13ee465ea_Amy_Sept.png'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(300/2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width-10,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                    child: const Text("See Details",style: const TextStyle(fontSize: 14),),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(const Radius.circular(30))
                  ),
                  textColor: const Color(0xfff2f8fd),
                  color: const Color(0xff3d4786),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}