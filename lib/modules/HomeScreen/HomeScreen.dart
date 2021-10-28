import 'package:flutter/material.dart';
import 'package:untitled/constant/colors.dart';

class LoginScreen extends StatelessWidget {
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Sign in",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 20,
              ),
              Theme(
                  data:  Theme.of(context)
                      .copyWith(primaryColor: Colors.redAccent,),
                child: Form(
                  key:_formKey,
                    child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      keyboardType:TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            )),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xffd3d3d3),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      autofocus: true,

                      controller: _passController,
                      keyboardType:TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon:Icon(
                            Icons.visibility,
                        ),
                        fillColor: Colors.black,
                        labelText: "password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            )),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xffd3d3d3),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: TextButton(onPressed: (){

                    }, child: Text(
                      "Forget password?",
                      textAlign: TextAlign.left,
                      style: TextStyle(

                        color: colorButton,
                      ),
                    ),
                    ),
                  ),
                ],
              ),
              MaterialButton(
              onPressed: (){},color: colorButton,child: Text(
                "sign in" , style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20

              )
              ),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                minWidth: double.infinity,
                height: 60,


                ),
              SizedBox(
                height: 5,
              ),
              Stack(
                alignment: AlignmentDirectional.center,

                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Color(0xffd1d1d1),
                  ),

                  Container(
                    color:   colorLightThemBacGround
                    ,
                    width: 40,
                    height: 20,
                    child: Text("OR" ,style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,



                    ),
                    textAlign:TextAlign.center ,),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      onTap: (){

                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(

                            width : double.infinity/2,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xfffd4c2a), width: 2),
                                borderRadius : BorderRadius.all(
                                  Radius.circular(18.0),
                                )
                            ),


                          ),
                          Container(

                            child: Image.asset("images/google.png" , width: 50,height: 50,),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      onTap: (){

                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(

                            width : double.infinity/2,
                            height: 70,
                            decoration: BoxDecoration(
                             border: Border.all(color:Color(0xff75abe3), width: 2),
                                borderRadius : BorderRadius.all(
                                    Radius.circular(18.0),
                                )
                            ),


                          ),
                          Container(

                            child: Image.asset("images/faceBook.png" , width: 50,height: 50,),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
