import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardUI extends StatelessWidget {
  const BusinessCardUI({Key? key}) : super(key: key);

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }
    else{
      print('could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(

            child:
            Container(
                color: Colors.white,
                child: CustomPaint(
                  painter: CurvePainter(
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.15,
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.09,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.08,
                              backgroundImage: AssetImage('images/pic.jpg', ),
                            ),
                          )
                      ),
                      SizedBox(height: 10,

                      ),
                      Text("Muhammad Kamran Iqbal",
                        style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1.15,
                        ),
                      ),
                      SizedBox(height: 10.0,)
                      ,
                      Text(
                        "Flutter Developer",
                        style: GoogleFonts.zcoolKuaiLe(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text('Location',style: GoogleFonts.mukta(
                        color: Colors.grey.shade400,
                      ),),
                      SizedBox(height: 3,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(onPressed: () => launch('tel:+923039665121',

                          ),
                              icon: Icon(
                                CupertinoIcons.phone,


                              ),

                              label: Text('')),


                          SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                          TextButton.icon(onPressed: () => customlaunch('mailto:kamraniqbal.bcs062@gmail.com?subject=test%20subject%body=test20body',

                          ),
                              icon: Icon(
                                CupertinoIcons.mail,


                              ),

                              label: Text('')),

                        ],
                      ),
                      SizedBox(height: 1,),
                      Divider(
                        thickness: 1.15,
                        indent: MediaQuery.of(context).size.width*0.1,
                        endIndent: MediaQuery.of(context).size.width*0.1,
                      ),
                      Column(


                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.10,
                                height: 20,
                              ),
                              Text(
                                "Overview",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.green.shade200),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                )
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        letterSpacing: 1.15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "(+92) 303 966 5121",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        letterSpacing: 1.1,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.27,

                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.06,
                                  height: MediaQuery.of(context).size.height*0.06,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.greenAccent.shade400,

                                  ),
                                  child: Icon(
                                    CupertinoIcons.phone,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.green.shade200),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                )
                            ),
                            child: Row(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        letterSpacing: 1.15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Kamraniqbal.bcs062@gmail.com",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        letterSpacing: 1.1,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.08,

                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.06,
                                  height: MediaQuery.of(context).size.height*0.06,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.greenAccent.shade400,

                                  ),
                                  child: Icon(
                                    CupertinoIcons.mail,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            padding: EdgeInsets.fromLTRB(20, 5, 1, 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.green.shade200),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                )
                            ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Website",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          letterSpacing: 1.15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "www.facebook.com.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          letterSpacing: 1.1,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.27,

                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.06,
                                    height: MediaQuery.of(context).size.height*0.06,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent.shade400,

                                    ),
                                    child: Icon(
                                      CupertinoIcons.f_cursive_circle,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),

                                ],
                              ),

                          ),
                          SizedBox(height: 3,),
                          Divider(
                            thickness: 1.15,
                            indent: MediaQuery.of(context).size.width*0.1,
                            endIndent: MediaQuery.of(context).size.width*0.1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.10,
                                height: 10,
                              ),
                              Text(
                                "Social",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.15,
                                ),
                              ),
                            ],

                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(


                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          TextButton.icon(onPressed: () => launch('https://www.facebook.com/kamran.iqbal424/'),
                                              icon: Image.asset('images/fbbb.png', width: 55,height: 156),
                                              label: Text('')),
                                          SizedBox(width: 19,),
                                          TextButton.icon(onPressed: ()=> launch('https://www.linkedin.com/in/kamran-iqbal-626a031a8/'),
                                              icon: Image.asset('images/in.png', width: 40,height: 106),
                                              label: Text('')),
                                          TextButton.icon(onPressed: ()=> launch('https://www.fiverr.com/kamraniqbal062?up_rollout=true'),
                                              icon: Image.asset('images/fiverr.png', width: 80,height: 156),
                                              label: Text('')),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )


                        ],
                      )
                    ],
                  ),
                )
            )

        ),
      )
    );
  }

  customlaunch(String s) {}
}
class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint=Paint();
    paint.style=PaintingStyle.fill;
    paint.shader=LinearGradient(colors: [Color(0xff8160c7),
      Color(0xff8f77dc),
      Color(0xff8f67bc)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight).createShader(Rect.fromLTRB(
      size.width*0.15,
      size.height*0.5,
      size.width,
      size.height*0.1,
    ),
    );
    var path=Path();
    path.moveTo(0, size.height*0.15);
    path.quadraticBezierTo(size.width*0.48, size.height*0.28, size.width, size.height*0.15);
    path.quadraticBezierTo(size.width*0.9, size.height*0.28, size.width, size.height*0.15);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    // TODO: implement shouldRepaint
    return true;
  }
}
