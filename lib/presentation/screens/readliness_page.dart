import 'package:flutter/material.dart';
import 'package:princeton_app/presentation/widgets/custom_scaffold.dart';

class ReadlinessPage extends StatelessWidget {
  const ReadlinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.019),
      child: Column(
        children: [
          
          Row(
            children: [
              SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.59,
              ),
              Text("Welcome, \n Priya",style: TextStyle(color: Color(0xff4A164B),fontWeight: FontWeight.bold),),
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.13, child: Image.asset("assets/image/profile_img.png"))
            ],
          ),
          Text("Check Your Readiness",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.029,fontWeight: FontWeight.bold),),
          Image.asset("assets/image/readliness.png"),
          SizedBox(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.height*0.36,
              child: Image.asset("assets/image/p_5.png")),
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/journey',
                );
              },
              child: Icon(Icons.arrow_forward))
        ],
      ),
    ));
  }
}