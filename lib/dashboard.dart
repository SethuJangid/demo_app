import 'package:demo_app/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff2f8fd),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu_rounded),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(const Radius.circular(100))
                      ),
                      child: Image.asset(
                        "assets/img.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text("Hira Riaz",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff565b94)),),
                    const SizedBox(height: 5,),
                    Text("UX/UI Designer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                    const SizedBox(height: 35,),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(),
                          Column(
                            children: const [
                              Text("\$8900",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff565b94)),),
                              Text("Income",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),
                            ],
                          ),
                          const VerticalDivider(color: Colors.black12, thickness: 1,),
                          Column(
                            children: const [
                              Text("\$5500",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff565b94)),),
                              Text("Expenses",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),
                            ],
                          ),
                          const VerticalDivider(color: Colors.black12,thickness: 1,),
                          Column(
                            children: const [
                              Text("\$890",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff565b94)),),
                              Text("Loan",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),),
                            ],
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text("Overview",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff565b94)),),
                        Stack(
                          children: [
                            Icon(Icons.notifications_none_outlined),
                            Positioned(
                              right:3 ,top: 5,
                              child: Icon(Icons.circle,size: 7,color: Colors.red,),
                            )
                          ],
                        )
                      ],
                    ),
                    const Text("Sept13,2020",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff565b94)),),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
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
                              height: 70,width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                color:Colors.white30 ,
                                child: Icon(index==0?Icons.arrow_upward:index==1?Icons.arrow_downward:Icons.currency_bitcoin_sharp),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    index==0?"Sent":index==1?"Receive":"Loan",
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),
                                  ),
                                  Text(
                                    index==0?"Sending Payment to Client":index==1?"Receiving Salary from Company":"Loan fro the Car",
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black12),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              index==0?"\$150":index==1?"\$250":"\$400",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),
                            ),
                          ],
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

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xfff2f8fd),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Transactions()));
              },
              icon: const Icon(
                Icons.credit_card,
                size: 35,
              ),
            ),

            GestureDetector(
              child: Container(
                height: 35,width: 40,
                decoration: BoxDecoration(
                  color: Color(0xff565b94),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "\$",
                style: TextStyle(fontSize: 25),
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}