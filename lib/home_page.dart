import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formKey= GlobalKey<FormState>();
  var usernameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.network('https://www.designevo.com/res/templates/thumb_small/yellow-and-red-handbag.webp',
        width: 80,
          height: 80,
        ),
      ),
      body: Container(
        child: Form(
          child:
          Column(
           children: [
              Container(
                 color: Colors.white,
                 margin: const EdgeInsets.all(2),
                 child: const Center(
                   child: Text('Join Active eCommerce',
                     textAlign: TextAlign.center,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 17,
                     color: Colors.red,
                   ),
                   ),
                 ),
                 height: 35,
                 width: 400,),

            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration (
                  color: Colors.white,
              ),

              child: TextFormField(
                keyboardType: TextInputType.text,
                controller:  usernameController,
                enabled: true,
                obscureText: false,
                onChanged: (value){
                  _filterData(value);
                  //print(value);
                },
                maxLines: 1,
                maxLength: 20,
                validator: (value){
                  return '';
                } ,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  prefixIcon: Icon(Icons.person_outline),
                  hintText: 'John Doe',
                  labelText: 'Name',
                  helperText: 'Name should not be more than 20 character',
                  contentPadding: EdgeInsets.only(left: 5),
                ),
                //decoration: ,
              ),

            ),
             Container(
               margin: const EdgeInsets.all(10),
               decoration: const BoxDecoration (
                 color: Colors.white,
               ),

               child: TextFormField(
                 keyboardType: TextInputType.text,
                 controller:  emailController,
                 enabled: true,
                 obscureText: false,
                 onChanged: (value){
                   _filterData(value);
                   //print(value);
                 },
                 maxLines: 1,
                 maxLength: 10,
                 validator: (value){
                   return '';
                 } ,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   prefixIcon: Icon(Icons.email_outlined),
                   hintText: 'Email',
                   labelText: 'Johndoe@example.com',
                   helperText: 'Email should not be more than 10 character',
                   contentPadding: EdgeInsets.only(left: 5),
                 ),
                 //decoration: ,
               ),

             ),
             Container(
               margin: const EdgeInsets.all(10),
               decoration: const BoxDecoration (
                 color: Colors.white,
               ),

               //child: const Text('Hy'),
               //height: 70,
               //width: 400,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 controller:  passwordController,
                 enabled: true,
                 obscureText: true,
                 onChanged: (value){
                   _filterData(value);
                   //print(value);
                 },
                 maxLines: 1,
                 maxLength: 20,
                 validator: (value){
                   return '';
                 } ,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   prefixIcon: Icon(Icons.password),
                   hintText: 'Password',
                   labelText: '...........',
                   helperText: 'Password should not be more than 20 character',
                   contentPadding: EdgeInsets.only(left: 5),
                 ),
                 //decoration: ,
               ),

             ),
             Container(
               margin: const EdgeInsets.all(10),
               decoration: const BoxDecoration (
                 color: Colors.white,
               ),

               //child: const Text('Hy'),
               //height: 70,
               //width: 400,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                 controller:  passwordController,
                 enabled: true,
                 obscureText: true,
                 onChanged: (value){
                   _filterData(value);
                   //print(value);
                 },
                 maxLines: 1,
                 maxLength: 20,
                 validator: (value){
                   return '';
                 } ,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   prefixIcon: Icon(Icons.password_rounded),
                   hintText: 'Retype Password',
                   labelText: '...........',
                   helperText: 'Retype Password should not be more than 20 character',
                   contentPadding: EdgeInsets.only(left: 5),
                 ),
                 //decoration: ,
               ),

             ),
            Container(

              child: MaterialButton(
                minWidth: 300,
                height:60,

                onPressed: (){

                },
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Text("Sign UP",
                  style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16,

                ),),
              ),

            ),
             Container(
               color: Colors.white,
               margin: const EdgeInsets.all(2),
               child: const Center(
                 child: Text('Already have an account?',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 12,
                     color: Colors.red,
                   ),
                 ),
               ),
               height: 35,
               width: 400,),
            Container(
              child: MaterialButton(
                minWidth: 300,
                height:60,
                onPressed: (){

                },
                color: Colors.indigoAccent[400],
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Text("Login",style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70

                ),),
            ),
            ),
            Container(
              color: Colors.white,

            ),
          ],
        ),
          key: formKey,

        ),
      ),
    );
  }

  void _filterData(String value) {
    print('Data searching.....$value');
  }
}
