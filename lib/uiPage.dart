import 'package:flutter/material.dart';
import 'package:learning/colors.dart';
import 'package:learning/constants.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [

                Image.asset(bgimage,
                  height: height * 0.30,
                  width: width,
                  fit: BoxFit.cover),
                Container(
                  height: height * 0.40,
                  width: width,
                //  color: Colors.lightGreen.withOpacity(0.2),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [0.3,0.7],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[Colors.transparent, Colors.white
                    ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        Text(appname,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(subtitle,
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Container(child: Text(
                "  $login",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22),),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[primarycolor.withOpacity(0.3),
                      Colors.transparent
                    ],
                  ),
                  border: Border(left: BorderSide(color: primarycolor,width: 5))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primarycolor)
                  ),
                  prefixIcon: Icon(Icons.email,
                  color: primarycolor,),
                  labelText: "Email", labelStyle: TextStyle(color: primarycolor, fontSize: 15,
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primarycolor)
                  ),
                  prefixIcon: Icon(Icons.lock_open,
                    color: primarycolor,),
                  labelText: "Password", labelStyle: TextStyle(color: primarycolor, fontSize: 15,
                ),
                ),
              ),
            ),

           Align(
             alignment: Alignment.centerRight,
               child: TextButton(onPressed: (){}, child: Text("Forget password"))),
            Center(child: SizedBox(
              height: height * 0.05,
                width: width - 30,
                child:TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.green
                  ),
                    onPressed: () {}, child: Text("login to account")))
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("dont have account?"),
                 TextButton(onPressed: () {}, child: Text("Create a account",
                 style: TextStyle(color: primarycolor,fontSize: 15),))
               ],
             )

          ],
        ),
      ),
    );
  }
}



