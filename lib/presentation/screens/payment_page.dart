import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.arrow_back),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.59,
              ),
              Text("Welcome, \n Priya",style: TextStyle(color: Color(0xff4A164B),fontWeight: FontWeight.bold),),
              GestureDetector(
                 onTap: (){
                      Navigator.of(context).pushNamed(
                        '/user_profile',
                      );
                    },
                child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.13, child: Image.asset("assets/image/profile_img.png")),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.024, horizontal: MediaQuery.of(context).size.width*0.07),
            child: Text(
              "Make A Payment",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*0.029,
                  color: Color(0xff4A164B)),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 79,
                  width:1000,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.purple.shade50
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 28),
                child: Text(
                  "Rule the world with personality developmentcourse",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize:16,
                      color: Color(0xff4A164B)),
                ),
              ),

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width:1000,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.purple.shade50
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 14),
                 child: Container(
                     height:47,
                     width: 47,
                     child: Image.asset("assets/image/referal.png")),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 79,vertical: 28),
                child: Text(
                  "Have a referral code?",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize:18,
                      color: Colors.purple.shade100),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Choose A payment Method",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color(0xff4A164B)),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 359,
            height: 63,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color(0xFF4A164B)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Debit/ Credit card",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFFFFC107)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Visa, Mastercard, Maestro & more",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xFFFFC107)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_right,color:Color(0xFFFFC107) ,),
                )
              ],
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 359,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFF4A164B)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "UPI",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFFFFC107)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Pay with your registered UPI ID",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color(0xFFFFC107)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_right,color:Color(0xFFFFC107) ,),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              
              child: Container(
                width: 359,
                height: 63,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Color(0xFF4A164B)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Net Banking",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFFFFC107)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "All Indian banks",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Color(0xFFFFC107)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_right,color:Color(0xFFFFC107) ,),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}